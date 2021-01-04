package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.util.Assertions;

public abstract class Timeline {
    public static final Timeline EMPTY = new Timeline() {
        /* class com.google.android.exoplayer2.Timeline.AnonymousClass1 */

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Window getWindow(int i, Window window, boolean z, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Period getPeriod(int i, Period period, boolean z) {
            throw new IndexOutOfBoundsException();
        }
    };

    public abstract int getIndexOfPeriod(Object obj);

    public abstract Period getPeriod(int i, Period period, boolean z);

    public abstract int getPeriodCount();

    public abstract Window getWindow(int i, Window window, boolean z, long j);

    public abstract int getWindowCount();

    public static final class Window {
        public long defaultPositionUs;
        public long durationUs;
        public int firstPeriodIndex;
        public Object id;
        public boolean isDynamic;
        public boolean isSeekable;
        public int lastPeriodIndex;
        public long positionInFirstPeriodUs;
        public long presentationStartTimeMs;
        public long windowStartTimeMs;

        public Window set(Object obj, long j, long j2, boolean z, boolean z2, long j3, long j4, int i, int i2, long j5) {
            this.id = obj;
            this.presentationStartTimeMs = j;
            this.windowStartTimeMs = j2;
            this.isSeekable = z;
            this.isDynamic = z2;
            this.defaultPositionUs = j3;
            this.durationUs = j4;
            this.firstPeriodIndex = i;
            this.lastPeriodIndex = i2;
            this.positionInFirstPeriodUs = j5;
            return this;
        }

        public long getDefaultPositionMs() {
            return C.usToMs(this.defaultPositionUs);
        }

        public long getDefaultPositionUs() {
            return this.defaultPositionUs;
        }

        public long getDurationMs() {
            return C.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public long getPositionInFirstPeriodMs() {
            return C.usToMs(this.positionInFirstPeriodUs);
        }

        public long getPositionInFirstPeriodUs() {
            return this.positionInFirstPeriodUs;
        }
    }

    public static final class Period {
        private int[] adCounts;
        private long[][] adDurationsUs;
        private long[] adGroupTimesUs;
        private long adResumePositionUs;
        private int[] adsLoadedCounts;
        private int[] adsPlayedCounts;
        public long durationUs;
        public Object id;
        private long positionInWindowUs;
        public Object uid;
        public int windowIndex;

        public Period set(Object obj, Object obj2, int i, long j, long j2) {
            return set(obj, obj2, i, j, j2, null, null, null, null, null, C.TIME_UNSET);
        }

        public Period set(Object obj, Object obj2, int i, long j, long j2, long[] jArr, int[] iArr, int[] iArr2, int[] iArr3, long[][] jArr2, long j3) {
            this.id = obj;
            this.uid = obj2;
            this.windowIndex = i;
            this.durationUs = j;
            this.positionInWindowUs = j2;
            this.adGroupTimesUs = jArr;
            this.adCounts = iArr;
            this.adsLoadedCounts = iArr2;
            this.adsPlayedCounts = iArr3;
            this.adDurationsUs = jArr2;
            this.adResumePositionUs = j3;
            return this;
        }

        public long getDurationMs() {
            return C.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public long getPositionInWindowMs() {
            return C.usToMs(this.positionInWindowUs);
        }

        public long getPositionInWindowUs() {
            return this.positionInWindowUs;
        }

        public int getAdGroupCount() {
            if (this.adGroupTimesUs == null) {
                return 0;
            }
            return this.adGroupTimesUs.length;
        }

        public long getAdGroupTimeUs(int i) {
            return this.adGroupTimesUs[i];
        }

        public int getPlayedAdCount(int i) {
            return this.adsPlayedCounts[i];
        }

        public boolean hasPlayedAdGroup(int i) {
            return this.adCounts[i] != -1 && this.adsPlayedCounts[i] == this.adCounts[i];
        }

        public int getAdGroupIndexForPositionUs(long j) {
            if (this.adGroupTimesUs == null) {
                return -1;
            }
            int length = this.adGroupTimesUs.length - 1;
            while (length >= 0 && (this.adGroupTimesUs[length] == Long.MIN_VALUE || this.adGroupTimesUs[length] > j)) {
                length--;
            }
            if (length < 0 || hasPlayedAdGroup(length)) {
                return -1;
            }
            return length;
        }

        public int getAdGroupIndexAfterPositionUs(long j) {
            if (this.adGroupTimesUs == null) {
                return -1;
            }
            int i = 0;
            while (i < this.adGroupTimesUs.length && this.adGroupTimesUs[i] != Long.MIN_VALUE && (j >= this.adGroupTimesUs[i] || hasPlayedAdGroup(i))) {
                i++;
            }
            if (i < this.adGroupTimesUs.length) {
                return i;
            }
            return -1;
        }

        public int getAdCountInAdGroup(int i) {
            return this.adCounts[i];
        }

        public boolean isAdAvailable(int i, int i2) {
            return i2 < this.adsLoadedCounts[i];
        }

        public long getAdDurationUs(int i, int i2) {
            if (i2 >= this.adDurationsUs[i].length) {
                return C.TIME_UNSET;
            }
            return this.adDurationsUs[i][i2];
        }

        public long getAdResumePositionUs() {
            return this.adResumePositionUs;
        }
    }

    public final boolean isEmpty() {
        return getWindowCount() == 0;
    }

    public int getNextWindowIndex(int i, int i2) {
        switch (i2) {
            case 0:
                if (i == getWindowCount() - 1) {
                    return -1;
                }
                return i + 1;
            case 1:
                return i;
            case 2:
                if (i == getWindowCount() - 1) {
                    return 0;
                }
                return i + 1;
            default:
                throw new IllegalStateException();
        }
    }

    public int getPreviousWindowIndex(int i, int i2) {
        switch (i2) {
            case 0:
                if (i == 0) {
                    return -1;
                }
                return i - 1;
            case 1:
                return i;
            case 2:
                if (i == 0) {
                    i = getWindowCount();
                }
                return i - 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final boolean isLastWindow(int i, int i2) {
        return getNextWindowIndex(i, i2) == -1;
    }

    public final boolean isFirstWindow(int i, int i2) {
        return getPreviousWindowIndex(i, i2) == -1;
    }

    public final Window getWindow(int i, Window window) {
        return getWindow(i, window, false);
    }

    public Window getWindow(int i, Window window, boolean z) {
        return getWindow(i, window, z, 0);
    }

    public final int getNextPeriodIndex(int i, Period period, Window window, int i2) {
        int i3 = getPeriod(i, period).windowIndex;
        if (getWindow(i3, window).lastPeriodIndex != i) {
            return i + 1;
        }
        int nextWindowIndex = getNextWindowIndex(i3, i2);
        if (nextWindowIndex == -1) {
            return -1;
        }
        return getWindow(nextWindowIndex, window).firstPeriodIndex;
    }

    public final boolean isLastPeriod(int i, Period period, Window window, int i2) {
        return getNextPeriodIndex(i, period, window, i2) == -1;
    }

    public final Period getPeriod(int i, Period period) {
        return getPeriod(i, period, false);
    }

    public final Pair<Integer, Long> getPeriodPosition(Window window, Period period, int i, long j) {
        return getPeriodPosition(window, period, i, j, 0);
    }

    public final Pair<Integer, Long> getPeriodPosition(Window window, Period period, int i, long j, long j2) {
        Assertions.checkIndex(i, 0, getWindowCount());
        getWindow(i, window, false, j2);
        if (j == C.TIME_UNSET) {
            j = window.getDefaultPositionUs();
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = window.firstPeriodIndex;
        long positionInFirstPeriodUs = window.getPositionInFirstPeriodUs() + j;
        long durationUs = getPeriod(i2, period).getDurationUs();
        while (durationUs != C.TIME_UNSET && positionInFirstPeriodUs >= durationUs && i2 < window.lastPeriodIndex) {
            positionInFirstPeriodUs -= durationUs;
            i2++;
            durationUs = getPeriod(i2, period).getDurationUs();
        }
        return Pair.create(Integer.valueOf(i2), Long.valueOf(positionInFirstPeriodUs));
    }
}

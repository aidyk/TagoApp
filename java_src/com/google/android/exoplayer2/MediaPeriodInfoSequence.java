package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.ExoPlayerImplInternal;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;

final class MediaPeriodInfoSequence {
    private final Timeline.Period period = new Timeline.Period();
    private int repeatMode;
    private Timeline timeline;
    private final Timeline.Window window = new Timeline.Window();

    public static final class MediaPeriodInfo {
        public final long contentPositionUs;
        public final long durationUs;
        public final long endPositionUs;
        public final MediaSource.MediaPeriodId id;
        public final boolean isFinal;
        public final boolean isLastInTimelinePeriod;
        public final long startPositionUs;

        private MediaPeriodInfo(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3, long j4, boolean z, boolean z2) {
            this.id = mediaPeriodId;
            this.startPositionUs = j;
            this.endPositionUs = j2;
            this.contentPositionUs = j3;
            this.durationUs = j4;
            this.isLastInTimelinePeriod = z;
            this.isFinal = z2;
        }

        public MediaPeriodInfo copyWithPeriodIndex(int i) {
            return new MediaPeriodInfo(this.id.copyWithPeriodIndex(i), this.startPositionUs, this.endPositionUs, this.contentPositionUs, this.durationUs, this.isLastInTimelinePeriod, this.isFinal);
        }

        public MediaPeriodInfo copyWithStartPositionUs(long j) {
            return new MediaPeriodInfo(this.id, j, this.endPositionUs, this.contentPositionUs, this.durationUs, this.isLastInTimelinePeriod, this.isFinal);
        }
    }

    public void setTimeline(Timeline timeline2) {
        this.timeline = timeline2;
    }

    public void setRepeatMode(int i) {
        this.repeatMode = i;
    }

    public MediaPeriodInfo getFirstMediaPeriodInfo(ExoPlayerImplInternal.PlaybackInfo playbackInfo) {
        return getMediaPeriodInfo(playbackInfo.periodId, playbackInfo.contentPositionUs, playbackInfo.startPositionUs);
    }

    public MediaPeriodInfo getNextMediaPeriodInfo(MediaPeriodInfo mediaPeriodInfo, long j, long j2) {
        long j3;
        if (mediaPeriodInfo.isLastInTimelinePeriod) {
            int nextPeriodIndex = this.timeline.getNextPeriodIndex(mediaPeriodInfo.id.periodIndex, this.period, this.window, this.repeatMode);
            if (nextPeriodIndex == -1) {
                return null;
            }
            int i = this.timeline.getPeriod(nextPeriodIndex, this.period).windowIndex;
            long j4 = 0;
            if (this.timeline.getWindow(i, this.window).firstPeriodIndex == nextPeriodIndex) {
                Pair<Integer, Long> periodPosition = this.timeline.getPeriodPosition(this.window, this.period, i, C.TIME_UNSET, Math.max(0L, (j + mediaPeriodInfo.durationUs) - j2));
                if (periodPosition == null) {
                    return null;
                }
                nextPeriodIndex = ((Integer) periodPosition.first).intValue();
                j4 = ((Long) periodPosition.second).longValue();
            }
            return getMediaPeriodInfo(resolvePeriodPositionForAds(nextPeriodIndex, j4), j4, j4);
        }
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        if (mediaPeriodId.isAd()) {
            int i2 = mediaPeriodId.adGroupIndex;
            this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
            int adCountInAdGroup = this.period.getAdCountInAdGroup(i2);
            if (adCountInAdGroup == -1) {
                return null;
            }
            int i3 = mediaPeriodId.adIndexInAdGroup + 1;
            if (i3 >= adCountInAdGroup) {
                int adGroupIndexAfterPositionUs = this.period.getAdGroupIndexAfterPositionUs(mediaPeriodInfo.contentPositionUs);
                if (adGroupIndexAfterPositionUs == -1) {
                    j3 = Long.MIN_VALUE;
                } else {
                    j3 = this.period.getAdGroupTimeUs(adGroupIndexAfterPositionUs);
                }
                return getMediaPeriodInfoForContent(mediaPeriodId.periodIndex, mediaPeriodInfo.contentPositionUs, j3);
            } else if (!this.period.isAdAvailable(i2, i3)) {
                return null;
            } else {
                return getMediaPeriodInfoForAd(mediaPeriodId.periodIndex, i2, i3, mediaPeriodInfo.contentPositionUs);
            }
        } else if (mediaPeriodInfo.endPositionUs != Long.MIN_VALUE) {
            int adGroupIndexForPositionUs = this.period.getAdGroupIndexForPositionUs(mediaPeriodInfo.endPositionUs);
            if (!this.period.isAdAvailable(adGroupIndexForPositionUs, 0)) {
                return null;
            }
            return getMediaPeriodInfoForAd(mediaPeriodId.periodIndex, adGroupIndexForPositionUs, 0, mediaPeriodInfo.endPositionUs);
        } else {
            int adGroupCount = this.period.getAdGroupCount();
            if (adGroupCount != 0) {
                int i4 = adGroupCount - 1;
                if (this.period.getAdGroupTimeUs(i4) == Long.MIN_VALUE && !this.period.hasPlayedAdGroup(i4) && this.period.isAdAvailable(i4, 0)) {
                    return getMediaPeriodInfoForAd(mediaPeriodId.periodIndex, i4, 0, this.period.getDurationUs());
                }
            }
            return null;
        }
    }

    public MediaSource.MediaPeriodId resolvePeriodPositionForAds(int i, long j) {
        this.timeline.getPeriod(i, this.period);
        int adGroupIndexForPositionUs = this.period.getAdGroupIndexForPositionUs(j);
        if (adGroupIndexForPositionUs == -1) {
            return new MediaSource.MediaPeriodId(i);
        }
        return new MediaSource.MediaPeriodId(i, adGroupIndexForPositionUs, this.period.getPlayedAdCount(adGroupIndexForPositionUs));
    }

    public MediaPeriodInfo getUpdatedMediaPeriodInfo(MediaPeriodInfo mediaPeriodInfo) {
        return getUpdatedMediaPeriodInfo(mediaPeriodInfo, mediaPeriodInfo.id);
    }

    public MediaPeriodInfo getUpdatedMediaPeriodInfo(MediaPeriodInfo mediaPeriodInfo, int i) {
        return getUpdatedMediaPeriodInfo(mediaPeriodInfo, mediaPeriodInfo.id.copyWithPeriodIndex(i));
    }

    private MediaPeriodInfo getUpdatedMediaPeriodInfo(MediaPeriodInfo mediaPeriodInfo, MediaSource.MediaPeriodId mediaPeriodId) {
        long j;
        long durationUs;
        long j2 = mediaPeriodInfo.startPositionUs;
        long j3 = mediaPeriodInfo.endPositionUs;
        boolean isLastInPeriod = isLastInPeriod(mediaPeriodId, j3);
        boolean isLastInTimeline = isLastInTimeline(mediaPeriodId, isLastInPeriod);
        this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
        if (mediaPeriodId.isAd()) {
            durationUs = this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        } else if (j3 == Long.MIN_VALUE) {
            durationUs = this.period.getDurationUs();
        } else {
            j = j3;
            return new MediaPeriodInfo(mediaPeriodId, j2, j3, mediaPeriodInfo.contentPositionUs, j, isLastInPeriod, isLastInTimeline);
        }
        j = durationUs;
        return new MediaPeriodInfo(mediaPeriodId, j2, j3, mediaPeriodInfo.contentPositionUs, j, isLastInPeriod, isLastInTimeline);
    }

    private MediaPeriodInfo getMediaPeriodInfo(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2) {
        long adGroupTimeUs;
        this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
        if (!mediaPeriodId.isAd()) {
            int adGroupIndexAfterPositionUs = this.period.getAdGroupIndexAfterPositionUs(j2);
            if (adGroupIndexAfterPositionUs == -1) {
                adGroupTimeUs = Long.MIN_VALUE;
            } else {
                adGroupTimeUs = this.period.getAdGroupTimeUs(adGroupIndexAfterPositionUs);
            }
            return getMediaPeriodInfoForContent(mediaPeriodId.periodIndex, j2, adGroupTimeUs);
        } else if (!this.period.isAdAvailable(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup)) {
            return null;
        } else {
            return getMediaPeriodInfoForAd(mediaPeriodId.periodIndex, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, j);
        }
    }

    private MediaPeriodInfo getMediaPeriodInfoForAd(int i, int i2, int i3, long j) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(i, i2, i3);
        boolean isLastInPeriod = isLastInPeriod(mediaPeriodId, Long.MIN_VALUE);
        boolean isLastInTimeline = isLastInTimeline(mediaPeriodId, isLastInPeriod);
        return new MediaPeriodInfo(mediaPeriodId, i3 == this.period.getPlayedAdCount(i2) ? this.period.getAdResumePositionUs() : 0, Long.MIN_VALUE, j, this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period).getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup), isLastInPeriod, isLastInTimeline);
    }

    private MediaPeriodInfo getMediaPeriodInfoForContent(int i, long j, long j2) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(i);
        boolean isLastInPeriod = isLastInPeriod(mediaPeriodId, j2);
        boolean isLastInTimeline = isLastInTimeline(mediaPeriodId, isLastInPeriod);
        this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
        return new MediaPeriodInfo(mediaPeriodId, j, j2, C.TIME_UNSET, j2 == Long.MIN_VALUE ? this.period.getDurationUs() : j2, isLastInPeriod, isLastInTimeline);
    }

    private boolean isLastInPeriod(MediaSource.MediaPeriodId mediaPeriodId, long j) {
        int adGroupCount = this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period).getAdGroupCount();
        if (adGroupCount == 0) {
            return true;
        }
        int i = adGroupCount - 1;
        boolean isAd = mediaPeriodId.isAd();
        if (this.period.getAdGroupTimeUs(i) == Long.MIN_VALUE) {
            int adCountInAdGroup = this.period.getAdCountInAdGroup(i);
            if (adCountInAdGroup == -1) {
                return false;
            }
            if (isAd && mediaPeriodId.adGroupIndex == i && mediaPeriodId.adIndexInAdGroup == adCountInAdGroup + -1) {
                return true;
            }
            if (isAd || this.period.getPlayedAdCount(i) != adCountInAdGroup) {
                return false;
            }
            return true;
        } else if (isAd || j != Long.MIN_VALUE) {
            return false;
        } else {
            return true;
        }
    }

    private boolean isLastInTimeline(MediaSource.MediaPeriodId mediaPeriodId, boolean z) {
        return !this.timeline.getWindow(this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period).windowIndex, this.window).isDynamic && this.timeline.isLastPeriod(mediaPeriodId.periodIndex, this.period, this.window, this.repeatMode) && z;
    }
}

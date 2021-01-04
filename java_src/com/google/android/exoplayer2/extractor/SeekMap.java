package com.google.android.exoplayer2.extractor;

public interface SeekMap {
    long getDurationUs();

    long getPosition(long j);

    boolean isSeekable();

    public static final class Unseekable implements SeekMap {
        private final long durationUs;

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getPosition(long j) {
            return 0;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return false;
        }

        public Unseekable(long j) {
            this.durationUs = j;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }
    }
}

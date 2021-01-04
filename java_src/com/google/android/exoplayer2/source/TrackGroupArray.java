package com.google.android.exoplayer2.source;

import java.util.Arrays;

public final class TrackGroupArray {
    public static final TrackGroupArray EMPTY = new TrackGroupArray(new TrackGroup[0]);
    private int hashCode;
    public final int length;
    private final TrackGroup[] trackGroups;

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.trackGroups = trackGroupArr;
        this.length = trackGroupArr.length;
    }

    public TrackGroup get(int i) {
        return this.trackGroups[i];
    }

    public int indexOf(TrackGroup trackGroup) {
        for (int i = 0; i < this.length; i++) {
            if (this.trackGroups[i] == trackGroup) {
                return i;
            }
        }
        return -1;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = Arrays.hashCode(this.trackGroups);
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
        if (this.length != trackGroupArray.length || !Arrays.equals(this.trackGroups, trackGroupArray.trackGroups)) {
            return false;
        }
        return true;
    }
}

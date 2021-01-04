package com.polidea.rxandroidble2.scan;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class ScanSettings implements Parcelable {
    public static final int CALLBACK_TYPE_ALL_MATCHES = 1;
    public static final int CALLBACK_TYPE_FIRST_MATCH = 2;
    public static final int CALLBACK_TYPE_MATCH_LOST = 4;
    public static final Parcelable.Creator<ScanSettings> CREATOR = new Parcelable.Creator<ScanSettings>() {
        /* class com.polidea.rxandroidble2.scan.ScanSettings.AnonymousClass1 */

        @Override // android.os.Parcelable.Creator
        public ScanSettings[] newArray(int i) {
            return new ScanSettings[i];
        }

        @Override // android.os.Parcelable.Creator
        public ScanSettings createFromParcel(Parcel parcel) {
            return new ScanSettings(parcel);
        }
    };
    public static final int MATCH_MODE_AGGRESSIVE = 1;
    public static final int MATCH_MODE_STICKY = 2;
    public static final int MATCH_NUM_FEW_ADVERTISEMENT = 2;
    public static final int MATCH_NUM_MAX_ADVERTISEMENT = 3;
    public static final int MATCH_NUM_ONE_ADVERTISEMENT = 1;
    public static final int SCAN_MODE_BALANCED = 1;
    public static final int SCAN_MODE_LOW_LATENCY = 2;
    public static final int SCAN_MODE_LOW_POWER = 0;
    public static final int SCAN_MODE_OPPORTUNISTIC = -1;
    private int mCallbackType;
    private int mMatchMode;
    private int mNumOfMatchesPerFilter;
    private long mReportDelayMillis;
    private int mScanMode;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CallbackType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MatchMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MatchNum {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScanMode {
    }

    public int describeContents() {
        return 0;
    }

    public int getScanMode() {
        return this.mScanMode;
    }

    public int getCallbackType() {
        return this.mCallbackType;
    }

    public int getMatchMode() {
        return this.mMatchMode;
    }

    public int getNumOfMatches() {
        return this.mNumOfMatchesPerFilter;
    }

    public long getReportDelayMillis() {
        return this.mReportDelayMillis;
    }

    private ScanSettings(int i, int i2, long j, int i3, int i4) {
        this.mScanMode = i;
        this.mCallbackType = i2;
        this.mReportDelayMillis = j;
        this.mNumOfMatchesPerFilter = i4;
        this.mMatchMode = i3;
    }

    private ScanSettings(Parcel parcel) {
        this.mScanMode = parcel.readInt();
        this.mCallbackType = parcel.readInt();
        this.mReportDelayMillis = parcel.readLong();
        this.mMatchMode = parcel.readInt();
        this.mNumOfMatchesPerFilter = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mScanMode);
        parcel.writeInt(this.mCallbackType);
        parcel.writeLong(this.mReportDelayMillis);
        parcel.writeInt(this.mMatchMode);
        parcel.writeInt(this.mNumOfMatchesPerFilter);
    }

    public static final class Builder {
        private int mCallbackType = 1;
        private int mMatchMode = 1;
        private int mNumOfMatchesPerFilter = 3;
        private long mReportDelayMillis = 0;
        private int mScanMode = 0;

        private boolean isValidCallbackType(int i) {
            return i == 1 || i == 2 || i == 4 || i == 6;
        }

        public Builder setScanMode(int i) {
            if (i < -1 || i > 2) {
                throw new IllegalArgumentException("invalid scan mode " + i);
            }
            this.mScanMode = i;
            return this;
        }

        public Builder setCallbackType(int i) {
            if (isValidCallbackType(i)) {
                this.mCallbackType = i;
                return this;
            }
            throw new IllegalArgumentException("invalid callback type - " + i);
        }

        public ScanSettings build() {
            return new ScanSettings(this.mScanMode, this.mCallbackType, this.mReportDelayMillis, this.mMatchMode, this.mNumOfMatchesPerFilter);
        }
    }
}

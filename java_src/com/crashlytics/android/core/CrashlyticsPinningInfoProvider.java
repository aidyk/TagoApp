package com.crashlytics.android.core;

import io.fabric.sdk.android.services.network.PinningInfoProvider;
import java.io.InputStream;

/* access modifiers changed from: package-private */
public class CrashlyticsPinningInfoProvider implements PinningInfoProvider {
    private final PinningInfoProvider pinningInfo;

    @Override // io.fabric.sdk.android.services.network.PinningInfoProvider
    public long getPinCreationTimeInMillis() {
        return -1;
    }

    public CrashlyticsPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        this.pinningInfo = pinningInfoProvider;
    }

    @Override // io.fabric.sdk.android.services.network.PinningInfoProvider
    public InputStream getKeyStoreStream() {
        return this.pinningInfo.getKeyStoreStream();
    }

    @Override // io.fabric.sdk.android.services.network.PinningInfoProvider
    public String getKeyStorePassword() {
        return this.pinningInfo.getKeyStorePassword();
    }

    @Override // io.fabric.sdk.android.services.network.PinningInfoProvider
    public String[] getPins() {
        return this.pinningInfo.getPins();
    }
}

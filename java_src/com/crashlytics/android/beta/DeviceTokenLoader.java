package com.crashlytics.android.beta;

import android.content.Context;
import io.fabric.sdk.android.services.cache.ValueLoader;

@Deprecated
public class DeviceTokenLoader implements ValueLoader<String> {
    @Override // io.fabric.sdk.android.services.cache.ValueLoader
    public String load(Context context) throws Exception {
        return "";
    }
}

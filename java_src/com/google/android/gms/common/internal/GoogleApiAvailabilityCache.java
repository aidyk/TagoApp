package com.google.android.gms.common.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;

public class GoogleApiAvailabilityCache {
    private final SparseIntArray zaor;
    private GoogleApiAvailabilityLight zaos;

    public GoogleApiAvailabilityCache() {
        this(GoogleApiAvailability.getInstance());
    }

    public GoogleApiAvailabilityCache(@NonNull GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.zaor = new SparseIntArray();
        Preconditions.checkNotNull(googleApiAvailabilityLight);
        this.zaos = googleApiAvailabilityLight;
    }

    public int getClientAvailability(@NonNull Context context, @NonNull Api.Client client) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(client);
        if (!client.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = client.getMinApkVersion();
        int i = this.zaor.get(minApkVersion, -1);
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        while (true) {
            if (i2 < this.zaor.size()) {
                int keyAt = this.zaor.keyAt(i2);
                if (keyAt > minApkVersion && this.zaor.get(keyAt) == 0) {
                    i = 0;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        if (i == -1) {
            i = this.zaos.isGooglePlayServicesAvailable(context, minApkVersion);
        }
        this.zaor.put(minApkVersion, i);
        return i;
    }

    public void flush() {
        this.zaor.clear();
    }
}

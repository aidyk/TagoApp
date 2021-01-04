package com.google.android.gms.internal.measurement;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public final class zzbo extends zzau {
    private volatile String zzup;
    private Future<String> zzyd;

    protected zzbo(zzaw zzaw) {
        super(zzaw);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzau
    public final void zzag() {
    }

    public final String zzdr() {
        String str;
        zzcl();
        synchronized (this) {
            if (this.zzup == null) {
                this.zzyd = zzca().zza(new zzbp(this));
            }
            if (this.zzyd != null) {
                try {
                    this.zzup = this.zzyd.get();
                } catch (InterruptedException e) {
                    zzd("ClientId loading or generation was interrupted", e);
                    this.zzup = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                } catch (ExecutionException e2) {
                    zze("Failed to load or generate client id", e2);
                    this.zzup = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                }
                if (this.zzup == null) {
                    this.zzup = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                }
                zza("Loaded clientId", this.zzup);
                this.zzyd = null;
            }
            str = this.zzup;
        }
        return str;
    }

    /* access modifiers changed from: package-private */
    public final String zzds() {
        synchronized (this) {
            this.zzup = null;
            this.zzyd = zzca().zza(new zzbq(this));
        }
        return zzdr();
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public final String zzdt() {
        String zzd = zzd(zzca().getContext());
        return zzd == null ? zzdu() : zzd;
    }

    /* access modifiers changed from: private */
    @VisibleForTesting
    public final String zzdu() {
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        try {
            return !zzb(zzca().getContext(), lowerCase) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : lowerCase;
        } catch (Exception e) {
            zze("Error saving clientId file", e);
            return AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x0080 A[SYNTHETIC, Splitter:B:39:0x0080] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x008e A[SYNTHETIC, Splitter:B:46:0x008e] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x009c A[SYNTHETIC, Splitter:B:55:0x009c] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.lang.String zzd(android.content.Context r7) {
        /*
        // Method dump skipped, instructions count: 167
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbo.zzd(android.content.Context):java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x003d A[SYNTHETIC, Splitter:B:22:0x003d] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0050 A[SYNTHETIC, Splitter:B:30:0x0050] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x005d A[SYNTHETIC, Splitter:B:36:0x005d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean zzb(android.content.Context r4, java.lang.String r5) {
        /*
        // Method dump skipped, instructions count: 104
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbo.zzb(android.content.Context, java.lang.String):boolean");
    }
}

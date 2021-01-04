package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzo;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
public final class zzes implements zzag {
    private boolean closed;
    private final String zzbaa;
    private String zzbba;
    private zzdh<zzo> zzbfb;
    private zzal zzbfc;
    private final ScheduledExecutorService zzbfe;
    private final zzev zzbff;
    private ScheduledFuture<?> zzbfg;
    private final Context zzri;

    public zzes(Context context, String str, zzal zzal) {
        this(context, str, zzal, null, null);
    }

    @VisibleForTesting
    private zzes(Context context, String str, zzal zzal, zzew zzew, zzev zzev) {
        this.zzbfc = zzal;
        this.zzri = context;
        this.zzbaa = str;
        this.zzbfe = new zzet(this).zzpq();
        this.zzbff = new zzeu(this);
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final synchronized void release() {
        zzpp();
        if (this.zzbfg != null) {
            this.zzbfg.cancel(false);
        }
        this.zzbfe.shutdown();
        this.closed = true;
    }

    @Override // com.google.android.gms.tagmanager.zzag
    public final synchronized void zza(zzdh<zzo> zzdh) {
        zzpp();
        this.zzbfb = zzdh;
    }

    @Override // com.google.android.gms.tagmanager.zzag
    public final synchronized void zza(long j, String str) {
        String str2 = this.zzbaa;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 55);
        sb.append("loadAfterDelay: containerId=");
        sb.append(str2);
        sb.append(" delay=");
        sb.append(j);
        zzdi.v(sb.toString());
        zzpp();
        if (this.zzbfb != null) {
            if (this.zzbfg != null) {
                this.zzbfg.cancel(false);
            }
            ScheduledExecutorService scheduledExecutorService = this.zzbfe;
            zzer zza = this.zzbff.zza(this.zzbfc);
            zza.zza(this.zzbfb);
            zza.zzdi(this.zzbba);
            zza.zzea(str);
            this.zzbfg = scheduledExecutorService.schedule(zza, j, TimeUnit.MILLISECONDS);
        } else {
            throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
        }
    }

    @Override // com.google.android.gms.tagmanager.zzag
    public final synchronized void zzdi(String str) {
        zzpp();
        this.zzbba = str;
    }

    private final synchronized void zzpp() {
        if (this.closed) {
            throw new IllegalStateException("called method after closed");
        }
    }
}

package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import org.apache.commons.lang3.time.DateUtils;

@VisibleForTesting
public final class zza {
    private static Object zzazo = new Object();
    private static zza zzazp;
    private volatile boolean closed;
    private volatile long zzazh;
    private volatile long zzazi;
    private volatile long zzazj;
    private volatile long zzazk;
    private final Thread zzazl;
    private final Object zzazm;
    private zzd zzazn;
    private final Context zzri;
    private final Clock zzrz;
    private volatile AdvertisingIdClient.Info zzvl;

    public static zza zzo(Context context) {
        if (zzazp == null) {
            synchronized (zzazo) {
                if (zzazp == null) {
                    zza zza = new zza(context);
                    zzazp = zza;
                    zza.zzazl.start();
                }
            }
        }
        return zzazp;
    }

    private zza(Context context) {
        this(context, null, DefaultClock.getInstance());
    }

    @VisibleForTesting
    private zza(Context context, zzd zzd, Clock clock) {
        this.zzazh = 900000;
        this.zzazi = 30000;
        this.closed = false;
        this.zzazm = new Object();
        this.zzazn = new zzb(this);
        this.zzrz = clock;
        if (context != null) {
            this.zzri = context.getApplicationContext();
        } else {
            this.zzri = context;
        }
        this.zzazj = this.zzrz.currentTimeMillis();
        this.zzazl = new Thread(new zzc(this));
    }

    public final String zzne() {
        if (this.zzvl == null) {
            zznf();
        } else {
            zzng();
        }
        zznh();
        if (this.zzvl == null) {
            return null;
        }
        return this.zzvl.getId();
    }

    public final boolean isLimitAdTrackingEnabled() {
        if (this.zzvl == null) {
            zznf();
        } else {
            zzng();
        }
        zznh();
        if (this.zzvl == null) {
            return true;
        }
        return this.zzvl.isLimitAdTrackingEnabled();
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x0010 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zznf() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.closed     // Catch:{ InterruptedException -> 0x0010 }
            if (r0 != 0) goto L_0x0010
            r2.zzng()     // Catch:{ InterruptedException -> 0x0010 }
            r0 = 500(0x1f4, double:2.47E-321)
            r2.wait(r0)     // Catch:{ InterruptedException -> 0x0010 }
            goto L_0x0010
        L_0x000e:
            r0 = move-exception
            goto L_0x0012
        L_0x0010:
            monitor-exit(r2)     // Catch:{ all -> 0x000e }
            return
        L_0x0012:
            monitor-exit(r2)     // Catch:{ all -> 0x000e }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zza.zznf():void");
    }

    private final void zzng() {
        if (this.zzrz.currentTimeMillis() - this.zzazj > this.zzazi) {
            synchronized (this.zzazm) {
                this.zzazm.notify();
            }
            this.zzazj = this.zzrz.currentTimeMillis();
        }
    }

    private final void zznh() {
        if (this.zzrz.currentTimeMillis() - this.zzazk > DateUtils.MILLIS_PER_HOUR) {
            this.zzvl = null;
        }
    }

    /* access modifiers changed from: private */
    public final void zzni() {
        Process.setThreadPriority(10);
        while (!this.closed) {
            AdvertisingIdClient.Info zznj = this.zzazn.zznj();
            if (zznj != null) {
                this.zzvl = zznj;
                this.zzazk = this.zzrz.currentTimeMillis();
                zzdi.zzdo("Obtained fresh AdvertisingId info from GmsCore.");
            }
            synchronized (this) {
                notifyAll();
            }
            try {
                synchronized (this.zzazm) {
                    this.zzazm.wait(this.zzazh);
                }
            } catch (InterruptedException unused) {
                zzdi.zzdo("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    @VisibleForTesting
    public final void close() {
        this.closed = true;
        this.zzazl.interrupt();
    }
}

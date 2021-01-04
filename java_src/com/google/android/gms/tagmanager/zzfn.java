package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;

/* access modifiers changed from: package-private */
@ShowFirstParty
@VisibleForTesting
public final class zzfn extends zzfm {
    private static final Object zzbgi = new Object();
    private static zzfn zzbgt;
    private boolean connected = true;
    private zzcc zzbec = new zzfo(this);
    private Context zzbgj;
    private zzcb zzbgk;
    private volatile zzby zzbgl;
    private int zzbgm = 1800000;
    private boolean zzbgn = true;
    private boolean zzbgo = false;
    private boolean zzbgp = true;
    private zzfq zzbgq;
    private zzdn zzbgr;
    private boolean zzbgs = false;

    public static zzfn zzqe() {
        if (zzbgt == null) {
            zzbgt = new zzfn();
        }
        return zzbgt;
    }

    private zzfn() {
    }

    /* access modifiers changed from: package-private */
    public final synchronized void zza(Context context, zzby zzby) {
        if (this.zzbgj == null) {
            this.zzbgj = context.getApplicationContext();
            if (this.zzbgl == null) {
                this.zzbgl = zzby;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized zzcb zzqf() {
        if (this.zzbgk == null) {
            if (this.zzbgj != null) {
                this.zzbgk = new zzeb(this.zzbec, this.zzbgj);
            } else {
                throw new IllegalStateException("Cant get a store unless we have a context");
            }
        }
        if (this.zzbgq == null) {
            this.zzbgq = new zzfr(this, null);
            if (this.zzbgm > 0) {
                this.zzbgq.zzh((long) this.zzbgm);
            }
        }
        this.zzbgo = true;
        if (this.zzbgn) {
            dispatch();
            this.zzbgn = false;
        }
        if (this.zzbgr == null && this.zzbgp) {
            this.zzbgr = new zzdn(this);
            zzdn zzdn = this.zzbgr;
            Context context = this.zzbgj;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            context.registerReceiver(zzdn, intentFilter);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("com.google.analytics.RADIO_POWERED");
            intentFilter2.addCategory(context.getPackageName());
            context.registerReceiver(zzdn, intentFilter2);
        }
        return this.zzbgk;
    }

    @Override // com.google.android.gms.tagmanager.zzfm
    public final synchronized void dispatch() {
        if (!this.zzbgo) {
            zzdi.v("Dispatch call queued. Dispatch will run once initialization is complete.");
            this.zzbgn = true;
            return;
        }
        this.zzbgl.zzh(new zzfp(this));
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public final synchronized void zzb(boolean z, boolean z2) {
        boolean isPowerSaveMode = isPowerSaveMode();
        this.zzbgs = z;
        this.connected = z2;
        if (isPowerSaveMode() != isPowerSaveMode) {
            if (isPowerSaveMode()) {
                this.zzbgq.cancel();
                zzdi.v("PowerSaveMode initiated.");
                return;
            }
            this.zzbgq.zzh((long) this.zzbgm);
            zzdi.v("PowerSaveMode terminated.");
        }
    }

    @Override // com.google.android.gms.tagmanager.zzfm
    public final synchronized void zzp(boolean z) {
        zzb(this.zzbgs, z);
    }

    @Override // com.google.android.gms.tagmanager.zzfm
    public final synchronized void zzqd() {
        if (!isPowerSaveMode()) {
            this.zzbgq.zzqh();
        }
    }

    /* access modifiers changed from: private */
    public final boolean isPowerSaveMode() {
        return this.zzbgs || !this.connected || this.zzbgm <= 0;
    }
}

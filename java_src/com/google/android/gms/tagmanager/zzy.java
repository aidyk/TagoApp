package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzrt;
import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zzrz;
import com.google.android.gms.tagmanager.zzeh;

@ShowFirstParty
public final class zzy extends BasePendingResult<ContainerHolder> {
    private final String zzbaa;
    private long zzbaf;
    private final Looper zzbai;
    private final TagManager zzbao;
    private final zzaf zzbar;
    private final zzej zzbas;
    private final int zzbat;
    private final zzai zzbau;
    private zzah zzbav;
    private zzru zzbaw;
    private volatile zzv zzbax;
    private volatile boolean zzbay;
    private zzo zzbaz;
    private String zzbba;
    private zzag zzbbb;
    private zzac zzbbc;
    private final Context zzri;
    private final Clock zzrz;

    public zzy(Context context, TagManager tagManager, Looper looper, String str, int i, zzal zzal) {
        this(context, tagManager, looper, str, i, new zzex(context, str), new zzes(context, str, zzal), new zzru(context), DefaultClock.getInstance(), new zzdg(1, 5, 900000, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, "refreshing", DefaultClock.getInstance()), new zzai(context, str));
        this.zzbaw.zzfj(zzal.zzoe());
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    @VisibleForTesting
    private zzy(Context context, TagManager tagManager, Looper looper, String str, int i, zzah zzah, zzag zzag, zzru zzru, Clock clock, zzej zzej, zzai zzai) {
        super(looper == null ? Looper.getMainLooper() : looper);
        this.zzri = context;
        this.zzbao = tagManager;
        this.zzbai = looper == null ? Looper.getMainLooper() : looper;
        this.zzbaa = str;
        this.zzbat = i;
        this.zzbav = zzah;
        this.zzbbb = zzag;
        this.zzbaw = zzru;
        this.zzbar = new zzaf(this, null);
        this.zzbaz = new zzo();
        this.zzrz = clock;
        this.zzbas = zzej;
        this.zzbau = zzai;
        if (zznw()) {
            zzdh(zzeh.zzpm().zzpo());
        }
    }

    public final void zznt() {
        zzrz zzu = this.zzbav.zzu(this.zzbat);
        if (zzu != null) {
            setResult(new zzv(this.zzbao, this.zzbai, new Container(this.zzri, this.zzbao.getDataLayer(), this.zzbaa, 0, zzu), new zzaa(this)));
        } else {
            zzdi.e("Default was requested, but no default container was found");
            setResult(createFailedResult(new Status(10, "Default was requested, but no default container was found", null)));
        }
        this.zzbbb = null;
        this.zzbav = null;
    }

    public final void zznu() {
        zzn(false);
    }

    public final void zznv() {
        zzn(true);
    }

    private final void zzn(boolean z) {
        this.zzbav.zza(new zzad(this, null));
        this.zzbbb.zza(new zzae(this, null));
        zzrz zzu = this.zzbav.zzu(this.zzbat);
        if (zzu != null) {
            this.zzbax = new zzv(this.zzbao, this.zzbai, new Container(this.zzri, this.zzbao.getDataLayer(), this.zzbaa, 0, zzu), this.zzbar);
        }
        this.zzbbc = new zzab(this, z);
        if (zznw()) {
            this.zzbbb.zza(0, "");
        } else {
            this.zzbav.zzny();
        }
    }

    /* access modifiers changed from: private */
    public final synchronized void zza(zzo zzo, long j, boolean z) {
        if (z) {
            try {
                boolean z2 = this.zzbay;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!isReady() || this.zzbax != null) {
            this.zzbaz = zzo;
            this.zzbaf = j;
            long zznz = this.zzbau.zznz();
            zzas(Math.max(0L, Math.min(zznz, (this.zzbaf + zznz) - this.zzrz.currentTimeMillis())));
            Container container = new Container(this.zzri, this.zzbao.getDataLayer(), this.zzbaa, j, zzo);
            if (this.zzbax == null) {
                this.zzbax = new zzv(this.zzbao, this.zzbai, container, this.zzbar);
            } else {
                this.zzbax.zza(container);
            }
            if (!isReady() && this.zzbbc.zzb(container)) {
                setResult(this.zzbax);
            }
        }
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public final synchronized void zzdh(String str) {
        this.zzbba = str;
        if (this.zzbbb != null) {
            this.zzbbb.zzdi(str);
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized String zznq() {
        return this.zzbba;
    }

    /* access modifiers changed from: private */
    public final synchronized void zzas(long j) {
        if (this.zzbbb == null) {
            zzdi.zzab("Refresh requested, but no network load scheduler.");
        } else {
            this.zzbbb.zza(j, this.zzbaz.zzqh);
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: zzb */
    public final ContainerHolder createFailedResult(Status status) {
        if (this.zzbax != null) {
            return this.zzbax;
        }
        if (status == Status.RESULT_TIMEOUT) {
            zzdi.e("timer expired: setting result to failure");
        }
        return new zzv(status);
    }

    /* access modifiers changed from: private */
    public final boolean zznw() {
        zzeh zzpm = zzeh.zzpm();
        return (zzpm.zzpn() == zzeh.zza.CONTAINER || zzpm.zzpn() == zzeh.zza.CONTAINER_DEBUG) && this.zzbaa.equals(zzpm.getContainerId());
    }

    /* access modifiers changed from: private */
    public final synchronized void zza(zzo zzo) {
        if (this.zzbav != null) {
            zzrt zzrt = new zzrt();
            zzrt.zzbqn = this.zzbaf;
            zzrt.zzqg = new zzl();
            zzrt.zzbqo = zzo;
            this.zzbav.zza(zzrt);
        }
    }
}

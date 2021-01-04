package com.google.android.gms.tagmanager;

/* access modifiers changed from: package-private */
public final class zzab implements zzac {
    private final /* synthetic */ zzy zzbbd;
    private Long zzbbe;
    private final /* synthetic */ boolean zzbbf;

    zzab(zzy zzy, boolean z) {
        this.zzbbd = zzy;
        this.zzbbf = z;
    }

    @Override // com.google.android.gms.tagmanager.zzac
    public final boolean zzb(Container container) {
        if (!this.zzbbf) {
            return !container.isDefault();
        }
        long lastRefreshTime = container.getLastRefreshTime();
        if (this.zzbbe == null) {
            this.zzbbe = Long.valueOf(this.zzbbd.zzbau.zznz());
        }
        return lastRefreshTime + this.zzbbe.longValue() >= this.zzbbd.zzrz.currentTimeMillis();
    }
}

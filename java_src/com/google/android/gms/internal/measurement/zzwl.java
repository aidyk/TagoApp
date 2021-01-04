package com.google.android.gms.internal.measurement;

public class zzwl {
    private static final zzvk zzbuo = zzvk.zzvy();
    private zzun zzcay;
    private volatile zzxe zzcaz;
    private volatile zzun zzcba;

    public int hashCode() {
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzwl)) {
            return false;
        }
        zzwl zzwl = (zzwl) obj;
        zzxe zzxe = this.zzcaz;
        zzxe zzxe2 = zzwl.zzcaz;
        if (zzxe == null && zzxe2 == null) {
            return zzud().equals(zzwl.zzud());
        }
        if (zzxe != null && zzxe2 != null) {
            return zzxe.equals(zzxe2);
        }
        if (zzxe != null) {
            return zzxe.equals(zzwl.zzh(zzxe.zzwq()));
        }
        return zzh(zzxe2.zzwq()).equals(zzxe2);
    }

    private final zzxe zzh(zzxe zzxe) {
        if (this.zzcaz == null) {
            synchronized (this) {
                if (this.zzcaz == null) {
                    try {
                        this.zzcaz = zzxe;
                        this.zzcba = zzun.zzbuu;
                    } catch (zzwe unused) {
                        this.zzcaz = zzxe;
                        this.zzcba = zzun.zzbuu;
                    }
                }
            }
        }
        return this.zzcaz;
    }

    public final zzxe zzi(zzxe zzxe) {
        zzxe zzxe2 = this.zzcaz;
        this.zzcay = null;
        this.zzcba = null;
        this.zzcaz = zzxe;
        return zzxe2;
    }

    public final int zzwe() {
        if (this.zzcba != null) {
            return this.zzcba.size();
        }
        if (this.zzcaz != null) {
            return this.zzcaz.zzwe();
        }
        return 0;
    }

    public final zzun zzud() {
        if (this.zzcba != null) {
            return this.zzcba;
        }
        synchronized (this) {
            if (this.zzcba != null) {
                return this.zzcba;
            }
            if (this.zzcaz == null) {
                this.zzcba = zzun.zzbuu;
            } else {
                this.zzcba = this.zzcaz.zzud();
            }
            return this.zzcba;
        }
    }
}

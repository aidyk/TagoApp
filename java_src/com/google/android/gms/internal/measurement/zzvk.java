package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class zzvk {
    private static volatile boolean zzbwe = false;
    private static final Class<?> zzbwf = zzvx();
    private static volatile zzvk zzbwg;
    static final zzvk zzbwh = new zzvk(true);
    private final Map<zza, zzvx.zzd<?, ?>> zzbwi;

    private static Class<?> zzvx() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    static final class zza {
        private final int number;
        private final Object object;

        zza(Object obj, int i) {
            this.object = obj;
            this.number = i;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.object) * 65535) + this.number;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zza = (zza) obj;
            if (this.object == zza.object && this.number == zza.number) {
                return true;
            }
            return false;
        }
    }

    public static zzvk zzvy() {
        return zzvj.zzvv();
    }

    public static zzvk zzvz() {
        zzvk zzvk = zzbwg;
        if (zzvk == null) {
            synchronized (zzvk.class) {
                zzvk = zzbwg;
                if (zzvk == null) {
                    zzvk = zzvj.zzvw();
                    zzbwg = zzvk;
                }
            }
        }
        return zzvk;
    }

    static zzvk zzvw() {
        return zzvv.zzd(zzvk.class);
    }

    public final <ContainingType extends zzxe> zzvx.zzd<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzvx.zzd<ContainingType, ?>) this.zzbwi.get(new zza(containingtype, i));
    }

    zzvk() {
        this.zzbwi = new HashMap();
    }

    private zzvk(boolean z) {
        this.zzbwi = Collections.emptyMap();
    }
}

package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;

public final class zzc {

    public static final class zza extends zzvx<zza, C0007zza> implements zzxg {
        private static final zza zznv = new zza();
        private static volatile zzxo<zza> zznw;
        private int zznr;
        private int zzns = 1;
        private int zznt;
        private int zznu;

        public enum zzb implements zzwa {
            NO_CACHE(1),
            PRIVATE(2),
            PUBLIC(3);
            
            private static final zzwb<zzb> zzoa = new zze();
            private final int value;

            @Override // com.google.android.gms.internal.measurement.zzwa
            public final int zzc() {
                return this.value;
            }

            public static zzb zza(int i) {
                switch (i) {
                    case 1:
                        return NO_CACHE;
                    case 2:
                        return PRIVATE;
                    case 3:
                        return PUBLIC;
                    default:
                        return null;
                }
            }

            public static zzwc zzd() {
                return zzf.zzoc;
            }

            private zzb(int i) {
                this.value = i;
            }
        }

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.measurement.zzc$zza$zza  reason: collision with other inner class name */
        public static final class C0007zza extends zzvx.zza<zza, C0007zza> implements zzxg {
            private C0007zza() {
                super(zza.zznv);
            }

            /* synthetic */ C0007zza(zzd zzd) {
                this();
            }
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzvx
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzd.zznq[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0007zza(null);
                case 3:
                    return zza(zznv, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\u0004\u0001\u0003\u0004\u0002", new Object[]{"zznr", "zzns", zzb.zzd(), "zznt", "zznu"});
                case 4:
                    return zznv;
                case 5:
                    zzxo<zza> zzxo = zznw;
                    if (zzxo == null) {
                        synchronized (zza.class) {
                            zzxo = zznw;
                            if (zzxo == null) {
                                zzxo = new zzvx.zzb<>(zznv);
                                zznw = zzxo;
                            }
                        }
                    }
                    return zzxo;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public static zzxo<zza> zza() {
            return (zzxo) zznv.zza(zzvx.zze.zzbzu, (Object) null, (Object) null);
        }

        static {
            zzvx.zza(zza.class, zznv);
        }
    }
}

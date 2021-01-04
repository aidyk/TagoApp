package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;

public final class zzap {

    public static final class zza extends zzcg<zza, C0001zza> implements zzdq {
        private static volatile zzdz<zza> zzbg;
        private static final zza zzes = new zza();
        private int zzbb;
        private int zzel;
        private int zzem;
        private int zzen;
        private int zzeo;
        private int zzep;
        private int zzeq;
        private int zzer;

        /* renamed from: com.google.android.gms.internal.clearcut.zzap$zza$zza  reason: collision with other inner class name */
        public static final class C0001zza extends zzcg.zza<zza, C0001zza> implements zzdq {
            private C0001zza() {
                super(zza.zzes);
            }

            /* synthetic */ C0001zza(zzaq zzaq) {
                this();
            }
        }

        public enum zzb implements zzcj {
            UNKNOWN(0),
            ON(1),
            OFF(2);
            
            private static final zzck<zzb> zzbq = new zzar();
            private final int value;

            private zzb(int i) {
                this.value = i;
            }

            public static zzck<zzb> zzd() {
                return zzbq;
            }

            public static zzb zze(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN;
                    case 1:
                        return ON;
                    case 2:
                        return OFF;
                    default:
                        return null;
                }
            }

            @Override // com.google.android.gms.internal.clearcut.zzcj
            public final int zzc() {
                return this.value;
            }
        }

        static {
            zzcg.zza(zza.class, zzes);
        }

        private zza() {
        }

        /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzap$zza>, com.google.android.gms.internal.clearcut.zzcg$zzb] */
        /* access modifiers changed from: protected */
        /* JADX WARNING: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.clearcut.zzcg
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final java.lang.Object zza(int r2, java.lang.Object r3, java.lang.Object r4) {
            /*
            // Method dump skipped, instructions count: 198
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzap.zza.zza(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }
}

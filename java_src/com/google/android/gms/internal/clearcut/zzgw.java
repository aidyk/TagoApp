package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import java.util.List;

public final class zzgw {

    public static final class zza extends zzcg<zza, C0004zza> implements zzdq {
        private static volatile zzdz<zza> zzbg;
        private static final zza zzbir = new zza();
        private zzcn<zzb> zzbiq = zzbb();

        /* renamed from: com.google.android.gms.internal.clearcut.zzgw$zza$zza  reason: collision with other inner class name */
        public static final class C0004zza extends zzcg.zza<zza, C0004zza> implements zzdq {
            private C0004zza() {
                super(zza.zzbir);
            }

            /* synthetic */ C0004zza(zzgx zzgx) {
                this();
            }
        }

        public static final class zzb extends zzcg<zzb, C0005zza> implements zzdq {
            private static volatile zzdz<zzb> zzbg;
            private static final zzb zzbiv = new zzb();
            private int zzbb;
            private String zzbis = "";
            private long zzbit;
            private long zzbiu;
            private int zzya;

            /* renamed from: com.google.android.gms.internal.clearcut.zzgw$zza$zzb$zza  reason: collision with other inner class name */
            public static final class C0005zza extends zzcg.zza<zzb, C0005zza> implements zzdq {
                private C0005zza() {
                    super(zzb.zzbiv);
                }

                /* synthetic */ C0005zza(zzgx zzgx) {
                    this();
                }

                public final C0005zza zzn(String str) {
                    zzbf();
                    ((zzb) this.zzjt).zzm(str);
                    return this;
                }

                public final C0005zza zzr(long j) {
                    zzbf();
                    ((zzb) this.zzjt).zzp(j);
                    return this;
                }

                public final C0005zza zzs(long j) {
                    zzbf();
                    ((zzb) this.zzjt).zzq(j);
                    return this;
                }
            }

            static {
                zzcg.zza(zzb.class, zzbiv);
            }

            private zzb() {
            }

            public static C0005zza zzfz() {
                return (C0005zza) ((zzcg.zza) zzbiv.zza(zzcg.zzg.zzkh, (Object) null, (Object) null));
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzm(String str) {
                if (str != null) {
                    this.zzbb |= 2;
                    this.zzbis = str;
                    return;
                }
                throw new NullPointerException();
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzp(long j) {
                this.zzbb |= 4;
                this.zzbit = j;
            }

            /* access modifiers changed from: private */
            /* access modifiers changed from: public */
            private final void zzq(long j) {
                this.zzbb |= 8;
                this.zzbiu = j;
            }

            public final int getEventCode() {
                return this.zzya;
            }

            /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza$zzb>, com.google.android.gms.internal.clearcut.zzcg$zzb] */
            /* access modifiers changed from: protected */
            /* JADX WARNING: Unknown variable types count: 1 */
            @Override // com.google.android.gms.internal.clearcut.zzcg
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final java.lang.Object zza(int r2, java.lang.Object r3, java.lang.Object r4) {
                /*
                // Method dump skipped, instructions count: 122
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzgw.zza.zzb.zza(int, java.lang.Object, java.lang.Object):java.lang.Object");
            }

            public final boolean zzfv() {
                return (this.zzbb & 1) == 1;
            }

            public final String zzfw() {
                return this.zzbis;
            }

            public final long zzfx() {
                return this.zzbit;
            }

            public final long zzfy() {
                return this.zzbiu;
            }
        }

        static {
            zzcg.zza(zza.class, zzbir);
        }

        private zza() {
        }

        public static zza zzft() {
            return zzbir;
        }

        public static zza zzi(byte[] bArr) throws zzco {
            return (zza) zzcg.zzb(zzbir, bArr);
        }

        /* JADX WARN: Type inference failed for: r2v14, types: [com.google.android.gms.internal.clearcut.zzcg$zzb, com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza>] */
        /* access modifiers changed from: protected */
        /* JADX WARNING: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.clearcut.zzcg
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final java.lang.Object zza(int r2, java.lang.Object r3, java.lang.Object r4) {
            /*
            // Method dump skipped, instructions count: 104
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzgw.zza.zza(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }

        public final List<zzb> zzfs() {
            return this.zzbiq;
        }
    }
}

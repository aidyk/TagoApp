package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlinx.coroutines.scheduling.WorkQueueKt;

public abstract class zzve extends zzum {
    private static final Logger logger = Logger.getLogger(zzve.class.getName());
    private static final boolean zzbvq = zzys.zzyv();
    zzvg zzbvr;

    /* access modifiers changed from: package-private */
    public static final class zzb extends zza {
        private final ByteBuffer zzbvs;
        private int zzbvt;

        zzb(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.zzbvs = byteBuffer;
            this.zzbvt = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.measurement.zzve, com.google.android.gms.internal.measurement.zzve.zza
        public final void flush() {
            this.zzbvs.position(this.zzbvt + zzvs());
        }
    }

    public static int zzb(float f) {
        return 4;
    }

    public static int zzbc(long j) {
        int i;
        if ((-128 & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if ((-34359738368L & j) != 0) {
            i = 6;
            j >>>= 28;
        } else {
            i = 2;
        }
        if ((-2097152 & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & -16384) != 0 ? i + 1 : i;
    }

    public static int zzbe(int i) {
        if ((i & -128) == 0) {
            return 1;
        }
        if ((i & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i) == 0) {
            return 3;
        }
        return (i & -268435456) == 0 ? 4 : 5;
    }

    public static int zzbe(long j) {
        return 8;
    }

    public static int zzbf(long j) {
        return 8;
    }

    public static int zzbg(int i) {
        return 4;
    }

    private static long zzbg(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzbh(int i) {
        return 4;
    }

    private static int zzbj(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int zzc(double d) {
        return 8;
    }

    public static zzve zzj(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public static int zzt(boolean z) {
        return 1;
    }

    public abstract void flush() throws IOException;

    public abstract void write(byte[] bArr, int i, int i2) throws IOException;

    public abstract void zza(int i, long j) throws IOException;

    public abstract void zza(int i, zzun zzun) throws IOException;

    public abstract void zza(int i, zzxe zzxe) throws IOException;

    /* access modifiers changed from: package-private */
    public abstract void zza(int i, zzxe zzxe, zzxu zzxu) throws IOException;

    public abstract void zza(zzun zzun) throws IOException;

    /* access modifiers changed from: package-private */
    public abstract void zza(zzxe zzxe, zzxu zzxu) throws IOException;

    public abstract void zzay(int i) throws IOException;

    public abstract void zzay(long j) throws IOException;

    public abstract void zzaz(int i) throws IOException;

    public abstract void zzb(int i, zzun zzun) throws IOException;

    public abstract void zzb(int i, zzxe zzxe) throws IOException;

    public abstract void zzb(int i, String str) throws IOException;

    public abstract void zzb(int i, boolean z) throws IOException;

    public abstract void zzb(zzxe zzxe) throws IOException;

    public abstract void zzba(long j) throws IOException;

    public abstract void zzbb(int i) throws IOException;

    public abstract void zzc(byte b) throws IOException;

    public abstract void zzc(int i, int i2) throws IOException;

    public abstract void zzc(int i, long j) throws IOException;

    public abstract void zzd(int i, int i2) throws IOException;

    public abstract void zze(int i, int i2) throws IOException;

    /* access modifiers changed from: package-private */
    public abstract void zze(byte[] bArr, int i, int i2) throws IOException;

    public abstract void zzg(int i, int i2) throws IOException;

    public abstract void zzgd(String str) throws IOException;

    public abstract int zzvq();

    public static class zzc extends IOException {
        zzc() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        zzc(java.lang.String r3) {
            /*
                r2 = this;
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r1 = r3.length()
                if (r1 == 0) goto L_0x0015
                java.lang.String r3 = r0.concat(r3)
                goto L_0x001a
            L_0x0015:
                java.lang.String r3 = new java.lang.String
                r3.<init>(r0)
            L_0x001a:
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzve.zzc.<init>(java.lang.String):void");
        }

        zzc(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        zzc(java.lang.String r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r1 = r3.length()
                if (r1 == 0) goto L_0x0015
                java.lang.String r3 = r0.concat(r3)
                goto L_0x001a
            L_0x0015:
                java.lang.String r3 = new java.lang.String
                r3.<init>(r0)
            L_0x001a:
                r2.<init>(r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzve.zzc.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    public static zzve zza(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new zzb(byteBuffer);
        }
        if (!byteBuffer.isDirect() || byteBuffer.isReadOnly()) {
            throw new IllegalArgumentException("ByteBuffer is read-only");
        } else if (zzys.zzyw()) {
            return new zze(byteBuffer);
        } else {
            return new zzd(byteBuffer);
        }
    }

    /* access modifiers changed from: package-private */
    public static final class zzd extends zzve {
        private final int zzbvt;
        private final ByteBuffer zzbvu;
        private final ByteBuffer zzbvv;

        zzd(ByteBuffer byteBuffer) {
            super();
            this.zzbvu = byteBuffer;
            this.zzbvv = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzbvt = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzc(int i, int i2) throws IOException {
            zzaz((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzd(int i, int i2) throws IOException {
            zzc(i, 0);
            zzay(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zze(int i, int i2) throws IOException {
            zzc(i, 0);
            zzaz(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzg(int i, int i2) throws IOException {
            zzc(i, 5);
            zzbb(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, long j) throws IOException {
            zzc(i, 0);
            zzay(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzc(int i, long j) throws IOException {
            zzc(i, 1);
            zzba(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, boolean z) throws IOException {
            zzc(i, 0);
            zzc(z ? (byte) 1 : 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, String str) throws IOException {
            zzc(i, 2);
            zzgd(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, zzun zzun) throws IOException {
            zzc(i, 2);
            zza(zzun);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, zzxe zzxe) throws IOException {
            zzc(i, 2);
            zzb(zzxe);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, zzxe zzxe, zzxu zzxu) throws IOException {
            zzc(i, 2);
            zza(zzxe, zzxu);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, zzxe zzxe) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzxe);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, zzun zzun) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzun);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(zzxe zzxe) throws IOException {
            zzaz(zzxe.zzwe());
            zzxe.zzb(this);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(zzxe zzxe, zzxu zzxu) throws IOException {
            zzug zzug = (zzug) zzxe;
            int zzue = zzug.zzue();
            if (zzue == -1) {
                zzue = zzxu.zzai(zzug);
                zzug.zzah(zzue);
            }
            zzaz(zzue);
            zzxu.zza(zzxe, this.zzbvr);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzc(byte b) throws IOException {
            try {
                this.zzbvv.put(b);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(zzun zzun) throws IOException {
            zzaz(zzun.size());
            zzun.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zze(byte[] bArr, int i, int i2) throws IOException {
            zzaz(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzay(int i) throws IOException {
            if (i >= 0) {
                zzaz(i);
            } else {
                zzay((long) i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzaz(int i) throws IOException {
            while ((i & -128) != 0) {
                this.zzbvv.put((byte) ((i & WorkQueueKt.MASK) | 128));
                i >>>= 7;
            }
            try {
                this.zzbvv.put((byte) i);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzbb(int i) throws IOException {
            try {
                this.zzbvv.putInt(i);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzay(long j) throws IOException {
            while ((-128 & j) != 0) {
                this.zzbvv.put((byte) ((((int) j) & WorkQueueKt.MASK) | 128));
                j >>>= 7;
            }
            try {
                this.zzbvv.put((byte) ((int) j));
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzba(long j) throws IOException {
            try {
                this.zzbvv.putLong(j);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.zzbvv.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            } catch (BufferOverflowException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzum
        public final void zza(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzgd(String str) throws IOException {
            int position = this.zzbvv.position();
            try {
                int zzbe = zzbe(str.length() * 3);
                int zzbe2 = zzbe(str.length());
                if (zzbe2 == zzbe) {
                    int position2 = this.zzbvv.position() + zzbe2;
                    this.zzbvv.position(position2);
                    zzgf(str);
                    int position3 = this.zzbvv.position();
                    this.zzbvv.position(position);
                    zzaz(position3 - position2);
                    this.zzbvv.position(position3);
                    return;
                }
                zzaz(zzyu.zza(str));
                zzgf(str);
            } catch (zzyy e) {
                this.zzbvv.position(position);
                zza(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void flush() {
            this.zzbvu.position(this.zzbvv.position());
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final int zzvq() {
            return this.zzbvv.remaining();
        }

        private final void zzgf(String str) throws IOException {
            try {
                zzyu.zza(str, this.zzbvv);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public static final class zze extends zzve {
        private final ByteBuffer zzbvu;
        private final ByteBuffer zzbvv;
        private final long zzbvw;
        private final long zzbvx;
        private final long zzbvy;
        private final long zzbvz = (this.zzbvy - 10);
        private long zzbwa = this.zzbvx;

        zze(ByteBuffer byteBuffer) {
            super();
            this.zzbvu = byteBuffer;
            this.zzbvv = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzbvw = zzys.zzb(byteBuffer);
            this.zzbvx = this.zzbvw + ((long) byteBuffer.position());
            this.zzbvy = this.zzbvw + ((long) byteBuffer.limit());
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzc(int i, int i2) throws IOException {
            zzaz((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzd(int i, int i2) throws IOException {
            zzc(i, 0);
            zzay(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zze(int i, int i2) throws IOException {
            zzc(i, 0);
            zzaz(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzg(int i, int i2) throws IOException {
            zzc(i, 5);
            zzbb(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, long j) throws IOException {
            zzc(i, 0);
            zzay(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzc(int i, long j) throws IOException {
            zzc(i, 1);
            zzba(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, boolean z) throws IOException {
            zzc(i, 0);
            zzc(z ? (byte) 1 : 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, String str) throws IOException {
            zzc(i, 2);
            zzgd(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, zzun zzun) throws IOException {
            zzc(i, 2);
            zza(zzun);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, zzxe zzxe) throws IOException {
            zzc(i, 2);
            zzb(zzxe);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, zzxe zzxe, zzxu zzxu) throws IOException {
            zzc(i, 2);
            zza(zzxe, zzxu);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, zzxe zzxe) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzxe);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, zzun zzun) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzun);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(zzxe zzxe) throws IOException {
            zzaz(zzxe.zzwe());
            zzxe.zzb(this);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(zzxe zzxe, zzxu zzxu) throws IOException {
            zzug zzug = (zzug) zzxe;
            int zzue = zzug.zzue();
            if (zzue == -1) {
                zzue = zzxu.zzai(zzug);
                zzug.zzah(zzue);
            }
            zzaz(zzue);
            zzxu.zza(zzxe, this.zzbvr);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzc(byte b) throws IOException {
            if (this.zzbwa < this.zzbvy) {
                long j = this.zzbwa;
                this.zzbwa = 1 + j;
                zzys.zza(j, b);
                return;
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzbwa), Long.valueOf(this.zzbvy), 1));
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(zzun zzun) throws IOException {
            zzaz(zzun.size());
            zzun.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zze(byte[] bArr, int i, int i2) throws IOException {
            zzaz(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzay(int i) throws IOException {
            if (i >= 0) {
                zzaz(i);
            } else {
                zzay((long) i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzaz(int i) throws IOException {
            if (this.zzbwa <= this.zzbvz) {
                while ((i & -128) != 0) {
                    long j = this.zzbwa;
                    this.zzbwa = j + 1;
                    zzys.zza(j, (byte) ((i & WorkQueueKt.MASK) | 128));
                    i >>>= 7;
                }
                long j2 = this.zzbwa;
                this.zzbwa = 1 + j2;
                zzys.zza(j2, (byte) i);
                return;
            }
            while (this.zzbwa < this.zzbvy) {
                if ((i & -128) == 0) {
                    long j3 = this.zzbwa;
                    this.zzbwa = 1 + j3;
                    zzys.zza(j3, (byte) i);
                    return;
                }
                long j4 = this.zzbwa;
                this.zzbwa = j4 + 1;
                zzys.zza(j4, (byte) ((i & WorkQueueKt.MASK) | 128));
                i >>>= 7;
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzbwa), Long.valueOf(this.zzbvy), 1));
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzbb(int i) throws IOException {
            this.zzbvv.putInt((int) (this.zzbwa - this.zzbvw), i);
            this.zzbwa += 4;
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzay(long j) throws IOException {
            if (this.zzbwa <= this.zzbvz) {
                while ((j & -128) != 0) {
                    long j2 = this.zzbwa;
                    this.zzbwa = j2 + 1;
                    zzys.zza(j2, (byte) ((((int) j) & WorkQueueKt.MASK) | 128));
                    j >>>= 7;
                }
                long j3 = this.zzbwa;
                this.zzbwa = 1 + j3;
                zzys.zza(j3, (byte) ((int) j));
                return;
            }
            while (this.zzbwa < this.zzbvy) {
                if ((j & -128) == 0) {
                    long j4 = this.zzbwa;
                    this.zzbwa = 1 + j4;
                    zzys.zza(j4, (byte) ((int) j));
                    return;
                }
                long j5 = this.zzbwa;
                this.zzbwa = j5 + 1;
                zzys.zza(j5, (byte) ((((int) j) & WorkQueueKt.MASK) | 128));
                j >>>= 7;
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzbwa), Long.valueOf(this.zzbvy), 1));
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzba(long j) throws IOException {
            this.zzbvv.putLong((int) (this.zzbwa - this.zzbvw), j);
            this.zzbwa += 8;
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = (long) i2;
                if (this.zzbvy - j >= this.zzbwa) {
                    zzys.zza(bArr, (long) i, this.zzbwa, j);
                    this.zzbwa += j;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException("value");
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzbwa), Long.valueOf(this.zzbvy), Integer.valueOf(i2)));
        }

        @Override // com.google.android.gms.internal.measurement.zzum
        public final void zza(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzgd(String str) throws IOException {
            long j = this.zzbwa;
            try {
                int zzbe = zzbe(str.length() * 3);
                int zzbe2 = zzbe(str.length());
                if (zzbe2 == zzbe) {
                    int i = ((int) (this.zzbwa - this.zzbvw)) + zzbe2;
                    this.zzbvv.position(i);
                    zzyu.zza(str, this.zzbvv);
                    int position = this.zzbvv.position() - i;
                    zzaz(position);
                    this.zzbwa += (long) position;
                    return;
                }
                int zza = zzyu.zza(str);
                zzaz(zza);
                zzbh(this.zzbwa);
                zzyu.zza(str, this.zzbvv);
                this.zzbwa += (long) zza;
            } catch (zzyy e) {
                this.zzbwa = j;
                zzbh(this.zzbwa);
                zza(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zzc(e3);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void flush() {
            this.zzbvu.position((int) (this.zzbwa - this.zzbvw));
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final int zzvq() {
            return (int) (this.zzbvy - this.zzbwa);
        }

        private final void zzbh(long j) {
            this.zzbvv.position((int) (j - this.zzbvw));
        }
    }

    static class zza extends zzve {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zza(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.buffer = bArr;
                    this.offset = i;
                    this.position = i;
                    this.limit = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public void flush() {
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzc(int i, int i2) throws IOException {
            zzaz((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzd(int i, int i2) throws IOException {
            zzc(i, 0);
            zzay(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zze(int i, int i2) throws IOException {
            zzc(i, 0);
            zzaz(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzg(int i, int i2) throws IOException {
            zzc(i, 5);
            zzbb(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, long j) throws IOException {
            zzc(i, 0);
            zzay(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzc(int i, long j) throws IOException {
            zzc(i, 1);
            zzba(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, boolean z) throws IOException {
            zzc(i, 0);
            zzc(z ? (byte) 1 : 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, String str) throws IOException {
            zzc(i, 2);
            zzgd(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, zzun zzun) throws IOException {
            zzc(i, 2);
            zza(zzun);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(zzun zzun) throws IOException {
            zzaz(zzun.size());
            zzun.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zze(byte[] bArr, int i, int i2) throws IOException {
            zzaz(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, zzxe zzxe) throws IOException {
            zzc(i, 2);
            zzb(zzxe);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(int i, zzxe zzxe, zzxu zzxu) throws IOException {
            zzc(i, 2);
            zzug zzug = (zzug) zzxe;
            int zzue = zzug.zzue();
            if (zzue == -1) {
                zzue = zzxu.zzai(zzug);
                zzug.zzah(zzue);
            }
            zzaz(zzue);
            zzxu.zza(zzxe, this.zzbvr);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, zzxe zzxe) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzxe);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(int i, zzun zzun) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzun);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzb(zzxe zzxe) throws IOException {
            zzaz(zzxe.zzwe());
            zzxe.zzb(this);
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zza(zzxe zzxe, zzxu zzxu) throws IOException {
            zzug zzug = (zzug) zzxe;
            int zzue = zzug.zzue();
            if (zzue == -1) {
                zzue = zzxu.zzai(zzug);
                zzug.zzah(zzue);
            }
            zzaz(zzue);
            zzxu.zza(zzxe, this.zzbvr);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzc(byte b) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzay(int i) throws IOException {
            if (i >= 0) {
                zzaz(i);
            } else {
                zzay((long) i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzaz(int i) throws IOException {
            if (!zzve.zzbvq || zzvq() < 10) {
                while ((i & -128) != 0) {
                    byte[] bArr = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    bArr[i2] = (byte) ((i & WorkQueueKt.MASK) | 128);
                    i >>>= 7;
                }
                try {
                    byte[] bArr2 = this.buffer;
                    int i3 = this.position;
                    this.position = i3 + 1;
                    bArr2[i3] = (byte) i;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            } else {
                while ((i & -128) != 0) {
                    byte[] bArr3 = this.buffer;
                    int i4 = this.position;
                    this.position = i4 + 1;
                    zzys.zza(bArr3, (long) i4, (byte) ((i & WorkQueueKt.MASK) | 128));
                    i >>>= 7;
                }
                byte[] bArr4 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                zzys.zza(bArr4, (long) i5, (byte) i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzbb(int i) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr4[i5] = i >> 24;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzay(long j) throws IOException {
            if (!zzve.zzbvq || zzvq() < 10) {
                while ((j & -128) != 0) {
                    byte[] bArr = this.buffer;
                    int i = this.position;
                    this.position = i + 1;
                    bArr[i] = (byte) ((((int) j) & WorkQueueKt.MASK) | 128);
                    j >>>= 7;
                }
                try {
                    byte[] bArr2 = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    bArr2[i2] = (byte) ((int) j);
                } catch (IndexOutOfBoundsException e) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            } else {
                while ((j & -128) != 0) {
                    byte[] bArr3 = this.buffer;
                    int i3 = this.position;
                    this.position = i3 + 1;
                    zzys.zza(bArr3, (long) i3, (byte) ((((int) j) & WorkQueueKt.MASK) | 128));
                    j >>>= 7;
                }
                byte[] bArr4 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                zzys.zza(bArr4, (long) i4, (byte) ((int) j));
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzba(long j) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = (byte) ((int) j);
                byte[] bArr2 = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr2[i2] = (byte) ((int) (j >> 8));
                byte[] bArr3 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr3[i3] = (byte) ((int) (j >> 16));
                byte[] bArr4 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr4[i4] = (byte) ((int) (j >> 24));
                byte[] bArr5 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr5[i5] = (byte) ((int) (j >> 32));
                byte[] bArr6 = this.buffer;
                int i6 = this.position;
                this.position = i6 + 1;
                bArr6[i6] = (byte) ((int) (j >> 40));
                byte[] bArr7 = this.buffer;
                int i7 = this.position;
                this.position = i7 + 1;
                bArr7[i7] = (byte) ((int) (j >> 48));
                byte[] bArr8 = this.buffer;
                int i8 = this.position;
                this.position = i8 + 1;
                bArr8[i8] = (byte) ((int) (j >> 56));
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.buffer, this.position, i2);
                this.position += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzum
        public final void zza(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final void zzgd(String str) throws IOException {
            int i = this.position;
            try {
                int zzbe = zzbe(str.length() * 3);
                int zzbe2 = zzbe(str.length());
                if (zzbe2 == zzbe) {
                    this.position = i + zzbe2;
                    int zza = zzyu.zza(str, this.buffer, this.position, zzvq());
                    this.position = i;
                    zzaz((zza - i) - zzbe2);
                    this.position = zza;
                    return;
                }
                zzaz(zzyu.zza(str));
                this.position = zzyu.zza(str, this.buffer, this.position, zzvq());
            } catch (zzyy e) {
                this.position = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzve
        public final int zzvq() {
            return this.limit - this.position;
        }

        public final int zzvs() {
            return this.position - this.offset;
        }
    }

    private zzve() {
    }

    public final void zzf(int i, int i2) throws IOException {
        zze(i, zzbj(i2));
    }

    public final void zzb(int i, long j) throws IOException {
        zza(i, zzbg(j));
    }

    public final void zza(int i, float f) throws IOException {
        zzg(i, Float.floatToRawIntBits(f));
    }

    public final void zza(int i, double d) throws IOException {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zzba(int i) throws IOException {
        zzaz(zzbj(i));
    }

    public final void zzaz(long j) throws IOException {
        zzay(zzbg(j));
    }

    public final void zza(float f) throws IOException {
        zzbb(Float.floatToRawIntBits(f));
    }

    public final void zzb(double d) throws IOException {
        zzba(Double.doubleToRawLongBits(d));
    }

    public final void zzs(boolean z) throws IOException {
        zzc(z ? (byte) 1 : 0);
    }

    public static int zzh(int i, int i2) {
        return zzbc(i) + zzbd(i2);
    }

    public static int zzi(int i, int i2) {
        return zzbc(i) + zzbe(i2);
    }

    public static int zzj(int i, int i2) {
        return zzbc(i) + zzbe(zzbj(i2));
    }

    public static int zzk(int i, int i2) {
        return zzbc(i) + 4;
    }

    public static int zzl(int i, int i2) {
        return zzbc(i) + 4;
    }

    public static int zzd(int i, long j) {
        return zzbc(i) + zzbc(j);
    }

    public static int zze(int i, long j) {
        return zzbc(i) + zzbc(j);
    }

    public static int zzf(int i, long j) {
        return zzbc(i) + zzbc(zzbg(j));
    }

    public static int zzg(int i, long j) {
        return zzbc(i) + 8;
    }

    public static int zzh(int i, long j) {
        return zzbc(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zzbc(i) + 4;
    }

    public static int zzb(int i, double d) {
        return zzbc(i) + 8;
    }

    public static int zzc(int i, boolean z) {
        return zzbc(i) + 1;
    }

    public static int zzm(int i, int i2) {
        return zzbc(i) + zzbd(i2);
    }

    public static int zzc(int i, String str) {
        return zzbc(i) + zzge(str);
    }

    public static int zzc(int i, zzun zzun) {
        int zzbc = zzbc(i);
        int size = zzun.size();
        return zzbc + zzbe(size) + size;
    }

    public static int zza(int i, zzwl zzwl) {
        int zzbc = zzbc(i);
        int zzwe = zzwl.zzwe();
        return zzbc + zzbe(zzwe) + zzwe;
    }

    public static int zzc(int i, zzxe zzxe) {
        return zzbc(i) + zzc(zzxe);
    }

    static int zzb(int i, zzxe zzxe, zzxu zzxu) {
        return zzbc(i) + zzb(zzxe, zzxu);
    }

    public static int zzd(int i, zzxe zzxe) {
        return (zzbc(1) << 1) + zzi(2, i) + zzc(3, zzxe);
    }

    public static int zzd(int i, zzun zzun) {
        return (zzbc(1) << 1) + zzi(2, i) + zzc(3, zzun);
    }

    public static int zzb(int i, zzwl zzwl) {
        return (zzbc(1) << 1) + zzi(2, i) + zza(3, zzwl);
    }

    public static int zzbc(int i) {
        return zzbe(i << 3);
    }

    public static int zzbd(int i) {
        if (i >= 0) {
            return zzbe(i);
        }
        return 10;
    }

    public static int zzbf(int i) {
        return zzbe(zzbj(i));
    }

    public static int zzbb(long j) {
        return zzbc(j);
    }

    public static int zzbd(long j) {
        return zzbc(zzbg(j));
    }

    public static int zzbi(int i) {
        return zzbd(i);
    }

    public static int zzge(String str) {
        int i;
        try {
            i = zzyu.zza(str);
        } catch (zzyy unused) {
            i = str.getBytes(zzvz.UTF_8).length;
        }
        return zzbe(i) + i;
    }

    public static int zza(zzwl zzwl) {
        int zzwe = zzwl.zzwe();
        return zzbe(zzwe) + zzwe;
    }

    public static int zzb(zzun zzun) {
        int size = zzun.size();
        return zzbe(size) + size;
    }

    public static int zzk(byte[] bArr) {
        int length = bArr.length;
        return zzbe(length) + length;
    }

    public static int zzc(zzxe zzxe) {
        int zzwe = zzxe.zzwe();
        return zzbe(zzwe) + zzwe;
    }

    static int zzb(zzxe zzxe, zzxu zzxu) {
        zzug zzug = (zzug) zzxe;
        int zzue = zzug.zzue();
        if (zzue == -1) {
            zzue = zzxu.zzai(zzug);
            zzug.zzah(zzue);
        }
        return zzbe(zzue) + zzue;
    }

    /* access modifiers changed from: package-private */
    public final void zza(String str, zzyy zzyy) throws IOException {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzyy);
        byte[] bytes = str.getBytes(zzvz.UTF_8);
        try {
            zzaz(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzc(e);
        } catch (zzc e2) {
            throw e2;
        }
    }

    @Deprecated
    static int zzc(int i, zzxe zzxe, zzxu zzxu) {
        int zzbc = zzbc(i) << 1;
        zzug zzug = (zzug) zzxe;
        int zzue = zzug.zzue();
        if (zzue == -1) {
            zzue = zzxu.zzai(zzug);
            zzug.zzah(zzue);
        }
        return zzbc + zzue;
    }

    @Deprecated
    public static int zzd(zzxe zzxe) {
        return zzxe.zzwe();
    }

    @Deprecated
    public static int zzbk(int i) {
        return zzbe(i);
    }
}

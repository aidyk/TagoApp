package com.google.android.gms.internal.vision;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* access modifiers changed from: package-private */
public final class zziu {
    private static final Logger logger = Logger.getLogger(zziu.class.getName());
    private static final boolean zzaaz = zzk(Long.TYPE);
    private static final boolean zzaba = zzk(Integer.TYPE);
    private static final zzd zzabb;
    private static final boolean zzabc = zzhl();
    private static final long zzabd = ((long) zzi(byte[].class));
    private static final long zzabe = ((long) zzi(boolean[].class));
    private static final long zzabf = ((long) zzj(boolean[].class));
    private static final long zzabg = ((long) zzi(int[].class));
    private static final long zzabh = ((long) zzj(int[].class));
    private static final long zzabi = ((long) zzi(long[].class));
    private static final long zzabj = ((long) zzj(long[].class));
    private static final long zzabk = ((long) zzi(float[].class));
    private static final long zzabl = ((long) zzj(float[].class));
    private static final long zzabm = ((long) zzi(double[].class));
    private static final long zzabn = ((long) zzj(double[].class));
    private static final long zzabo = ((long) zzi(Object[].class));
    private static final long zzabp = ((long) zzj(Object[].class));
    private static final long zzabq;
    private static final boolean zzabr = (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN);
    private static final Class<?> zzrm = zzeg.zzcl();
    private static final boolean zzsr = zzhk();
    private static final Unsafe zzzc = zzhj();

    private zziu() {
    }

    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final byte zzy(Object obj, long j) {
            if (zziu.zzabr) {
                return zziu.zzq(obj, j);
            }
            return zziu.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zziu.zzabr) {
                zziu.zza(obj, j, b);
            } else {
                zziu.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final boolean zzm(Object obj, long j) {
            if (zziu.zzabr) {
                return zziu.zzs(obj, j);
            }
            return zziu.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zziu.zzabr) {
                zziu.zzb(obj, j, z);
            } else {
                zziu.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }
    }

    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(long j, byte b) {
            this.zzabs.putByte(j, b);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final byte zzy(Object obj, long j) {
            return this.zzabs.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zzabs.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final boolean zzm(Object obj, long j) {
            return this.zzabs.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zzabs.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final float zzn(Object obj, long j) {
            return this.zzabs.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(Object obj, long j, float f) {
            this.zzabs.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final double zzo(Object obj, long j) {
            return this.zzabs.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(Object obj, long j, double d) {
            this.zzabs.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            this.zzabs.copyMemory(bArr, zziu.zzabd + j, (Object) null, j2, j3);
        }
    }

    static boolean zzhh() {
        return zzsr;
    }

    /* access modifiers changed from: package-private */
    public static abstract class zzd {
        Unsafe zzabs;

        zzd(Unsafe unsafe) {
            this.zzabs = unsafe;
        }

        public abstract void zza(long j, byte b);

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public abstract void zza(Object obj, long j, boolean z);

        public abstract void zza(byte[] bArr, long j, long j2, long j3);

        public abstract void zze(Object obj, long j, byte b);

        public abstract boolean zzm(Object obj, long j);

        public abstract float zzn(Object obj, long j);

        public abstract double zzo(Object obj, long j);

        public abstract byte zzy(Object obj, long j);

        public final int zzk(Object obj, long j) {
            return this.zzabs.getInt(obj, j);
        }

        public final void zzb(Object obj, long j, int i) {
            this.zzabs.putInt(obj, j, i);
        }

        public final long zzl(Object obj, long j) {
            return this.zzabs.getLong(obj, j);
        }

        public final void zza(Object obj, long j, long j2) {
            this.zzabs.putLong(obj, j, j2);
        }
    }

    static boolean zzhi() {
        return zzabc;
    }

    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(long j, byte b) {
            Memory.pokeByte((int) (j & -1), b);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final byte zzy(Object obj, long j) {
            if (zziu.zzabr) {
                return zziu.zzq(obj, j);
            }
            return zziu.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zziu.zzabr) {
                zziu.zza(obj, j, b);
            } else {
                zziu.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final boolean zzm(Object obj, long j) {
            if (zziu.zzabr) {
                return zziu.zzs(obj, j);
            }
            return zziu.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zziu.zzabr) {
                zziu.zzb(obj, j, z);
            } else {
                zziu.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.vision.zziu.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & -1), bArr, (int) j, (int) j3);
        }
    }

    static <T> T zzh(Class<T> cls) {
        try {
            return (T) zzzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int zzi(Class<?> cls) {
        if (zzsr) {
            return zzabb.zzabs.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzj(Class<?> cls) {
        if (zzsr) {
            return zzabb.zzabs.arrayIndexScale(cls);
        }
        return -1;
    }

    static int zzk(Object obj, long j) {
        return zzabb.zzk(obj, j);
    }

    static void zzb(Object obj, long j, int i) {
        zzabb.zzb(obj, j, i);
    }

    static long zzl(Object obj, long j) {
        return zzabb.zzl(obj, j);
    }

    static void zza(Object obj, long j, long j2) {
        zzabb.zza(obj, j, j2);
    }

    static boolean zzm(Object obj, long j) {
        return zzabb.zzm(obj, j);
    }

    static void zza(Object obj, long j, boolean z) {
        zzabb.zza(obj, j, z);
    }

    static float zzn(Object obj, long j) {
        return zzabb.zzn(obj, j);
    }

    static void zza(Object obj, long j, float f) {
        zzabb.zza(obj, j, f);
    }

    static double zzo(Object obj, long j) {
        return zzabb.zzo(obj, j);
    }

    static void zza(Object obj, long j, double d) {
        zzabb.zza(obj, j, d);
    }

    static Object zzp(Object obj, long j) {
        return zzabb.zzabs.getObject(obj, j);
    }

    static void zza(Object obj, long j, Object obj2) {
        zzabb.zzabs.putObject(obj, j, obj2);
    }

    static byte zza(byte[] bArr, long j) {
        return zzabb.zzy(bArr, zzabd + j);
    }

    static void zza(byte[] bArr, long j, byte b) {
        zzabb.zze(bArr, zzabd + j, b);
    }

    static void zza(byte[] bArr, long j, long j2, long j3) {
        zzabb.zza(bArr, j, j2, j3);
    }

    static void zza(long j, byte b) {
        zzabb.zza(j, b);
    }

    static long zzb(ByteBuffer byteBuffer) {
        return zzabb.zzl(byteBuffer, zzabq);
    }

    static Unsafe zzhj() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zziv());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean zzhk() {
        if (zzzc == null) {
            return false;
        }
        try {
            Class<?> cls = zzzc.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (zzeg.zzck()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, Long.TYPE);
            cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, Long.TYPE);
            cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, Long.TYPE);
            cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
            cls.getMethod("getDouble", Object.class, Long.TYPE);
            cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzhl() {
        if (zzzc == null) {
            return false;
        }
        try {
            Class<?> cls = zzzc.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzhm() == null) {
                return false;
            }
            if (zzeg.zzck()) {
                return true;
            }
            cls.getMethod("getByte", Long.TYPE);
            cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
            cls.getMethod("getInt", Long.TYPE);
            cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Long.TYPE);
            cls.getMethod("putLong", Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzk(Class<?> cls) {
        if (!zzeg.zzck()) {
            return false;
        }
        try {
            Class<?> cls2 = zzrm;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Field zzhm() {
        Field zzb2;
        if (zzeg.zzck() && (zzb2 = zzb(Buffer.class, "effectiveDirectAddress")) != null) {
            return zzb2;
        }
        Field zzb3 = zzb(Buffer.class, "address");
        if (zzb3 == null || zzb3.getType() != Long.TYPE) {
            return null;
        }
        return zzb3;
    }

    private static Field zzb(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* access modifiers changed from: private */
    public static byte zzq(Object obj, long j) {
        return (byte) (zzk(obj, -4 & j) >>> ((int) (((j ^ -1) & 3) << 3)));
    }

    /* access modifiers changed from: private */
    public static byte zzr(Object obj, long j) {
        return (byte) (zzk(obj, -4 & j) >>> ((int) ((j & 3) << 3)));
    }

    /* access modifiers changed from: private */
    public static void zza(Object obj, long j, byte b) {
        long j2 = -4 & j;
        int i = ((((int) j) ^ -1) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk(obj, j2) & ((255 << i) ^ -1)));
    }

    /* access modifiers changed from: private */
    public static void zzb(Object obj, long j, byte b) {
        long j2 = -4 & j;
        int i = (((int) j) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk(obj, j2) & ((255 << i) ^ -1)));
    }

    /* access modifiers changed from: private */
    public static boolean zzs(Object obj, long j) {
        return zzq(obj, j) != 0;
    }

    /* access modifiers changed from: private */
    public static boolean zzt(Object obj, long j) {
        return zzr(obj, j) != 0;
    }

    /* access modifiers changed from: private */
    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : 0);
    }

    /* access modifiers changed from: private */
    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : 0);
    }

    static {
        zzd zzd2 = null;
        if (zzzc != null) {
            if (!zzeg.zzck()) {
                zzd2 = new zzc(zzzc);
            } else if (zzaaz) {
                zzd2 = new zzb(zzzc);
            } else if (zzaba) {
                zzd2 = new zza(zzzc);
            }
        }
        zzabb = zzd2;
        Field zzhm = zzhm();
        zzabq = (zzhm == null || zzabb == null) ? -1 : zzabb.zzabs.objectFieldOffset(zzhm);
    }
}

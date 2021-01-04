package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzfy;
import com.google.android.gms.internal.vision.zzfy.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class zzfy<MessageType extends zzfy<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzec<MessageType, BuilderType> {
    private static Map<Object, zzfy<?, ?>> zzwl = new ConcurrentHashMap();
    protected zzip zzwj = zzip.zzhe();
    private int zzwk = -1;

    /* JADX INFO: Failed to restore enum class, 'enum' modifier removed */
    public static final class zzg {
        public static final int zzwx = 1;
        public static final int zzwy = 2;
        public static final int zzwz = 3;
        public static final int zzxa = 4;
        public static final int zzxb = 5;
        public static final int zzxc = 6;
        public static final int zzxd = 7;
        private static final /* synthetic */ int[] zzxe = {zzwx, zzwy, zzwz, zzxa, zzxb, zzxc, zzxd};
        public static final int zzxf = 1;
        public static final int zzxg = 2;
        private static final /* synthetic */ int[] zzxh = {zzxf, zzxg};
        public static final int zzxi = 1;
        public static final int zzxj = 2;
        private static final /* synthetic */ int[] zzxk = {zzxi, zzxj};

        public static int[] values$50KLMJ33DTMIUPRFDTJMOP9FE1P6UT3FC9QMCBQ7CLN6ASJ1EHIM8JB5EDPM2PR59HKN8P949LIN8Q3FCHA6UIBEEPNMMP9R0() {
            return (int[]) zzxe.clone();
        }
    }

    /* access modifiers changed from: protected */
    public abstract Object zza(int i, Object obj, Object obj2);

    public static abstract class zzc<MessageType extends zzd<MessageType, BuilderType>, BuilderType extends zzc<MessageType, BuilderType>> extends zza<MessageType, BuilderType> implements zzhh {
        protected zzc(MessageType messagetype) {
            super(messagetype);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.vision.zzfy.zza
        public final void zzfc() {
            if (this.zzwo) {
                super.zzfc();
                ((zzd) this.zzwn).zzwp = (zzfp) ((zzd) this.zzwn).zzwp.clone();
            }
        }

        @Override // com.google.android.gms.internal.vision.zzfy.zza
        public /* synthetic */ zzfy zzfd() {
            return (zzd) zzff();
        }

        @Override // com.google.android.gms.internal.vision.zzhg, com.google.android.gms.internal.vision.zzfy.zza
        public /* synthetic */ zzhf zzff() {
            if (this.zzwo) {
                return (zzd) this.zzwn;
            }
            ((zzd) this.zzwn).zzwp.zzci();
            return (zzd) super.zzff();
        }
    }

    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType extends zzc<MessageType, BuilderType>> extends zzfy<MessageType, BuilderType> implements zzhh {
        protected zzfp<zze> zzwp = zzfp.zzep();

        public final <Type> Type zzc(zzfi<MessageType, Type> zzfi) {
            zzf zza = zzfy.zza(zzfi);
            if (zza.zzwu == ((zzfy) zzfb())) {
                Type<Object> type = (Type) this.zzwp.zza(zza.zzww);
                if (type == null) {
                    return zza.zzgq;
                }
                if (!zza.zzww.zzws) {
                    return (Type) zza.zzg(type);
                }
                if (zza.zzww.zzwr.zzho() != zzji.ENUM) {
                    return type;
                }
                Type type2 = (Type) new ArrayList();
                for (Object obj : type) {
                    type2.add(zza.zzg(obj));
                }
                return type2;
            }
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }
    }

    public static class zzb<T extends zzfy<T, ?>> extends zzee<T> {
        private final T zzwm;

        public zzb(T t) {
            this.zzwm = t;
        }

        @Override // com.google.android.gms.internal.vision.zzhq
        public final /* synthetic */ Object zza(zzez zzez, zzfk zzfk) throws zzgf {
            return zzfy.zza(this.zzwm, zzez, zzfk);
        }
    }

    public String toString() {
        return zzhi.zza(this, super.toString());
    }

    public int hashCode() {
        if (this.zzri != 0) {
            return this.zzri;
        }
        this.zzri = zzhs.zzgl().zzs(this).hashCode(this);
        return this.zzri;
    }

    /* access modifiers changed from: package-private */
    public static final class zze implements zzfr<zze> {
        final int number = 202056002;
        final zzgc<?> zzwq = null;
        final zzjd zzwr;
        final boolean zzws;
        final boolean zzwt;

        zze(zzgc<?> zzgc, int i, zzjd zzjd, boolean z, boolean z2) {
            this.zzwr = zzjd;
            this.zzws = true;
            this.zzwt = false;
        }

        @Override // com.google.android.gms.internal.vision.zzfr
        public final int zzr() {
            return this.number;
        }

        @Override // com.google.android.gms.internal.vision.zzfr
        public final zzjd zzes() {
            return this.zzwr;
        }

        @Override // com.google.android.gms.internal.vision.zzfr
        public final zzji zzet() {
            return this.zzwr.zzho();
        }

        @Override // com.google.android.gms.internal.vision.zzfr
        public final boolean zzeu() {
            return this.zzws;
        }

        @Override // com.google.android.gms.internal.vision.zzfr
        public final boolean zzev() {
            return this.zzwt;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: com.google.android.gms.internal.vision.zzfy$zza */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.vision.zzfr
        public final zzhg zza(zzhg zzhg, zzhf zzhf) {
            return ((zza) zzhg).zza((zzfy) zzhf);
        }

        @Override // com.google.android.gms.internal.vision.zzfr
        public final zzhm zza(zzhm zzhm, zzhm zzhm2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            return this.number - ((zze) obj).number;
        }
    }

    public static abstract class zza<MessageType extends zzfy<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzed<MessageType, BuilderType> {
        private final MessageType zzwm;
        protected MessageType zzwn;
        protected boolean zzwo = false;

        protected zza(MessageType messagetype) {
            this.zzwm = messagetype;
            this.zzwn = (MessageType) ((zzfy) messagetype.zza(zzg.zzxa, null, null));
        }

        /* access modifiers changed from: protected */
        public void zzfc() {
            if (this.zzwo) {
                MessageType messagetype = (MessageType) ((zzfy) this.zzwn.zza(zzg.zzxa, null, null));
                zza(messagetype, this.zzwn);
                this.zzwn = messagetype;
                this.zzwo = false;
            }
        }

        @Override // com.google.android.gms.internal.vision.zzhh
        public final boolean isInitialized() {
            return zzfy.zza((zzfy) this.zzwn, false);
        }

        /* renamed from: zzfd */
        public MessageType zzff() {
            if (this.zzwo) {
                return this.zzwn;
            }
            MessageType messagetype = this.zzwn;
            zzhs.zzgl().zzs(messagetype).zze(messagetype);
            this.zzwo = true;
            return this.zzwn;
        }

        /* renamed from: zzfe */
        public final MessageType zzfg() {
            MessageType messagetype = (MessageType) ((zzfy) zzff());
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) messagetype.zza(zzg.zzwx, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    z = zzhs.zzgl().zzs(messagetype).zzr(messagetype);
                    if (booleanValue) {
                        messagetype.zza(zzg.zzwy, z ? messagetype : null, null);
                    }
                }
            }
            if (z) {
                return messagetype;
            }
            throw new zzin(messagetype);
        }

        public final BuilderType zza(MessageType messagetype) {
            zzfc();
            zza(this.zzwn, messagetype);
            return this;
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzhs.zzgl().zzs(messagetype).zzc(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.vision.zzed
        public final /* synthetic */ zzed zzcg() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.vision.zzhh
        public final /* synthetic */ zzhf zzfb() {
            return this.zzwm;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r0v3, resolved type: com.google.android.gms.internal.vision.zzfy$zza */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.vision.zzed, java.lang.Object
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zza = (zza) this.zzwm.zza(zzg.zzxb, null, null);
            zza.zza((zzfy) zzff());
            return zza;
        }
    }

    public static class zzf<ContainingType extends zzhf, Type> extends zzfi<ContainingType, Type> {
        final Type zzgq;
        final ContainingType zzwu;
        final zzhf zzwv;
        final zze zzww;

        zzf(ContainingType containingtype, Type type, zzhf zzhf, zze zze, Class cls) {
            if (containingtype == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            } else if (zze.zzwr == zzjd.MESSAGE && zzhf == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            } else {
                this.zzwu = containingtype;
                this.zzgq = type;
                this.zzwv = zzhf;
                this.zzww = zze;
            }
        }

        /* access modifiers changed from: package-private */
        public final Object zzg(Object obj) {
            return this.zzww.zzwr.zzho() == zzji.ENUM ? this.zzww.zzwq.zzf(((Integer) obj).intValue()) : obj;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((zzfy) zza(zzg.zzxc, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        return zzhs.zzgl().zzs(this).equals(this, (zzfy) obj);
    }

    @Override // com.google.android.gms.internal.vision.zzhh
    public final boolean isInitialized() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) zza(zzg.zzwx, (Object) null, (Object) null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzr = zzhs.zzgl().zzs(this).zzr(this);
        if (booleanValue) {
            zza(zzg.zzwy, zzr ? this : null, (Object) null);
        }
        return zzr;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.zzec
    public final int zzcf() {
        return this.zzwk;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.zzec
    public final void zzy(int i) {
        this.zzwk = i;
    }

    @Override // com.google.android.gms.internal.vision.zzhf
    public final void zzb(zzfe zzfe) throws IOException {
        zzhs.zzgl().zzf(getClass()).zza(this, zzfg.zza(zzfe));
    }

    @Override // com.google.android.gms.internal.vision.zzhf
    public final int zzeq() {
        if (this.zzwk == -1) {
            this.zzwk = zzhs.zzgl().zzs(this).zzp(this);
        }
        return this.zzwk;
    }

    static <T extends zzfy<?, ?>> T zzd(Class<T> cls) {
        zzfy<?, ?> zzfy = zzwl.get(cls);
        if (zzfy == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzfy = (T) zzwl.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzfy == null) {
            zzfy = (T) ((zzfy) ((zzfy) zziu.zzh(cls)).zza(zzg.zzxc, (Object) null, (Object) null));
            if (zzfy != null) {
                zzwl.put(cls, zzfy);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) zzfy;
    }

    protected static <T extends zzfy<?, ?>> void zza(Class<T> cls, T t) {
        zzwl.put(cls, t);
    }

    protected static Object zza(zzhf zzhf, String str, Object[] objArr) {
        return new zzhu(zzhf, str, objArr);
    }

    public static <ContainingType extends zzhf, Type> zzf<ContainingType, Type> zza(ContainingType containingtype, zzhf zzhf, zzgc<?> zzgc, int i, zzjd zzjd, boolean z, Class cls) {
        return new zzf<>(containingtype, Collections.emptyList(), zzhf, new zze(null, 202056002, zzjd, true, false), cls);
    }

    static Object zza(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    /* access modifiers changed from: private */
    public static <MessageType extends zzd<MessageType, BuilderType>, BuilderType extends zzc<MessageType, BuilderType>, T> zzf<MessageType, T> zza(zzfi<MessageType, T> zzfi) {
        return (zzf) zzfi;
    }

    protected static final <T extends zzfy<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zzg.zzwx, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        return zzhs.zzgl().zzs(t).zzr(t);
    }

    protected static <E> zzge<E> zzey() {
        return zzht.zzgm();
    }

    static <T extends zzfy<T, ?>> T zza(T t, zzez zzez, zzfk zzfk) throws zzgf {
        T t2 = (T) ((zzfy) t.zza(zzg.zzxa, null, null));
        try {
            zzhs.zzgl().zzs(t2).zza(t2, zzfc.zza(zzez), zzfk);
            zzhs.zzgl().zzs(t2).zze(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof zzgf) {
                throw ((zzgf) e.getCause());
            }
            throw new zzgf(e.getMessage()).zzg(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof zzgf) {
                throw ((zzgf) e2.getCause());
            }
            throw e2;
        }
    }

    private static <T extends zzfy<T, ?>> T zza(T t, byte[] bArr) throws zzgf {
        T t2 = (T) ((zzfy) t.zza(zzg.zzxa, null, null));
        try {
            zzhs.zzgl().zzs(t2).zza(t2, bArr, 0, bArr.length, new zzei());
            zzhs.zzgl().zzs(t2).zze(t2);
            if (((zzfy) t2).zzri == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof zzgf) {
                throw ((zzgf) e.getCause());
            }
            throw new zzgf(e.getMessage()).zzg(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzgf.zzfh().zzg(t2);
        }
    }

    private static <T extends zzfy<T, ?>> T zza(T t, byte[] bArr, zzfk zzfk) throws zzgf {
        try {
            zzez zzf2 = zzez.zzf(bArr);
            T t2 = (T) zza(t, zzf2, zzfk);
            try {
                zzf2.zzak(0);
                return t2;
            } catch (zzgf e) {
                throw e.zzg(t2);
            }
        } catch (zzgf e2) {
            throw e2;
        }
    }

    protected static <T extends zzfy<T, ?>> T zzb(T t, byte[] bArr) throws zzgf {
        T t2 = (T) zza(t, bArr);
        if (t2 != null) {
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) t2.zza(zzg.zzwx, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    z = zzhs.zzgl().zzs(t2).zzr(t2);
                    if (booleanValue) {
                        t2.zza(zzg.zzwy, z ? t2 : null, null);
                    }
                }
            }
            if (!z) {
                throw new zzin(t2).zzhc().zzg(t2);
            }
        }
        return t2;
    }

    protected static <T extends zzfy<T, ?>> T zzb(T t, byte[] bArr, zzfk zzfk) throws zzgf {
        T t2 = (T) zza(t, bArr, zzfk);
        if (t2 != null) {
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) t2.zza(zzg.zzwx, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    z = zzhs.zzgl().zzs(t2).zzr(t2);
                    if (booleanValue) {
                        t2.zza(zzg.zzwy, z ? t2 : null, null);
                    }
                }
            }
            if (!z) {
                throw new zzin(t2).zzhc().zzg(t2);
            }
        }
        return t2;
    }

    @Override // com.google.android.gms.internal.vision.zzhf
    public final /* synthetic */ zzhg zzez() {
        zza zza2 = (zza) zza(zzg.zzxb, (Object) null, (Object) null);
        zza2.zza((zzfy) this);
        return zza2;
    }

    @Override // com.google.android.gms.internal.vision.zzhf
    public final /* synthetic */ zzhg zzfa() {
        return (zza) zza(zzg.zzxb, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.vision.zzhh
    public final /* synthetic */ zzhf zzfb() {
        return (zzfy) zza(zzg.zzxc, (Object) null, (Object) null);
    }
}

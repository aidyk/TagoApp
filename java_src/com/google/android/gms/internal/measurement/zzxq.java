package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* access modifiers changed from: package-private */
public final class zzxq {
    private static final zzxq zzccn = new zzxq();
    private final zzxv zzcco;
    private final ConcurrentMap<Class<?>, zzxu<?>> zzccp = new ConcurrentHashMap();

    public static zzxq zzya() {
        return zzccn;
    }

    public final <T> zzxu<T> zzi(Class<T> cls) {
        zzvz.zza(cls, "messageType");
        zzxu<T> zzxu = (zzxu<T>) this.zzccp.get(cls);
        if (zzxu != null) {
            return zzxu;
        }
        zzxu<T> zzh = this.zzcco.zzh(cls);
        zzvz.zza(cls, "messageType");
        zzvz.zza(zzh, "schema");
        zzxu<T> zzxu2 = (zzxu<T>) this.zzccp.putIfAbsent(cls, zzh);
        return zzxu2 != null ? zzxu2 : zzh;
    }

    public final <T> zzxu<T> zzak(T t) {
        return zzi(t.getClass());
    }

    private zzxq() {
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        zzxv zzxv = null;
        for (int i = 0; i <= 0; i++) {
            zzxv = zzgi(strArr[0]);
            if (zzxv != null) {
                break;
            }
        }
        this.zzcco = zzxv == null ? new zzwt() : zzxv;
    }

    private static zzxv zzgi(String str) {
        try {
            return (zzxv) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }
}

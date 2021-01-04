package com.google.android.gms.internal.vision;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* access modifiers changed from: package-private */
public final class zzhs {
    private static final zzhs zzzw = new zzhs();
    private final zzhx zzzx;
    private final ConcurrentMap<Class<?>, zzhw<?>> zzzy = new ConcurrentHashMap();

    public static zzhs zzgl() {
        return zzzw;
    }

    public final <T> zzhw<T> zzf(Class<T> cls) {
        zzga.zza((Object) cls, "messageType");
        zzhw<T> zzhw = (zzhw<T>) this.zzzy.get(cls);
        if (zzhw != null) {
            return zzhw;
        }
        zzhw<T> zze = this.zzzx.zze(cls);
        zzga.zza((Object) cls, "messageType");
        zzga.zza((Object) zze, "schema");
        zzhw<T> zzhw2 = (zzhw<T>) this.zzzy.putIfAbsent(cls, zze);
        return zzhw2 != null ? zzhw2 : zze;
    }

    public final <T> zzhw<T> zzs(T t) {
        return zzf(t.getClass());
    }

    private zzhs() {
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        zzhx zzhx = null;
        for (int i = 0; i <= 0; i++) {
            zzhx = zzr(strArr[0]);
            if (zzhx != null) {
                break;
            }
        }
        this.zzzx = zzhx == null ? new zzgu() : zzhx;
    }

    private static zzhx zzr(String str) {
        try {
            return (zzhx) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }
}

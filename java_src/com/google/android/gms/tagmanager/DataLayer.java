package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@VisibleForTesting
public class DataLayer {
    public static final String EVENT_KEY = "event";
    public static final Object OBJECT_NOT_PRESENT = new Object();
    private static final String[] zzbbk = "gtm.lifetime".toString().split("\\.");
    private static final Pattern zzbbl = Pattern.compile("(\\d+)\\s*([smhd]?)");
    private final ConcurrentHashMap<zzb, Integer> zzbbm;
    private final Map<String, Object> zzbbn;
    private final ReentrantLock zzbbo;
    private final LinkedList<Map<String, Object>> zzbbp;
    private final zzc zzbbq;
    private final CountDownLatch zzbbr;

    /* access modifiers changed from: package-private */
    public interface zzb {
        void zzf(Map<String, Object> map);
    }

    /* access modifiers changed from: package-private */
    public interface zzc {
        void zza(zzaq zzaq);

        void zza(List<zza> list, long j);

        void zzdl(String str);
    }

    @VisibleForTesting
    DataLayer() {
        this(new zzao());
    }

    DataLayer(zzc zzc2) {
        this.zzbbq = zzc2;
        this.zzbbm = new ConcurrentHashMap<>();
        this.zzbbn = new HashMap();
        this.zzbbo = new ReentrantLock();
        this.zzbbp = new LinkedList<>();
        this.zzbbr = new CountDownLatch(1);
        this.zzbbq.zza(new zzap(this));
    }

    /* access modifiers changed from: package-private */
    public static final class zza {
        public final String mKey;
        public final Object mValue;

        zza(String str, Object obj) {
            this.mKey = str;
            this.mValue = obj;
        }

        public final String toString() {
            String str = this.mKey;
            String obj = this.mValue.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(obj).length());
            sb.append("Key: ");
            sb.append(str);
            sb.append(" value: ");
            sb.append(obj);
            return sb.toString();
        }

        public final int hashCode() {
            return Arrays.hashCode(new Integer[]{Integer.valueOf(this.mKey.hashCode()), Integer.valueOf(this.mValue.hashCode())});
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zza = (zza) obj;
            if (!this.mKey.equals(zza.mKey) || !this.mValue.equals(zza.mValue)) {
                return false;
            }
            return true;
        }
    }

    public String toString() {
        String sb;
        synchronized (this.zzbbn) {
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry<String, Object> entry : this.zzbbn.entrySet()) {
                sb2.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", entry.getKey(), entry.getValue()));
            }
            sb = sb2.toString();
        }
        return sb;
    }

    public void pushEvent(String str, Map<String, Object> map) {
        HashMap hashMap = new HashMap(map);
        hashMap.put("event", str);
        push(hashMap);
    }

    public void push(String str, Object obj) {
        push(zzk(str, obj));
    }

    public void push(Map<String, Object> map) {
        try {
            this.zzbbr.await();
        } catch (InterruptedException unused) {
            zzdi.zzab("DataLayer.push: unexpected InterruptedException");
        }
        zzh(map);
    }

    /* access modifiers changed from: private */
    public final void zzh(Map<String, Object> map) {
        Long l;
        this.zzbbo.lock();
        try {
            this.zzbbp.offer(map);
            int i = 0;
            if (this.zzbbo.getHoldCount() == 1) {
                int i2 = 0;
                do {
                    Map<String, Object> poll = this.zzbbp.poll();
                    if (poll != null) {
                        synchronized (this.zzbbn) {
                            for (String str : poll.keySet()) {
                                zzb(zzk(str, poll.get(str)), this.zzbbn);
                            }
                        }
                        for (zzb zzb2 : this.zzbbm.keySet()) {
                            zzb2.zzf(poll);
                        }
                        i2++;
                    }
                } while (i2 <= 500);
                this.zzbbp.clear();
                throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
            }
            String[] strArr = zzbbk;
            int length = strArr.length;
            Object obj = map;
            while (true) {
                l = null;
                if (i >= length) {
                    break;
                }
                String str2 = strArr[i];
                if (!(obj instanceof Map)) {
                    obj = null;
                    break;
                } else {
                    obj = ((Map) obj).get(str2);
                    i++;
                }
            }
            if (obj != null) {
                l = zzdk(obj.toString());
            }
            if (l != null) {
                ArrayList arrayList = new ArrayList();
                zza(map, "", arrayList);
                this.zzbbq.zza(arrayList, l.longValue());
            }
        } finally {
            this.zzbbo.unlock();
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzdj(String str) {
        push(str, null);
        this.zzbbq.zzdl(str);
    }

    private final void zza(Map<String, Object> map, String str, Collection<zza> collection) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String str2 = str.length() == 0 ? "" : ".";
            String key = entry.getKey();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(key).length());
            sb.append(str);
            sb.append(str2);
            sb.append(key);
            String sb2 = sb.toString();
            if (entry.getValue() instanceof Map) {
                zza((Map) entry.getValue(), sb2, collection);
            } else if (!sb2.equals("gtm.lifetime")) {
                collection.add(new zza(sb2, entry.getValue()));
            }
        }
    }

    @VisibleForTesting
    private static Long zzdk(String str) {
        long j;
        Matcher matcher = zzbbl.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            zzdi.zzdo(valueOf.length() != 0 ? "unknown _lifetime: ".concat(valueOf) : new String("unknown _lifetime: "));
            return null;
        }
        try {
            j = Long.parseLong(matcher.group(1));
        } catch (NumberFormatException unused) {
            String valueOf2 = String.valueOf(str);
            zzdi.zzab(valueOf2.length() != 0 ? "illegal number in _lifetime value: ".concat(valueOf2) : new String("illegal number in _lifetime value: "));
            j = 0;
        }
        if (j <= 0) {
            String valueOf3 = String.valueOf(str);
            zzdi.zzdo(valueOf3.length() != 0 ? "non-positive _lifetime: ".concat(valueOf3) : new String("non-positive _lifetime: "));
            return null;
        }
        String group = matcher.group(2);
        if (group.length() == 0) {
            return Long.valueOf(j);
        }
        char charAt = group.charAt(0);
        if (charAt == 'd') {
            return Long.valueOf(j * 1000 * 60 * 60 * 24);
        }
        if (charAt == 'h') {
            return Long.valueOf(j * 1000 * 60 * 60);
        }
        if (charAt == 'm') {
            return Long.valueOf(j * 1000 * 60);
        }
        if (charAt == 's') {
            return Long.valueOf(j * 1000);
        }
        String valueOf4 = String.valueOf(str);
        zzdi.zzab(valueOf4.length() != 0 ? "unknown units in _lifetime: ".concat(valueOf4) : new String("unknown units in _lifetime: "));
        return null;
    }

    public Object get(String str) {
        synchronized (this.zzbbn) {
            Object obj = this.zzbbn;
            String[] split = str.split("\\.");
            for (String str2 : split) {
                if (!(obj instanceof Map)) {
                    return null;
                }
                obj = ((Map) obj).get(str2);
                if (obj == null) {
                    return null;
                }
            }
            return obj;
        }
    }

    @VisibleForTesting
    public static Map<String, Object> mapOf(Object... objArr) {
        if (objArr.length % 2 == 0) {
            HashMap hashMap = new HashMap();
            for (int i = 0; i < objArr.length; i += 2) {
                if (objArr[i] instanceof String) {
                    hashMap.put((String) objArr[i], objArr[i + 1]);
                } else {
                    String valueOf = String.valueOf(objArr[i]);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 21);
                    sb.append("key is not a string: ");
                    sb.append(valueOf);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
            return hashMap;
        }
        throw new IllegalArgumentException("expected even number of key-value pairs");
    }

    @VisibleForTesting
    public static List<Object> listOf(Object... objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzb zzb2) {
        this.zzbbm.put(zzb2, 0);
    }

    static Map<String, Object> zzk(String str, Object obj) {
        HashMap hashMap = new HashMap();
        String[] split = str.toString().split("\\.");
        int i = 0;
        HashMap hashMap2 = hashMap;
        while (i < split.length - 1) {
            HashMap hashMap3 = new HashMap();
            hashMap2.put(split[i], hashMap3);
            i++;
            hashMap2 = hashMap3;
        }
        hashMap2.put(split[split.length - 1], obj);
        return hashMap;
    }

    @VisibleForTesting
    private final void zzb(Map<String, Object> map, Map<String, Object> map2) {
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                if (!(map2.get(str) instanceof List)) {
                    map2.put(str, new ArrayList());
                }
                zza((List) obj, (List) map2.get(str));
            } else if (obj instanceof Map) {
                if (!(map2.get(str) instanceof Map)) {
                    map2.put(str, new HashMap());
                }
                zzb((Map) obj, (Map) map2.get(str));
            } else {
                map2.put(str, obj);
            }
        }
    }

    @VisibleForTesting
    private final void zza(List<Object> list, List<Object> list2) {
        while (list2.size() < list.size()) {
            list2.add(null);
        }
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (obj instanceof List) {
                if (!(list2.get(i) instanceof List)) {
                    list2.set(i, new ArrayList());
                }
                zza((List) obj, (List) list2.get(i));
            } else if (obj instanceof Map) {
                if (!(list2.get(i) instanceof Map)) {
                    list2.set(i, new HashMap());
                }
                zzb((Map) obj, (Map) list2.get(i));
            } else if (obj != OBJECT_NOT_PRESENT) {
                list2.set(i, obj);
            }
        }
    }
}

package com.google.android.gms.tagmanager;

import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@VisibleForTesting
public final class zzgj {
    private static final Object zzbhj = null;
    private static Long zzbhk = new Long(0);
    private static Double zzbhl = new Double(0.0d);
    private static zzgi zzbhm = zzgi.zzau(0);
    private static String zzbhn = new String("");
    private static Boolean zzbho = new Boolean(false);
    private static List<Object> zzbhp = new ArrayList(0);
    private static Map<Object, Object> zzbhq = new HashMap();
    private static zzp zzbhr = zzj(zzbhn);

    public static Object zzqk() {
        return null;
    }

    public static Long zzql() {
        return zzbhk;
    }

    public static Double zzqm() {
        return zzbhl;
    }

    public static Boolean zzqn() {
        return zzbho;
    }

    public static zzgi zzqo() {
        return zzbhm;
    }

    public static String zzqp() {
        return zzbhn;
    }

    public static zzp zzqq() {
        return zzbhr;
    }

    private static String zzi(Object obj) {
        return obj == null ? zzbhn : obj.toString();
    }

    public static String zzc(zzp zzp) {
        return zzi(zzh(zzp));
    }

    public static zzgi zzd(zzp zzp) {
        Object zzh = zzh(zzp);
        if (zzh instanceof zzgi) {
            return (zzgi) zzh;
        }
        if (zzl(zzh)) {
            return zzgi.zzau(zzm(zzh));
        }
        if (zzk(zzh)) {
            return zzgi.zza(Double.valueOf(getDouble(zzh)));
        }
        return zzei(zzi(zzh));
    }

    public static Long zze(zzp zzp) {
        Object zzh = zzh(zzp);
        if (zzl(zzh)) {
            return Long.valueOf(zzm(zzh));
        }
        zzgi zzei = zzei(zzi(zzh));
        return zzei == zzbhm ? zzbhk : Long.valueOf(zzei.longValue());
    }

    public static Double zzf(zzp zzp) {
        Object zzh = zzh(zzp);
        if (zzk(zzh)) {
            return Double.valueOf(getDouble(zzh));
        }
        zzgi zzei = zzei(zzi(zzh));
        return zzei == zzbhm ? zzbhl : Double.valueOf(zzei.doubleValue());
    }

    public static Boolean zzg(zzp zzp) {
        Object zzh = zzh(zzp);
        if (zzh instanceof Boolean) {
            return (Boolean) zzh;
        }
        String zzi = zzi(zzh);
        if (ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equalsIgnoreCase(zzi)) {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(zzi)) {
            return Boolean.FALSE;
        }
        return zzbho;
    }

    public static zzp zzj(Object obj) {
        String str;
        zzp zzp = new zzp();
        if (obj instanceof zzp) {
            return (zzp) obj;
        }
        boolean z = false;
        if (obj instanceof String) {
            zzp.type = 1;
            zzp.string = (String) obj;
        } else if (obj instanceof List) {
            zzp.type = 2;
            List<Object> list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            boolean z2 = false;
            for (Object obj2 : list) {
                zzp zzj = zzj(obj2);
                if (zzj == zzbhr) {
                    return zzbhr;
                }
                z2 = z2 || zzj.zzqs;
                arrayList.add(zzj);
            }
            zzp.zzqj = (zzp[]) arrayList.toArray(new zzp[0]);
            z = z2;
        } else if (obj instanceof Map) {
            zzp.type = 3;
            Set<Map.Entry> entrySet = ((Map) obj).entrySet();
            ArrayList arrayList2 = new ArrayList(entrySet.size());
            ArrayList arrayList3 = new ArrayList(entrySet.size());
            boolean z3 = false;
            for (Map.Entry entry : entrySet) {
                zzp zzj2 = zzj(entry.getKey());
                zzp zzj3 = zzj(entry.getValue());
                if (zzj2 == zzbhr || zzj3 == zzbhr) {
                    return zzbhr;
                }
                z3 = z3 || zzj2.zzqs || zzj3.zzqs;
                arrayList2.add(zzj2);
                arrayList3.add(zzj3);
            }
            zzp.zzqk = (zzp[]) arrayList2.toArray(new zzp[0]);
            zzp.zzql = (zzp[]) arrayList3.toArray(new zzp[0]);
            z = z3;
        } else if (zzk(obj)) {
            zzp.type = 1;
            zzp.string = obj.toString();
        } else if (zzl(obj)) {
            zzp.type = 6;
            zzp.zzqo = zzm(obj);
        } else if (obj instanceof Boolean) {
            zzp.type = 8;
            zzp.zzqp = ((Boolean) obj).booleanValue();
        } else {
            if (obj == null) {
                str = "null";
            } else {
                str = obj.getClass().toString();
            }
            String valueOf = String.valueOf(str);
            zzdi.e(valueOf.length() != 0 ? "Converting to Value from unknown object type: ".concat(valueOf) : new String("Converting to Value from unknown object type: "));
            return zzbhr;
        }
        zzp.zzqs = z;
        return zzp;
    }

    public static zzp zzeh(String str) {
        zzp zzp = new zzp();
        zzp.type = 5;
        zzp.zzqn = str;
        return zzp;
    }

    private static boolean zzk(Object obj) {
        if ((obj instanceof Double) || (obj instanceof Float)) {
            return true;
        }
        return (obj instanceof zzgi) && ((zzgi) obj).zzqi();
    }

    private static double getDouble(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        zzdi.e("getDouble received non-Number");
        return 0.0d;
    }

    private static boolean zzl(Object obj) {
        if ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long)) {
            return true;
        }
        return (obj instanceof zzgi) && ((zzgi) obj).zzqj();
    }

    private static long zzm(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        zzdi.e("getInt64 received non-Number");
        return 0;
    }

    private static zzgi zzei(String str) {
        try {
            return zzgi.zzeg(str);
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
            sb.append("Failed to convert '");
            sb.append(str);
            sb.append("' to a number.");
            zzdi.e(sb.toString());
            return zzbhm;
        }
    }

    public static Object zzh(zzp zzp) {
        if (zzp == null) {
            return null;
        }
        int i = 0;
        switch (zzp.type) {
            case 1:
                return zzp.string;
            case 2:
                ArrayList arrayList = new ArrayList(zzp.zzqj.length);
                zzp[] zzpArr = zzp.zzqj;
                int length = zzpArr.length;
                while (i < length) {
                    Object zzh = zzh(zzpArr[i]);
                    if (zzh == null) {
                        return null;
                    }
                    arrayList.add(zzh);
                    i++;
                }
                return arrayList;
            case 3:
                if (zzp.zzqk.length != zzp.zzql.length) {
                    String valueOf = String.valueOf(zzp.toString());
                    zzdi.e(valueOf.length() != 0 ? "Converting an invalid value to object: ".concat(valueOf) : new String("Converting an invalid value to object: "));
                    return null;
                }
                HashMap hashMap = new HashMap(zzp.zzql.length);
                while (i < zzp.zzqk.length) {
                    Object zzh2 = zzh(zzp.zzqk[i]);
                    Object zzh3 = zzh(zzp.zzql[i]);
                    if (zzh2 == null || zzh3 == null) {
                        return null;
                    }
                    hashMap.put(zzh2, zzh3);
                    i++;
                }
                return hashMap;
            case 4:
                zzdi.e("Trying to convert a macro reference to object");
                return null;
            case 5:
                zzdi.e("Trying to convert a function id to object");
                return null;
            case 6:
                return Long.valueOf(zzp.zzqo);
            case 7:
                StringBuilder sb = new StringBuilder();
                zzp[] zzpArr2 = zzp.zzqq;
                int length2 = zzpArr2.length;
                while (i < length2) {
                    String zzi = zzi(zzh(zzpArr2[i]));
                    if (zzi == zzbhn) {
                        return null;
                    }
                    sb.append(zzi);
                    i++;
                }
                return sb.toString();
            case 8:
                return Boolean.valueOf(zzp.zzqp);
            default:
                int i2 = zzp.type;
                StringBuilder sb2 = new StringBuilder(46);
                sb2.append("Failed to convert a value of type: ");
                sb2.append(i2);
                zzdi.e(sb2.toString());
                return null;
        }
    }
}

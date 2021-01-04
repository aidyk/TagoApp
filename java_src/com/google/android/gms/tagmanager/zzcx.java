package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.io.IOUtils;

/* access modifiers changed from: package-private */
public final class zzcx extends zzbq {
    private static final String ID = zza.JOINER.toString();
    private static final String zzbco = zzb.ARG0.toString();
    private static final String zzbdh = zzb.ITEM_SEPARATOR.toString();
    private static final String zzbdi = zzb.KEY_VALUE_SEPARATOR.toString();
    private static final String zzbdj = zzb.ESCAPE.toString();

    public zzcx() {
        super(ID, zzbco);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        zzp zzp = map.get(zzbco);
        if (zzp == null) {
            return zzgj.zzqq();
        }
        zzp zzp2 = map.get(zzbdh);
        String zzc = zzp2 != null ? zzgj.zzc(zzp2) : "";
        zzp zzp3 = map.get(zzbdi);
        String zzc2 = zzp3 != null ? zzgj.zzc(zzp3) : "=";
        int i = zzcz.zzbdl;
        zzp zzp4 = map.get(zzbdj);
        HashSet hashSet = null;
        if (zzp4 != null) {
            String zzc3 = zzgj.zzc(zzp4);
            if ("url".equals(zzc3)) {
                i = zzcz.zzbdm;
            } else if ("backslash".equals(zzc3)) {
                i = zzcz.zzbdn;
                hashSet = new HashSet();
                zza(hashSet, zzc);
                zza(hashSet, zzc2);
                hashSet.remove(Character.valueOf(IOUtils.DIR_SEPARATOR_WINDOWS));
            } else {
                String valueOf = String.valueOf(zzc3);
                zzdi.e(valueOf.length() != 0 ? "Joiner: unsupported escape type: ".concat(valueOf) : new String("Joiner: unsupported escape type: "));
                return zzgj.zzqq();
            }
        }
        StringBuilder sb = new StringBuilder();
        switch (zzp.type) {
            case 2:
                zzp[] zzpArr = zzp.zzqj;
                int length = zzpArr.length;
                int i2 = 0;
                boolean z = true;
                while (i2 < length) {
                    zzp zzp5 = zzpArr[i2];
                    if (!z) {
                        sb.append(zzc);
                    }
                    zza(sb, zzgj.zzc(zzp5), i, hashSet);
                    i2++;
                    z = false;
                }
                break;
            case 3:
                for (int i3 = 0; i3 < zzp.zzqk.length; i3++) {
                    if (i3 > 0) {
                        sb.append(zzc);
                    }
                    String zzc4 = zzgj.zzc(zzp.zzqk[i3]);
                    String zzc5 = zzgj.zzc(zzp.zzql[i3]);
                    zza(sb, zzc4, i, hashSet);
                    sb.append(zzc2);
                    zza(sb, zzc5, i, hashSet);
                }
                break;
            default:
                zza(sb, zzgj.zzc(zzp), i, hashSet);
                break;
        }
        return zzgj.zzj(sb.toString());
    }

    private static void zza(Set<Character> set, String str) {
        for (int i = 0; i < str.length(); i++) {
            set.add(Character.valueOf(str.charAt(i)));
        }
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Character;>;)V */
    private static void zza(StringBuilder sb, String str, int i, Set set) {
        sb.append(zza(str, i, set));
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Character;>;)Ljava/lang/String; */
    private static String zza(String str, int i, Set set) {
        switch (zzcy.zzbdk[i - 1]) {
            case 1:
                try {
                    return zzgn.zzek(str);
                } catch (UnsupportedEncodingException e) {
                    zzdi.zza("Joiner: unsupported encoding", e);
                    return str;
                }
            case 2:
                String replace = str.replace("\\", "\\\\");
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    String ch = ((Character) it2.next()).toString();
                    String valueOf = String.valueOf(ch);
                    replace = replace.replace(ch, valueOf.length() != 0 ? "\\".concat(valueOf) : new String("\\"));
                }
                return replace;
            default:
                return str;
        }
    }
}

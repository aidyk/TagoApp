package com.google.android.gms.internal.vision;

import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.List;
import java.util.Map;
import kotlin.text.Typography;

/* access modifiers changed from: package-private */
public final class zzhi {
    static String zza(zzhf zzhf, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zza(zzhf, sb, 0);
        return sb.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:76:0x01f8, code lost:
        if (((java.lang.Boolean) r6).booleanValue() == false) goto L_0x01fa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x020b, code lost:
        if (((java.lang.Integer) r6).intValue() == 0) goto L_0x01fa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x021c, code lost:
        if (((java.lang.Float) r6).floatValue() == 0.0f) goto L_0x01fa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x022e, code lost:
        if (((java.lang.Double) r6).doubleValue() == 0.0d) goto L_0x01fa;
     */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x0265  */
    /* JADX WARNING: Removed duplicated region for block: B:107:0x0267  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void zza(com.google.android.gms.internal.vision.zzhf r12, java.lang.StringBuilder r13, int r14) {
        /*
        // Method dump skipped, instructions count: 717
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzhi.zza(com.google.android.gms.internal.vision.zzhf, java.lang.StringBuilder, int):void");
    }

    static final void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zza(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zza(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(zzik.zzd(zzeo.zzl((String) obj)));
                sb.append(Typography.quote);
            } else if (obj instanceof zzeo) {
                sb.append(": \"");
                sb.append(zzik.zzd((zzeo) obj));
                sb.append(Typography.quote);
            } else if (obj instanceof zzfy) {
                sb.append(" {");
                zza((zzfy) obj, sb, i + 2);
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                zza(sb, i4, "key", entry2.getKey());
                zza(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }

    private static final String zzq(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}

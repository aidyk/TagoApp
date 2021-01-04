package com.google.android.gms.internal.measurement;

import org.apache.commons.io.IOUtils;

/* access modifiers changed from: package-private */
public final class zzyi {
    static String zzd(zzun zzun) {
        zzyj zzyj = new zzyj(zzun);
        StringBuilder sb = new StringBuilder(zzyj.size());
        for (int i = 0; i < zzyj.size(); i++) {
            byte zzal = zzyj.zzal(i);
            if (zzal == 34) {
                sb.append("\\\"");
            } else if (zzal == 39) {
                sb.append("\\'");
            } else if (zzal != 92) {
                switch (zzal) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case 12:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (zzal < 32 || zzal > 126) {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            sb.append((char) (((zzal >>> 6) & 3) + 48));
                            sb.append((char) (((zzal >>> 3) & 7) + 48));
                            sb.append((char) ((zzal & 7) + 48));
                            break;
                        } else {
                            sb.append((char) zzal);
                            continue;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}

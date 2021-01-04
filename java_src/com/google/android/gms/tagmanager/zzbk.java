package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzbk extends zzbq {
    private static final String ID = zza.ENCODE.toString();
    private static final String zzbco = zzb.ARG0.toString();
    private static final String zzbcp = zzb.NO_PADDING.toString();
    private static final String zzbcq = zzb.INPUT_FORMAT.toString();
    private static final String zzbcr = zzb.OUTPUT_FORMAT.toString();

    public zzbk() {
        super(ID, zzbco);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String str;
        String str2;
        byte[] bArr;
        String str3;
        zzp zzp = map.get(zzbco);
        if (zzp == null || zzp == zzgj.zzqq()) {
            return zzgj.zzqq();
        }
        String zzc = zzgj.zzc(zzp);
        zzp zzp2 = map.get(zzbcq);
        if (zzp2 == null) {
            str = MimeTypes.BASE_TYPE_TEXT;
        } else {
            str = zzgj.zzc(zzp2);
        }
        zzp zzp3 = map.get(zzbcr);
        if (zzp3 == null) {
            str2 = "base16";
        } else {
            str2 = zzgj.zzc(zzp3);
        }
        int i = 2;
        zzp zzp4 = map.get(zzbcp);
        if (zzp4 != null && zzgj.zzg(zzp4).booleanValue()) {
            i = 3;
        }
        try {
            if (MimeTypes.BASE_TYPE_TEXT.equals(str)) {
                bArr = zzc.getBytes();
            } else if ("base16".equals(str)) {
                bArr = zzo.decode(zzc);
            } else if ("base64".equals(str)) {
                bArr = Base64.decode(zzc, i);
            } else if ("base64url".equals(str)) {
                bArr = Base64.decode(zzc, i | 8);
            } else {
                String valueOf = String.valueOf(str);
                zzdi.e(valueOf.length() != 0 ? "Encode: unknown input format: ".concat(valueOf) : new String("Encode: unknown input format: "));
                return zzgj.zzqq();
            }
            if ("base16".equals(str2)) {
                str3 = zzo.encode(bArr);
            } else if ("base64".equals(str2)) {
                str3 = Base64.encodeToString(bArr, i);
            } else if ("base64url".equals(str2)) {
                str3 = Base64.encodeToString(bArr, i | 8);
            } else {
                String valueOf2 = String.valueOf(str2);
                zzdi.e(valueOf2.length() != 0 ? "Encode: unknown output format: ".concat(valueOf2) : new String("Encode: unknown output format: "));
                return zzgj.zzqq();
            }
            return zzgj.zzj(str3);
        } catch (IllegalArgumentException unused) {
            zzdi.e("Encode: invalid input:");
            return zzgj.zzqq();
        }
    }
}

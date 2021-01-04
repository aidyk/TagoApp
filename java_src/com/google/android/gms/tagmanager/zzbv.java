package com.google.android.gms.tagmanager;

import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzbv extends zzbq {
    private static final String ID = zza.HASH.toString();
    private static final String zzbco = zzb.ARG0.toString();
    private static final String zzbcq = zzb.INPUT_FORMAT.toString();
    private static final String zzbct = zzb.ALGORITHM.toString();

    public zzbv() {
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
        zzp zzp = map.get(zzbco);
        if (zzp == null || zzp == zzgj.zzqq()) {
            return zzgj.zzqq();
        }
        String zzc = zzgj.zzc(zzp);
        zzp zzp2 = map.get(zzbct);
        if (zzp2 == null) {
            str = "MD5";
        } else {
            str = zzgj.zzc(zzp2);
        }
        zzp zzp3 = map.get(zzbcq);
        if (zzp3 == null) {
            str2 = MimeTypes.BASE_TYPE_TEXT;
        } else {
            str2 = zzgj.zzc(zzp3);
        }
        if (MimeTypes.BASE_TYPE_TEXT.equals(str2)) {
            bArr = zzc.getBytes();
        } else if ("base16".equals(str2)) {
            bArr = zzo.decode(zzc);
        } else {
            String valueOf = String.valueOf(str2);
            zzdi.e(valueOf.length() != 0 ? "Hash: unknown input format: ".concat(valueOf) : new String("Hash: unknown input format: "));
            return zzgj.zzqq();
        }
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(bArr);
            return zzgj.zzj(zzo.encode(instance.digest()));
        } catch (NoSuchAlgorithmException unused) {
            String valueOf2 = String.valueOf(str);
            zzdi.e(valueOf2.length() != 0 ? "Hash: unknown algorithm: ".concat(valueOf2) : new String("Hash: unknown algorithm: "));
            return zzgj.zzqq();
        }
    }
}

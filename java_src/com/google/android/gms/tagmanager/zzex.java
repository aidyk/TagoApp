package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzrt;
import com.google.android.gms.internal.measurement.zzrv;
import com.google.android.gms.internal.measurement.zzrz;
import com.google.android.gms.internal.measurement.zzsd;
import com.google.android.gms.internal.measurement.zzzq;
import com.google.android.gms.internal.measurement.zzzr;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

/* access modifiers changed from: package-private */
public final class zzex implements zzah {
    private final ExecutorService zzaea = Executors.newSingleThreadExecutor();
    private final String zzbaa;
    private zzdh<zzrt> zzbfb;
    private final Context zzri;

    zzex(Context context, String str) {
        this.zzri = context;
        this.zzbaa = str;
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final void zza(zzdh<zzrt> zzdh) {
        this.zzbfb = zzdh;
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final void zzny() {
        this.zzaea.execute(new zzey(this));
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x0080 */
    @com.google.android.gms.common.util.VisibleForTesting
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzpr() {
        /*
        // Method dump skipped, instructions count: 208
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzex.zzpr():void");
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final void zza(zzrt zzrt) {
        this.zzaea.execute(new zzez(this, zzrt));
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final zzrz zzu(int i) {
        try {
            InputStream openRawResource = this.zzri.getResources().openRawResource(i);
            String resourceName = this.zzri.getResources().getResourceName(i);
            StringBuilder sb = new StringBuilder(String.valueOf(resourceName).length() + 66);
            sb.append("Attempting to load a container from the resource ID ");
            sb.append(i);
            sb.append(" (");
            sb.append(resourceName);
            sb.append(")");
            zzdi.v(sb.toString());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzrv.zza(openRawResource, byteArrayOutputStream);
                zzrz zza = zza(byteArrayOutputStream);
                if (zza == null) {
                    return zze(byteArrayOutputStream.toByteArray());
                }
                zzdi.v("The container was successfully loaded from the resource (using JSON file format)");
                return zza;
            } catch (IOException unused) {
                String resourceName2 = this.zzri.getResources().getResourceName(i);
                StringBuilder sb2 = new StringBuilder(String.valueOf(resourceName2).length() + 67);
                sb2.append("Error reading the default container with resource ID ");
                sb2.append(i);
                sb2.append(" (");
                sb2.append(resourceName2);
                sb2.append(")");
                zzdi.zzab(sb2.toString());
                return null;
            }
        } catch (Resources.NotFoundException unused2) {
            StringBuilder sb3 = new StringBuilder(98);
            sb3.append("Failed to load the container. No default container resource found with the resource ID ");
            sb3.append(i);
            zzdi.zzab(sb3.toString());
            return null;
        }
    }

    private static zzrz zza(ByteArrayOutputStream byteArrayOutputStream) {
        try {
            return zzda.zzdx(byteArrayOutputStream.toString("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            zzdi.zzdp("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
            return null;
        } catch (JSONException unused2) {
            zzdi.zzab("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return null;
        }
    }

    private static zzrz zze(byte[] bArr) {
        try {
            zzrz zza = zzrv.zza((zzl) zzzr.zza(new zzl(), bArr));
            if (zza != null) {
                zzdi.v("The container was successfully loaded from the resource (using binary file)");
            }
            return zza;
        } catch (zzzq unused) {
            zzdi.e("The resource file is corrupted. The container cannot be extracted from the binary file");
            return null;
        } catch (zzsd unused2) {
            zzdi.zzab("The resource file is invalid. The container from the binary file is invalid");
            return null;
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final synchronized void release() {
        this.zzaea.shutdown();
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public final boolean zzb(zzrt zzrt) {
        File zzps = zzps();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(zzps);
            try {
                byte[] bArr = new byte[zzrt.zzwe()];
                zzzr.zza(zzrt, bArr, 0, bArr.length);
                fileOutputStream.write(bArr);
                try {
                    fileOutputStream.close();
                    return true;
                } catch (IOException unused) {
                    zzdi.zzab("error closing stream for writing resource to disk");
                    return true;
                }
            } catch (IOException unused2) {
                zzdi.zzab("Error writing resource to disk. Removing resource from disk.");
                zzps.delete();
                try {
                    fileOutputStream.close();
                } catch (IOException unused3) {
                    zzdi.zzab("error closing stream for writing resource to disk");
                }
                return false;
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                    zzdi.zzab("error closing stream for writing resource to disk");
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            zzdi.e("Error opening resource file for writing");
            return false;
        }
    }

    @VisibleForTesting
    private final File zzps() {
        String valueOf = String.valueOf("resource_");
        String valueOf2 = String.valueOf(this.zzbaa);
        return new File(this.zzri.getDir("google_tagmanager", 0), valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }
}

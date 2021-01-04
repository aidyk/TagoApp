package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzrv;
import com.google.android.gms.internal.measurement.zzsg;
import com.google.android.gms.internal.measurement.zzsh;
import com.google.android.gms.internal.measurement.zzsi;
import com.google.android.gms.internal.measurement.zzzr;
import com.google.android.gms.tagmanager.zzeh;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.lang3.StringUtils;

final class zzer implements Runnable {
    private final String zzbaa;
    private volatile String zzbba;
    private final zzsh zzbez;
    private final String zzbfa;
    private zzdh<zzo> zzbfb;
    private volatile zzal zzbfc;
    private volatile String zzbfd;
    private final Context zzri;

    public zzer(Context context, String str, zzal zzal) {
        this(context, str, new zzsh(), zzal);
    }

    @VisibleForTesting
    private zzer(Context context, String str, zzsh zzsh, zzal zzal) {
        this.zzri = context;
        this.zzbez = zzsh;
        this.zzbaa = str;
        this.zzbfc = zzal;
        String valueOf = String.valueOf("/r?id=");
        String valueOf2 = String.valueOf(str);
        this.zzbfa = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        this.zzbba = this.zzbfa;
        this.zzbfd = null;
    }

    public final void run() {
        boolean z;
        if (this.zzbfb != null) {
            this.zzbfb.zznx();
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.zzri.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                zzdi.v("...no network connectivity");
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                this.zzbfb.zzt(zzcz.zzbdp);
                return;
            }
            zzdi.v("Start loading resource from network ...");
            String zzoe = this.zzbfc.zzoe();
            String str = this.zzbba;
            StringBuilder sb = new StringBuilder(String.valueOf(zzoe).length() + 12 + String.valueOf(str).length());
            sb.append(zzoe);
            sb.append(str);
            sb.append("&v=a65833898");
            String sb2 = sb.toString();
            if (this.zzbfd != null && !this.zzbfd.trim().equals("")) {
                String valueOf = String.valueOf(sb2);
                String str2 = this.zzbfd;
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 4 + String.valueOf(str2).length());
                sb3.append(valueOf);
                sb3.append("&pv=");
                sb3.append(str2);
                sb2 = sb3.toString();
            }
            if (zzeh.zzpm().zzpn().equals(zzeh.zza.CONTAINER_DEBUG)) {
                String valueOf2 = String.valueOf(sb2);
                String valueOf3 = String.valueOf("&gtm_debug=x");
                sb2 = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
            }
            zzsg zzth = zzsh.zzth();
            InputStream inputStream = null;
            try {
                inputStream = zzth.zzfb(sb2);
            } catch (FileNotFoundException unused) {
                String str3 = this.zzbaa;
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 79 + String.valueOf(str3).length());
                sb4.append("No data is retrieved from the given url: ");
                sb4.append(sb2);
                sb4.append(". Make sure container_id: ");
                sb4.append(str3);
                sb4.append(" is correct.");
                zzdi.zzab(sb4.toString());
                this.zzbfb.zzt(zzcz.zzbdr);
                zzth.close();
                return;
            } catch (zzsi unused2) {
                String valueOf4 = String.valueOf(sb2);
                zzdi.zzab(valueOf4.length() != 0 ? "Error when loading resource for url: ".concat(valueOf4) : new String("Error when loading resource for url: "));
                this.zzbfb.zzt(zzcz.zzbds);
            } catch (IOException e) {
                String message = e.getMessage();
                StringBuilder sb5 = new StringBuilder(String.valueOf(sb2).length() + 40 + String.valueOf(message).length());
                sb5.append("Error when loading resources from url: ");
                sb5.append(sb2);
                sb5.append(StringUtils.SPACE);
                sb5.append(message);
                zzdi.zzb(sb5.toString(), e);
                this.zzbfb.zzt(zzcz.zzbdq);
                zzth.close();
                return;
            } catch (Throwable th) {
                zzth.close();
                throw th;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzrv.zza(inputStream, byteArrayOutputStream);
                zzo zzo = (zzo) zzzr.zza(new zzo(), byteArrayOutputStream.toByteArray());
                String valueOf5 = String.valueOf(zzo);
                StringBuilder sb6 = new StringBuilder(String.valueOf(valueOf5).length() + 43);
                sb6.append("Successfully loaded supplemented resource: ");
                sb6.append(valueOf5);
                zzdi.v(sb6.toString());
                if (zzo.zzqg == null && zzo.zzqf.length == 0) {
                    String valueOf6 = String.valueOf(this.zzbaa);
                    zzdi.v(valueOf6.length() != 0 ? "No change for container: ".concat(valueOf6) : new String("No change for container: "));
                }
                this.zzbfb.onSuccess(zzo);
                zzth.close();
                zzdi.v("Load resource from network finished.");
            } catch (IOException e2) {
                String message2 = e2.getMessage();
                StringBuilder sb7 = new StringBuilder(String.valueOf(sb2).length() + 51 + String.valueOf(message2).length());
                sb7.append("Error when parsing downloaded resources from url: ");
                sb7.append(sb2);
                sb7.append(StringUtils.SPACE);
                sb7.append(message2);
                zzdi.zzb(sb7.toString(), e2);
                this.zzbfb.zzt(zzcz.zzbdr);
                zzth.close();
            }
        } else {
            throw new IllegalStateException("callback must be set before execute");
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzdh<zzo> zzdh) {
        this.zzbfb = zzdh;
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzdi(String str) {
        if (str == null) {
            this.zzbba = this.zzbfa;
            return;
        }
        String valueOf = String.valueOf(str);
        zzdi.zzdp(valueOf.length() != 0 ? "Setting CTFE URL path: ".concat(valueOf) : new String("Setting CTFE URL path: "));
        this.zzbba = str;
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzea(String str) {
        String valueOf = String.valueOf(str);
        zzdi.zzdp(valueOf.length() != 0 ? "Setting previous container version: ".concat(valueOf) : new String("Setting previous container version: "));
        this.zzbfd = str;
    }
}

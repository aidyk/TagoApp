package com.google.android.gms.internal.measurement;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.Map;
import kotlin.text.Typography;

/* access modifiers changed from: package-private */
public final class zzcr extends zzau {
    private static final byte[] zzabn = "\n".getBytes();
    private final String zzabl = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleAnalytics", zzav.VERSION, Build.VERSION.RELEASE, zzdg.zza(Locale.getDefault()), Build.MODEL, Build.ID);
    private final zzdc zzabm;

    zzcr(zzaw zzaw) {
        super(zzaw);
        this.zzabm = new zzdc(zzaw.zzbx());
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzau
    public final void zzag() {
        zza("Network initialized. User agent", this.zzabl);
    }

    public final boolean zzfb() {
        NetworkInfo networkInfo;
        zzk.zzaf();
        zzcl();
        try {
            networkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException unused) {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        zzq("No network connectivity");
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0159, code lost:
        if (zza(r5) == 200) goto L_0x0135;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0199, code lost:
        if (zza(r6, r5) == 200) goto L_0x0135;
     */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x019f  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x01b4 A[EDGE_INSN: B:71:0x01b4->B:67:0x01b4 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<java.lang.Long> zzb(java.util.List<com.google.android.gms.internal.measurement.zzck> r9) {
        /*
        // Method dump skipped, instructions count: 437
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcr.zzb(java.util.List):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0045  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zza(java.net.URL r5) {
        /*
            r4 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r5)
            java.lang.String r0 = "GET request"
            r4.zzb(r0, r5)
            r0 = 0
            java.net.HttpURLConnection r5 = r4.zzb(r5)     // Catch:{ IOException -> 0x003a, all -> 0x0035 }
            r5.connect()     // Catch:{ IOException -> 0x0033 }
            r4.zza(r5)     // Catch:{ IOException -> 0x0033 }
            int r0 = r5.getResponseCode()     // Catch:{ IOException -> 0x0033 }
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 != r1) goto L_0x0022
            com.google.android.gms.internal.measurement.zzal r1 = r4.zzcc()     // Catch:{ IOException -> 0x0033 }
            r1.zzbv()     // Catch:{ IOException -> 0x0033 }
        L_0x0022:
            java.lang.String r1 = "GET status"
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)     // Catch:{ IOException -> 0x0033 }
            r4.zzb(r1, r2)     // Catch:{ IOException -> 0x0033 }
            if (r5 == 0) goto L_0x0030
            r5.disconnect()
        L_0x0030:
            return r0
        L_0x0031:
            r0 = move-exception
            goto L_0x004a
        L_0x0033:
            r0 = move-exception
            goto L_0x003e
        L_0x0035:
            r5 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
            goto L_0x004a
        L_0x003a:
            r5 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
        L_0x003e:
            java.lang.String r1 = "Network GET connection error"
            r4.zzd(r1, r0)     // Catch:{ all -> 0x0031 }
            if (r5 == 0) goto L_0x0048
            r5.disconnect()
        L_0x0048:
            r5 = 0
            return r5
        L_0x004a:
            if (r5 == 0) goto L_0x004f
            r5.disconnect()
        L_0x004f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcr.zza(java.net.URL):int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x007f A[SYNTHETIC, Splitter:B:35:0x007f] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0093 A[SYNTHETIC, Splitter:B:43:0x0093] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x009f  */
    /* JADX WARNING: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zza(java.net.URL r4, byte[] r5) {
        /*
        // Method dump skipped, instructions count: 163
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcr.zza(java.net.URL, byte[]):int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x00d8 A[SYNTHETIC, Splitter:B:41:0x00d8] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00ec A[SYNTHETIC, Splitter:B:49:0x00ec] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzb(java.net.URL r10, byte[] r11) {
        /*
        // Method dump skipped, instructions count: 252
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcr.zzb(java.net.URL, byte[]):int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0022 A[SYNTHETIC, Splitter:B:19:0x0022] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zza(java.net.HttpURLConnection r3) throws java.io.IOException {
        /*
            r2 = this;
            java.io.InputStream r3 = r3.getInputStream()     // Catch:{ all -> 0x001e }
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]     // Catch:{ all -> 0x001c }
        L_0x0008:
            int r1 = r3.read(r0)     // Catch:{ all -> 0x001c }
            if (r1 > 0) goto L_0x0008
            if (r3 == 0) goto L_0x001b
            r3.close()     // Catch:{ IOException -> 0x0014 }
            return
        L_0x0014:
            r3 = move-exception
            java.lang.String r0 = "Error closing http connection input stream"
            r2.zze(r0, r3)
            return
        L_0x001b:
            return
        L_0x001c:
            r0 = move-exception
            goto L_0x0020
        L_0x001e:
            r0 = move-exception
            r3 = 0
        L_0x0020:
            if (r3 == 0) goto L_0x002c
            r3.close()     // Catch:{ IOException -> 0x0026 }
            goto L_0x002c
        L_0x0026:
            r3 = move-exception
            java.lang.String r1 = "Error closing http connection input stream"
            r2.zze(r1, r3)
        L_0x002c:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcr.zza(java.net.HttpURLConnection):void");
    }

    @VisibleForTesting
    private final HttpURLConnection zzb(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setConnectTimeout(zzcf.zzzz.get().intValue());
            httpURLConnection.setReadTimeout(zzcf.zzaaa.get().intValue());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty("User-Agent", this.zzabl);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain http connection");
    }

    private final URL zzd(zzck zzck) {
        String str;
        String str2;
        if (zzck.zzet()) {
            String valueOf = String.valueOf(zzbx.zzed());
            String valueOf2 = String.valueOf(zzbx.zzef());
            if (valueOf2.length() != 0) {
                str = valueOf.concat(valueOf2);
                return new URL(str);
            }
            str2 = new String(valueOf);
        } else {
            String valueOf3 = String.valueOf(zzbx.zzee());
            String valueOf4 = String.valueOf(zzbx.zzef());
            if (valueOf4.length() != 0) {
                str = valueOf3.concat(valueOf4);
                return new URL(str);
            }
            str2 = new String(valueOf3);
        }
        str = str2;
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final URL zzb(zzck zzck, String str) {
        String str2;
        if (zzck.zzet()) {
            String zzed = zzbx.zzed();
            String zzef = zzbx.zzef();
            StringBuilder sb = new StringBuilder(String.valueOf(zzed).length() + 1 + String.valueOf(zzef).length() + String.valueOf(str).length());
            sb.append(zzed);
            sb.append(zzef);
            sb.append("?");
            sb.append(str);
            str2 = sb.toString();
        } else {
            String zzee = zzbx.zzee();
            String zzef2 = zzbx.zzef();
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzee).length() + 1 + String.valueOf(zzef2).length() + String.valueOf(str).length());
            sb2.append(zzee);
            sb2.append(zzef2);
            sb2.append("?");
            sb2.append(str);
            str2 = sb2.toString();
        }
        try {
            return new URL(str2);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final URL zzfc() {
        String valueOf = String.valueOf(zzbx.zzed());
        String valueOf2 = String.valueOf(zzcf.zzzo.get());
        try {
            return new URL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public final String zza(zzck zzck, boolean z) {
        String str;
        Preconditions.checkNotNull(zzck);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : zzck.zzcw().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    zza(sb, key, entry.getValue());
                }
            }
            zza(sb, "ht", String.valueOf(zzck.zzer()));
            zza(sb, "qt", String.valueOf(zzbx().currentTimeMillis() - zzck.zzer()));
            if (z) {
                long zzeu = zzck.zzeu();
                if (zzeu != 0) {
                    str = String.valueOf(zzeu);
                } else {
                    str = String.valueOf(zzck.zzeq());
                }
                zza(sb, "z", str);
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            return null;
        }
    }

    private static void zza(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        if (sb.length() != 0) {
            sb.append(Typography.amp);
        }
        sb.append(URLEncoder.encode(str, "UTF-8"));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, "UTF-8"));
    }
}

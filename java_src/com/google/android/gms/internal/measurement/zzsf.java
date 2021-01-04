package com.google.android.gms.internal.measurement;

import com.google.android.gms.tagmanager.zzdi;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

final class zzsf implements zzsg {
    private HttpURLConnection zzbpa;
    private InputStream zzbpb = null;

    zzsf() {
    }

    @Override // com.google.android.gms.internal.measurement.zzsg
    public final InputStream zzfb(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setConnectTimeout(20000);
        this.zzbpa = httpURLConnection;
        HttpURLConnection httpURLConnection2 = this.zzbpa;
        int responseCode = httpURLConnection2.getResponseCode();
        if (responseCode == 200) {
            this.zzbpb = httpURLConnection2.getInputStream();
            return this.zzbpb;
        }
        StringBuilder sb = new StringBuilder(25);
        sb.append("Bad response: ");
        sb.append(responseCode);
        String sb2 = sb.toString();
        if (responseCode == 404) {
            throw new FileNotFoundException(sb2);
        } else if (responseCode == 503) {
            throw new zzsi(sb2);
        } else {
            throw new IOException(sb2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzsg
    public final void close() {
        HttpURLConnection httpURLConnection = this.zzbpa;
        try {
            if (this.zzbpb != null) {
                this.zzbpb.close();
            }
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzdi.zza(valueOf.length() != 0 ? "HttpUrlConnectionNetworkClient: Error when closing http input stream: ".concat(valueOf) : new String("HttpUrlConnectionNetworkClient: Error when closing http input stream: "), e);
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }
}

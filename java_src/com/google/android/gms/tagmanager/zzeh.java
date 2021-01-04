package com.google.android.gms.tagmanager;

import android.net.Uri;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/* access modifiers changed from: package-private */
@ShowFirstParty
@VisibleForTesting
public class zzeh {
    private static zzeh zzbel;
    private volatile String zzbaa = null;
    private volatile zza zzbem = zza.NONE;
    private volatile String zzben = null;
    private volatile String zzbeo = null;

    /* access modifiers changed from: package-private */
    public enum zza {
        NONE,
        CONTAINER,
        CONTAINER_DEBUG
    }

    zzeh() {
    }

    @ShowFirstParty
    static zzeh zzpm() {
        zzeh zzeh;
        synchronized (zzeh.class) {
            if (zzbel == null) {
                zzbel = new zzeh();
            }
            zzeh = zzbel;
        }
        return zzeh;
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean zzb(Uri uri) {
        try {
            String decode = URLDecoder.decode(uri.toString(), "UTF-8");
            if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
                String valueOf = String.valueOf(decode);
                zzdi.v(valueOf.length() != 0 ? "Container preview url: ".concat(valueOf) : new String("Container preview url: "));
                if (decode.matches(".*?&gtm_debug=x$")) {
                    this.zzbem = zza.CONTAINER_DEBUG;
                } else {
                    this.zzbem = zza.CONTAINER;
                }
                this.zzbeo = uri.getQuery().replace("&gtm_debug=x", "");
                if (this.zzbem == zza.CONTAINER || this.zzbem == zza.CONTAINER_DEBUG) {
                    String valueOf2 = String.valueOf("/r?");
                    String valueOf3 = String.valueOf(this.zzbeo);
                    this.zzben = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
                }
                this.zzbaa = zzdz(this.zzbeo);
                return true;
            } else if (!decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
                String valueOf4 = String.valueOf(decode);
                zzdi.zzab(valueOf4.length() != 0 ? "Invalid preview uri: ".concat(valueOf4) : new String("Invalid preview uri: "));
                return false;
            } else if (!zzdz(uri.getQuery()).equals(this.zzbaa)) {
                return false;
            } else {
                String valueOf5 = String.valueOf(this.zzbaa);
                zzdi.v(valueOf5.length() != 0 ? "Exit preview mode for container: ".concat(valueOf5) : new String("Exit preview mode for container: "));
                this.zzbem = zza.NONE;
                this.zzben = null;
                return true;
            }
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public final zza zzpn() {
        return this.zzbem;
    }

    /* access modifiers changed from: package-private */
    public final String zzpo() {
        return this.zzben;
    }

    /* access modifiers changed from: package-private */
    public final String getContainerId() {
        return this.zzbaa;
    }

    private static String zzdz(String str) {
        return str.split("&")[0].split("=")[1];
    }
}

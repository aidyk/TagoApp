package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzau;
import com.google.android.gms.internal.measurement.zzaw;
import com.google.android.gms.internal.measurement.zzcn;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.internal.measurement.zzdg;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

@VisibleForTesting
public class Tracker extends zzau {
    private boolean zzsx;
    private final Map<String, String> zzsy = new HashMap();
    private final Map<String, String> zzsz = new HashMap();
    private final zzcn zzta;
    private final zza zztb;
    private ExceptionReporter zztc;
    private zzdf zztd;

    Tracker(zzaw zzaw, String str, zzcn zzcn) {
        super(zzaw);
        if (str != null) {
            this.zzsy.put("&tid", str);
        }
        this.zzsy.put("useSecure", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        this.zzsy.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
        this.zzta = new zzcn("tracking", zzbx());
        this.zztb = new zza(zzaw);
    }

    /* access modifiers changed from: package-private */
    public class zza extends zzau implements GoogleAnalytics.zza {
        private boolean zztm;
        private int zztn;
        private long zzto = -1;
        private boolean zztp;
        private long zztq;

        protected zza(zzaw zzaw) {
            super(zzaw);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzau
        public final void zzag() {
        }

        public final void setSessionTimeout(long j) {
            this.zzto = j;
            zzai();
        }

        public final void enableAutoActivityTracking(boolean z) {
            this.zztm = z;
            zzai();
        }

        public final synchronized boolean zzah() {
            boolean z;
            z = this.zztp;
            this.zztp = false;
            return z;
        }

        private final void zzai() {
            if (this.zzto >= 0 || this.zztm) {
                zzcb().zza(Tracker.this.zztb);
            } else {
                zzcb().zzb(Tracker.this.zztb);
            }
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.zza
        public final void zzc(Activity activity) {
            String str;
            if (this.zztn == 0) {
                if (zzbx().elapsedRealtime() >= this.zztq + Math.max(1000, this.zzto)) {
                    this.zztp = true;
                }
            }
            this.zztn++;
            if (this.zztm) {
                Intent intent = activity.getIntent();
                if (intent != null) {
                    Tracker.this.setCampaignParamsOnNextHit(intent.getData());
                }
                HashMap hashMap = new HashMap();
                hashMap.put("&t", "screenview");
                Tracker tracker = Tracker.this;
                if (Tracker.this.zztd != null) {
                    zzdf zzdf = Tracker.this.zztd;
                    str = activity.getClass().getCanonicalName();
                    String str2 = zzdf.zzaco.get(str);
                    if (str2 != null) {
                        str = str2;
                    }
                } else {
                    str = activity.getClass().getCanonicalName();
                }
                tracker.set("&cd", str);
                if (TextUtils.isEmpty((CharSequence) hashMap.get("&dr"))) {
                    Preconditions.checkNotNull(activity);
                    Intent intent2 = activity.getIntent();
                    String str3 = null;
                    if (intent2 != null) {
                        String stringExtra = intent2.getStringExtra("android.intent.extra.REFERRER_NAME");
                        if (!TextUtils.isEmpty(stringExtra)) {
                            str3 = stringExtra;
                        }
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        hashMap.put("&dr", str3);
                    }
                }
                Tracker.this.send(hashMap);
            }
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.zza
        public final void zzd(Activity activity) {
            this.zztn--;
            this.zztn = Math.max(0, this.zztn);
            if (this.zztn == 0) {
                this.zztq = zzbx().elapsedRealtime();
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzau
    public final void zzag() {
        this.zztb.zzq();
        String zzaj = zzce().zzaj();
        if (zzaj != null) {
            set("&an", zzaj);
        }
        String zzak = zzce().zzak();
        if (zzak != null) {
            set("&av", zzak);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzdf zzdf) {
        zzq("Loading Tracker config values");
        this.zztd = zzdf;
        boolean z = false;
        if (this.zztd.zzaci != null) {
            String str = this.zztd.zzaci;
            set("&tid", str);
            zza("trackingId loaded", str);
        }
        if (this.zztd.zzacj >= 0.0d) {
            String d = Double.toString(this.zztd.zzacj);
            set("&sf", d);
            zza("Sample frequency loaded", d);
        }
        if (this.zztd.zzack >= 0) {
            int i = this.zztd.zzack;
            setSessionTimeout((long) i);
            zza("Session timeout loaded", Integer.valueOf(i));
        }
        if (this.zztd.zzacl != -1) {
            boolean z2 = this.zztd.zzacl == 1;
            enableAutoActivityTracking(z2);
            zza("Auto activity tracking loaded", Boolean.valueOf(z2));
        }
        if (this.zztd.zzacm != -1) {
            boolean z3 = this.zztd.zzacm == 1;
            if (z3) {
                set("&aip", AppEventsConstants.EVENT_PARAM_VALUE_YES);
            }
            zza("Anonymize ip loaded", Boolean.valueOf(z3));
        }
        if (this.zztd.zzacn == 1) {
            z = true;
        }
        enableExceptionReporting(z);
    }

    public void enableExceptionReporting(boolean z) {
        synchronized (this) {
            if ((this.zztc != null) != z) {
                if (z) {
                    this.zztc = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), getContext());
                    Thread.setDefaultUncaughtExceptionHandler(this.zztc);
                    zzq("Uncaught exceptions will be reported to Google Analytics");
                } else {
                    Thread.setDefaultUncaughtExceptionHandler(this.zztc.zzp());
                    zzq("Uncaught exceptions will not be reported to Google Analytics");
                }
            }
        }
    }

    public void setSessionTimeout(long j) {
        this.zztb.setSessionTimeout(j * 1000);
    }

    public void enableAutoActivityTracking(boolean z) {
        this.zztb.enableAutoActivityTracking(z);
    }

    private static String zza(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        if (!(key.startsWith("&") && key.length() >= 2)) {
            return null;
        }
        return entry.getKey().substring(1);
    }

    private static void zza(Map<String, String> map, Map<String, String> map2) {
        Preconditions.checkNotNull(map2);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String zza2 = zza(entry);
                if (zza2 != null) {
                    map2.put(zza2, entry.getValue());
                }
            }
        }
    }

    public void send(Map<String, String> map) {
        long currentTimeMillis = zzbx().currentTimeMillis();
        if (zzcb().getAppOptOut()) {
            zzr("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        boolean isDryRunEnabled = zzcb().isDryRunEnabled();
        HashMap hashMap = new HashMap();
        zza(this.zzsy, hashMap);
        zza(map, hashMap);
        boolean zzb = zzdg.zzb(this.zzsy.get("useSecure"), true);
        Map<String, String> map2 = this.zzsz;
        Preconditions.checkNotNull(hashMap);
        if (map2 != null) {
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                String zza2 = zza(entry);
                if (zza2 != null && !hashMap.containsKey(zza2)) {
                    hashMap.put(zza2, entry.getValue());
                }
            }
        }
        this.zzsz.clear();
        String str = hashMap.get("t");
        if (TextUtils.isEmpty(str)) {
            zzby().zza(hashMap, "Missing hit type parameter");
            return;
        }
        String str2 = hashMap.get("tid");
        if (TextUtils.isEmpty(str2)) {
            zzby().zza(hashMap, "Missing tracking id parameter");
            return;
        }
        boolean z = this.zzsx;
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int parseInt = Integer.parseInt(this.zzsy.get("&a")) + 1;
                if (parseInt >= Integer.MAX_VALUE) {
                    parseInt = 1;
                }
                this.zzsy.put("&a", Integer.toString(parseInt));
            }
        }
        zzca().zza(new zzp(this, hashMap, z, str, currentTimeMillis, isDryRunEnabled, zzb, str2));
    }

    public String get(String str) {
        zzcl();
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.zzsy.containsKey(str)) {
            return this.zzsy.get(str);
        }
        if (str.equals("&ul")) {
            return zzdg.zza(Locale.getDefault());
        }
        if (str.equals("&cid")) {
            return zzcg().zzdr();
        }
        if (str.equals("&sr")) {
            return zzcj().zzel();
        }
        if (str.equals("&aid")) {
            return zzci().zzdf().zzal();
        }
        if (str.equals("&an")) {
            return zzci().zzdf().zzaj();
        }
        if (str.equals("&av")) {
            return zzci().zzdf().zzak();
        }
        if (str.equals("&aiid")) {
            return zzci().zzdf().zzam();
        }
        return null;
    }

    public void set(String str, String str2) {
        Preconditions.checkNotNull(str, "Key should be non-null");
        if (!TextUtils.isEmpty(str)) {
            this.zzsy.put(str, str2);
        }
    }

    public void setSampleRate(double d) {
        set("&sf", Double.toString(d));
    }

    public void setUseSecure(boolean z) {
        set("useSecure", zzdg.zzc(z));
    }

    public void setScreenName(String str) {
        set("&cd", str);
    }

    public void setLocation(String str) {
        set("&dl", str);
    }

    public void setReferrer(String str) {
        set("&dr", str);
    }

    public void setPage(String str) {
        set("&dp", str);
    }

    public void setHostname(String str) {
        set("&dh", str);
    }

    public void setTitle(String str) {
        set("&dt", str);
    }

    public void setLanguage(String str) {
        set("&ul", str);
    }

    public void setEncoding(String str) {
        set("&de", str);
    }

    public void setScreenColors(String str) {
        set("&sd", str);
    }

    public void setScreenResolution(int i, int i2) {
        if (i >= 0 || i2 >= 0) {
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            set("&sr", sb.toString());
            return;
        }
        zzt("Invalid width or height. The values should be non-negative.");
    }

    public void setViewportSize(String str) {
        set("&vp", str);
    }

    public void setClientId(String str) {
        set("&cid", str);
    }

    public void setAppName(String str) {
        set("&an", str);
    }

    public void setAppId(String str) {
        set("&aid", str);
    }

    public void setAppInstallerId(String str) {
        set("&aiid", str);
    }

    public void setAppVersion(String str) {
        set("&av", str);
    }

    public void setAnonymizeIp(boolean z) {
        set("&aip", zzdg.zzc(z));
    }

    public void setCampaignParamsOnNextHit(Uri uri) {
        if (uri != null && !uri.isOpaque()) {
            String queryParameter = uri.getQueryParameter("referrer");
            if (!TextUtils.isEmpty(queryParameter)) {
                String valueOf = String.valueOf(queryParameter);
                Uri parse = Uri.parse(valueOf.length() != 0 ? "http://hostname/?".concat(valueOf) : new String("http://hostname/?"));
                String queryParameter2 = parse.getQueryParameter("utm_id");
                if (queryParameter2 != null) {
                    this.zzsz.put("&ci", queryParameter2);
                }
                String queryParameter3 = parse.getQueryParameter("anid");
                if (queryParameter3 != null) {
                    this.zzsz.put("&anid", queryParameter3);
                }
                String queryParameter4 = parse.getQueryParameter("utm_campaign");
                if (queryParameter4 != null) {
                    this.zzsz.put("&cn", queryParameter4);
                }
                String queryParameter5 = parse.getQueryParameter("utm_content");
                if (queryParameter5 != null) {
                    this.zzsz.put("&cc", queryParameter5);
                }
                String queryParameter6 = parse.getQueryParameter("utm_medium");
                if (queryParameter6 != null) {
                    this.zzsz.put("&cm", queryParameter6);
                }
                String queryParameter7 = parse.getQueryParameter("utm_source");
                if (queryParameter7 != null) {
                    this.zzsz.put("&cs", queryParameter7);
                }
                String queryParameter8 = parse.getQueryParameter("utm_term");
                if (queryParameter8 != null) {
                    this.zzsz.put("&ck", queryParameter8);
                }
                String queryParameter9 = parse.getQueryParameter("dclid");
                if (queryParameter9 != null) {
                    this.zzsz.put("&dclid", queryParameter9);
                }
                String queryParameter10 = parse.getQueryParameter("gclid");
                if (queryParameter10 != null) {
                    this.zzsz.put("&gclid", queryParameter10);
                }
                String queryParameter11 = parse.getQueryParameter("aclid");
                if (queryParameter11 != null) {
                    this.zzsz.put("&aclid", queryParameter11);
                }
            }
        }
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.zzsx = z;
    }
}

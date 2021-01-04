package com.google.android.gms.internal.measurement;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.zza;
import com.google.android.gms.analytics.zzg;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.glxn.qrgen.core.scheme.SchemeUtil;
import org.apache.commons.lang3.time.DateUtils;

/* access modifiers changed from: package-private */
public final class zzbi extends zzau {
    private boolean started;
    private final zzbf zzxl;
    private final zzcr zzxm;
    private final zzcq zzxn;
    private final zzba zzxo;
    private long zzxp = Long.MIN_VALUE;
    private final zzbz zzxq;
    private final zzbz zzxr;
    private final zzdc zzxs;
    private long zzxt;
    private boolean zzxu;

    protected zzbi(zzaw zzaw, zzay zzay) {
        super(zzaw);
        Preconditions.checkNotNull(zzay);
        this.zzxn = new zzcq(zzaw);
        this.zzxl = new zzbf(zzaw);
        this.zzxm = new zzcr(zzaw);
        this.zzxo = new zzba(zzaw);
        this.zzxs = new zzdc(zzbx());
        this.zzxq = new zzbj(this, zzaw);
        this.zzxr = new zzbk(this, zzaw);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzau
    public final void zzag() {
        this.zzxl.zzq();
        this.zzxm.zzq();
        this.zzxo.zzq();
    }

    /* access modifiers changed from: package-private */
    public final void start() {
        zzcl();
        Preconditions.checkState(!this.started, "Analytics backend already started");
        this.started = true;
        zzca().zza(new zzbl(this));
    }

    private final boolean zzx(String str) {
        return Wrappers.packageManager(getContext()).checkCallingOrSelfPermission(str) == 0;
    }

    /* access modifiers changed from: protected */
    public final void zzdg() {
        zzcl();
        zzk.zzaf();
        Context context = zzbw().getContext();
        if (!zzcw.zza(context)) {
            zzt("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!zzcx.zze(context)) {
            zzu("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!CampaignTrackingReceiver.zza(context)) {
            zzt("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        zzcf().zzff();
        if (!zzx("android.permission.ACCESS_NETWORK_STATE")) {
            zzu("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzdq();
        }
        if (!zzx("android.permission.INTERNET")) {
            zzu("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzdq();
        }
        if (zzcx.zze(getContext())) {
            zzq("AnalyticsService registered in the app manifest and enabled");
        } else {
            zzt("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.zzxu && !this.zzxl.isEmpty()) {
            zzdj();
        }
        zzdm();
    }

    /* access modifiers changed from: private */
    public final void zzdh() {
        zzb((zzcd) new zzbm(this));
    }

    /* access modifiers changed from: package-private */
    public final void zzbv() {
        zzk.zzaf();
        this.zzxt = zzbx().currentTimeMillis();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0044 A[LOOP:1: B:15:0x0044->B:23:?, LOOP_START] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0040 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onServiceConnected() {
        /*
        // Method dump skipped, instructions count: 127
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbi.onServiceConnected():void");
    }

    /* access modifiers changed from: private */
    public final void zzdi() {
        try {
            this.zzxl.zzdb();
            zzdm();
        } catch (SQLiteException e) {
            zzd("Failed to delete stale hits", e);
        }
        this.zzxr.zzh(DateUtils.MILLIS_PER_DAY);
    }

    /* access modifiers changed from: protected */
    public final void zzb(zzaz zzaz) {
        zzk.zzaf();
        zzb("Sending first hit to property", zzaz.zzct());
        if (!zzcf().zzfg().zzj(zzbx.zzeh())) {
            String zzfj = zzcf().zzfj();
            if (!TextUtils.isEmpty(zzfj)) {
                zzy zza = zzdg.zza(zzby(), zzfj);
                zzb("Found relevant installation campaign", zza);
                zza(zzaz, zza);
            }
        }
    }

    public final void zzg(long j) {
        zzk.zzaf();
        zzcl();
        if (j < 0) {
            j = 0;
        }
        this.zzxp = j;
        zzdm();
    }

    private final void zzdj() {
        if (!this.zzxu && zzbx.zzdx() && !this.zzxo.isConnected()) {
            if (this.zzxs.zzj(zzcf.zzaaj.get().longValue())) {
                this.zzxs.start();
                zzq("Connecting to service");
                if (this.zzxo.connect()) {
                    zzq("Connected to service");
                    this.zzxs.clear();
                    onServiceConnected();
                }
            }
        }
    }

    public final long zza(zzaz zzaz, boolean z) {
        Preconditions.checkNotNull(zzaz);
        zzcl();
        zzk.zzaf();
        try {
            this.zzxl.beginTransaction();
            zzbf zzbf = this.zzxl;
            long zzcs = zzaz.zzcs();
            String zzbd = zzaz.zzbd();
            Preconditions.checkNotEmpty(zzbd);
            zzbf.zzcl();
            zzk.zzaf();
            int delete = zzbf.getWritableDatabase().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(zzcs), zzbd});
            if (delete > 0) {
                zzbf.zza("Deleted property records", Integer.valueOf(delete));
            }
            long zza = this.zzxl.zza(zzaz.zzcs(), zzaz.zzbd(), zzaz.zzct());
            zzaz.zzb(1 + zza);
            zzbf zzbf2 = this.zzxl;
            Preconditions.checkNotNull(zzaz);
            zzbf2.zzcl();
            zzk.zzaf();
            SQLiteDatabase writableDatabase = zzbf2.getWritableDatabase();
            Map<String, String> zzcw = zzaz.zzcw();
            Preconditions.checkNotNull(zzcw);
            Uri.Builder builder = new Uri.Builder();
            for (Map.Entry<String, String> entry : zzcw.entrySet()) {
                builder.appendQueryParameter(entry.getKey(), entry.getValue());
            }
            String encodedQuery = builder.build().getEncodedQuery();
            if (encodedQuery == null) {
                encodedQuery = "";
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_uid", Long.valueOf(zzaz.zzcs()));
            contentValues.put("cid", zzaz.zzbd());
            contentValues.put("tid", zzaz.zzct());
            contentValues.put("adid", Integer.valueOf(zzaz.zzcu() ? 1 : 0));
            contentValues.put("hits_count", Long.valueOf(zzaz.zzcv()));
            contentValues.put(NativeProtocol.WEB_DIALOG_PARAMS, encodedQuery);
            try {
                if (writableDatabase.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                    zzbf2.zzu("Failed to insert/update a property (got -1)");
                }
            } catch (SQLiteException e) {
                zzbf2.zze("Error storing a property", e);
            }
            this.zzxl.setTransactionSuccessful();
            try {
                this.zzxl.endTransaction();
            } catch (SQLiteException e2) {
                zze("Failed to end transaction", e2);
            }
            return zza;
        } catch (SQLiteException e3) {
            zze("Failed to update Analytics property", e3);
            try {
                this.zzxl.endTransaction();
            } catch (SQLiteException e4) {
                zze("Failed to end transaction", e4);
            }
            return -1;
        } catch (Throwable th) {
            try {
                this.zzxl.endTransaction();
            } catch (SQLiteException e5) {
                zze("Failed to end transaction", e5);
            }
            throw th;
        }
    }

    public final void zza(zzck zzck) {
        Pair<String, Long> zzfm;
        Preconditions.checkNotNull(zzck);
        zzk.zzaf();
        zzcl();
        if (this.zzxu) {
            zzr("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            zza("Delivering hit", zzck);
        }
        if (TextUtils.isEmpty(zzck.zzev()) && (zzfm = zzcf().zzfk().zzfm()) != null) {
            String str = (String) zzfm.first;
            String valueOf = String.valueOf((Long) zzfm.second);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
            sb.append(valueOf);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(str);
            String sb2 = sb.toString();
            HashMap hashMap = new HashMap(zzck.zzcw());
            hashMap.put("_m", sb2);
            zzck = new zzck(this, hashMap, zzck.zzer(), zzck.zzet(), zzck.zzeq(), zzck.zzep(), zzck.zzes());
        }
        zzdj();
        if (this.zzxo.zzb(zzck)) {
            zzr("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        try {
            this.zzxl.zzc(zzck);
            zzdm();
        } catch (SQLiteException e) {
            zze("Delivery failed to save hit to a database", e);
            zzby().zza(zzck, "deliver: failed to insert hit to database");
        }
    }

    public final void zzbr() {
        zzk.zzaf();
        zzcl();
        zzq("Delete all hits from local store");
        try {
            zzbf zzbf = this.zzxl;
            zzk.zzaf();
            zzbf.zzcl();
            zzbf.getWritableDatabase().delete("hits2", null, null);
            zzbf zzbf2 = this.zzxl;
            zzk.zzaf();
            zzbf2.zzcl();
            zzbf2.getWritableDatabase().delete("properties", null, null);
            zzdm();
        } catch (SQLiteException e) {
            zzd("Failed to delete hits from store", e);
        }
        zzdj();
        if (this.zzxo.zzcx()) {
            zzq("Device service unavailable. Can't clear hits stored on the device service.");
        }
    }

    private final boolean zzdk() {
        zzk.zzaf();
        zzcl();
        zzq("Dispatching a batch of local hits");
        boolean z = !this.zzxo.isConnected();
        boolean z2 = !this.zzxm.zzfb();
        if (!z || !z2) {
            long max = (long) Math.max(zzbx.zzeb(), zzbx.zzec());
            ArrayList arrayList = new ArrayList();
            long j = 0;
            while (true) {
                try {
                    this.zzxl.beginTransaction();
                    arrayList.clear();
                    try {
                        List<zzck> zzd = this.zzxl.zzd(max);
                        if (zzd.isEmpty()) {
                            zzq("Store is empty, nothing to dispatch");
                            zzdo();
                            try {
                                this.zzxl.setTransactionSuccessful();
                                this.zzxl.endTransaction();
                                return false;
                            } catch (SQLiteException e) {
                                zze("Failed to commit local dispatch transaction", e);
                                zzdo();
                                return false;
                            }
                        } else {
                            zza("Hits loaded from store. count", Integer.valueOf(zzd.size()));
                            for (zzck zzck : zzd) {
                                if (zzck.zzeq() == j) {
                                    zzd("Database contains successfully uploaded hit", Long.valueOf(j), Integer.valueOf(zzd.size()));
                                    zzdo();
                                    try {
                                        return false;
                                    } catch (SQLiteException e2) {
                                        zze("Failed to commit local dispatch transaction", e2);
                                        zzdo();
                                        return false;
                                    }
                                }
                            }
                            if (this.zzxo.isConnected()) {
                                zzq("Service connected, sending hits to the service");
                                while (!zzd.isEmpty()) {
                                    zzck zzck2 = zzd.get(0);
                                    if (!this.zzxo.zzb(zzck2)) {
                                        break;
                                    }
                                    j = Math.max(j, zzck2.zzeq());
                                    zzd.remove(zzck2);
                                    zzb("Hit sent do device AnalyticsService for delivery", zzck2);
                                    try {
                                        this.zzxl.zze(zzck2.zzeq());
                                        arrayList.add(Long.valueOf(zzck2.zzeq()));
                                    } catch (SQLiteException e3) {
                                        zze("Failed to remove hit that was send for delivery", e3);
                                        zzdo();
                                        try {
                                            this.zzxl.setTransactionSuccessful();
                                            this.zzxl.endTransaction();
                                            return false;
                                        } catch (SQLiteException e4) {
                                            zze("Failed to commit local dispatch transaction", e4);
                                            zzdo();
                                            return false;
                                        }
                                    }
                                }
                            }
                            if (this.zzxm.zzfb()) {
                                List<Long> zzb = this.zzxm.zzb(zzd);
                                for (Long l : zzb) {
                                    j = Math.max(j, l.longValue());
                                }
                                try {
                                    this.zzxl.zza(zzb);
                                    arrayList.addAll(zzb);
                                } catch (SQLiteException e5) {
                                    zze("Failed to remove successfully uploaded hits", e5);
                                    zzdo();
                                    try {
                                        this.zzxl.setTransactionSuccessful();
                                        this.zzxl.endTransaction();
                                        return false;
                                    } catch (SQLiteException e6) {
                                        zze("Failed to commit local dispatch transaction", e6);
                                        zzdo();
                                        return false;
                                    }
                                }
                            }
                            if (arrayList.isEmpty()) {
                                try {
                                    this.zzxl.setTransactionSuccessful();
                                    this.zzxl.endTransaction();
                                    return false;
                                } catch (SQLiteException e7) {
                                    zze("Failed to commit local dispatch transaction", e7);
                                    zzdo();
                                    return false;
                                }
                            } else {
                                try {
                                    this.zzxl.setTransactionSuccessful();
                                    this.zzxl.endTransaction();
                                } catch (SQLiteException e8) {
                                    zze("Failed to commit local dispatch transaction", e8);
                                    zzdo();
                                    return false;
                                }
                            }
                        }
                    } catch (SQLiteException e9) {
                        zzd("Failed to read hits from persisted store", e9);
                        zzdo();
                        try {
                            this.zzxl.setTransactionSuccessful();
                            this.zzxl.endTransaction();
                            return false;
                        } catch (SQLiteException e10) {
                            zze("Failed to commit local dispatch transaction", e10);
                            zzdo();
                            return false;
                        }
                    }
                } finally {
                    try {
                        this.zzxl.setTransactionSuccessful();
                        this.zzxl.endTransaction();
                    } catch (SQLiteException e11) {
                        zze("Failed to commit local dispatch transaction", e11);
                        zzdo();
                        return false;
                    }
                }
            }
        } else {
            zzq("No network or service available. Will retry later");
            return false;
        }
    }

    public final void zzb(zzcd zzcd) {
        long j = this.zzxt;
        zzk.zzaf();
        zzcl();
        long zzfh = zzcf().zzfh();
        zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(zzfh != 0 ? Math.abs(zzbx().currentTimeMillis() - zzfh) : -1));
        zzdj();
        try {
            zzdk();
            zzcf().zzfi();
            zzdm();
            if (zzcd != null) {
                zzcd.zza(null);
            }
            if (this.zzxt != j) {
                this.zzxn.zzfa();
            }
        } catch (Exception e) {
            zze("Local dispatch failed", e);
            zzcf().zzfi();
            zzdm();
            if (zzcd != null) {
                zzcd.zza(e);
            }
        }
    }

    public final void zzdl() {
        zzk.zzaf();
        zzcl();
        zzr("Sync dispatching local hits");
        long j = this.zzxt;
        zzdj();
        try {
            zzdk();
            zzcf().zzfi();
            zzdm();
            if (this.zzxt != j) {
                this.zzxn.zzfa();
            }
        } catch (Exception e) {
            zze("Sync local dispatch failed", e);
            zzdm();
        }
    }

    private final long zzdc() {
        zzk.zzaf();
        zzcl();
        try {
            return this.zzxl.zzdc();
        } catch (SQLiteException e) {
            zze("Failed to get min/max hit times from local store", e);
            return 0;
        }
    }

    public final void zzdm() {
        long j;
        zzk.zzaf();
        zzcl();
        boolean z = true;
        if (!(!this.zzxu && zzdp() > 0)) {
            this.zzxn.unregister();
            zzdo();
        } else if (this.zzxl.isEmpty()) {
            this.zzxn.unregister();
            zzdo();
        } else {
            if (!zzcf.zzaae.get().booleanValue()) {
                this.zzxn.zzey();
                z = this.zzxn.isConnected();
            }
            if (z) {
                zzdn();
                long zzdp = zzdp();
                long zzfh = zzcf().zzfh();
                if (zzfh != 0) {
                    j = zzdp - Math.abs(zzbx().currentTimeMillis() - zzfh);
                    if (j <= 0) {
                        j = Math.min(zzbx.zzdz(), zzdp);
                    }
                } else {
                    j = Math.min(zzbx.zzdz(), zzdp);
                }
                zza("Dispatch scheduled (ms)", Long.valueOf(j));
                if (this.zzxq.zzej()) {
                    this.zzxq.zzi(Math.max(1L, j + this.zzxq.zzei()));
                } else {
                    this.zzxq.zzh(j);
                }
            } else {
                zzdo();
                zzdn();
            }
        }
    }

    private final void zzdn() {
        zzcc zzcd = zzcd();
        if (zzcd.zzem() && !zzcd.zzej()) {
            long zzdc = zzdc();
            if (zzdc != 0 && Math.abs(zzbx().currentTimeMillis() - zzdc) <= zzcf.zzzi.get().longValue()) {
                zza("Dispatch alarm scheduled (ms)", Long.valueOf(zzbx.zzea()));
                zzcd.zzen();
            }
        }
    }

    private final void zzdo() {
        if (this.zzxq.zzej()) {
            zzq("All hits dispatched or no network/service. Going to power save mode");
        }
        this.zzxq.cancel();
        zzcc zzcd = zzcd();
        if (zzcd.zzej()) {
            zzcd.cancel();
        }
    }

    private final long zzdp() {
        if (this.zzxp != Long.MIN_VALUE) {
            return this.zzxp;
        }
        long longValue = zzcf.zzzd.get().longValue();
        zzdh zzce = zzce();
        zzce.zzcl();
        if (!zzce.zzacr) {
            return longValue;
        }
        zzdh zzce2 = zzce();
        zzce2.zzcl();
        return ((long) zzce2.zzaat) * 1000;
    }

    public final void zzy(String str) {
        Preconditions.checkNotEmpty(str);
        zzk.zzaf();
        zzy zza = zzdg.zza(zzby(), str);
        if (zza == null) {
            zzd("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String zzfj = zzcf().zzfj();
        if (str.equals(zzfj)) {
            zzt("Ignoring duplicate install campaign");
        } else if (!TextUtils.isEmpty(zzfj)) {
            zzd("Ignoring multiple install campaigns. original, new", zzfj, str);
        } else {
            zzcf().zzac(str);
            if (zzcf().zzfg().zzj(zzbx.zzeh())) {
                zzd("Campaign received too late, ignoring", zza);
                return;
            }
            zzb("Received installation campaign", zza);
            for (zzaz zzaz : this.zzxl.zzf(0)) {
                zza(zzaz, zza);
            }
        }
    }

    private final void zza(zzaz zzaz, zzy zzy) {
        Preconditions.checkNotNull(zzaz);
        Preconditions.checkNotNull(zzy);
        zza zza = new zza(zzbw());
        zza.zza(zzaz.zzct());
        zza.enableAdvertisingIdCollection(zzaz.zzcu());
        zzg zzm = zza.zzm();
        zzag zzag = (zzag) zzm.zzb(zzag.class);
        zzag.zzl(ShareConstants.WEB_DIALOG_PARAM_DATA);
        zzag.zzb(true);
        zzm.zza(zzy);
        zzab zzab = (zzab) zzm.zzb(zzab.class);
        zzx zzx = (zzx) zzm.zzb(zzx.class);
        for (Map.Entry<String, String> entry : zzaz.zzcw().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("an".equals(key)) {
                zzx.setAppName(value);
            } else if ("av".equals(key)) {
                zzx.setAppVersion(value);
            } else if ("aid".equals(key)) {
                zzx.setAppId(value);
            } else if ("aiid".equals(key)) {
                zzx.setAppInstallerId(value);
            } else if ("uid".equals(key)) {
                zzag.setUserId(value);
            } else {
                zzab.set(key, value);
            }
        }
        zzb("Sending installation campaign to", zzaz.zzct(), zzy);
        zzm.zza(zzcf().zzff());
        zzm.zzw();
    }

    private final void zzdq() {
        zzcl();
        zzk.zzaf();
        this.zzxu = true;
        this.zzxo.disconnect();
        zzdm();
    }
}

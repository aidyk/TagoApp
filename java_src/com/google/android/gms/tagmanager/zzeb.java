package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.util.Collections;
import java.util.List;
import org.apache.commons.lang3.time.DateUtils;

public final class zzeb implements zzcb {
    private static final String zzxf = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time");
    private final zzed zzbea;
    private volatile zzbe zzbeb;
    private final zzcc zzbec;
    private final String zzbed;
    private long zzbee;
    private final int zzbef;
    private final Context zzri;
    private Clock zzrz;

    zzeb(zzcc zzcc, Context context) {
        this(zzcc, context, "gtm_urls.db", 2000);
    }

    private zzeb(zzcc zzcc, Context context, String str, int i) {
        this.zzri = context.getApplicationContext();
        this.zzbed = str;
        this.zzbec = zzcc;
        this.zzrz = DefaultClock.getInstance();
        this.zzbea = new zzed(this, this.zzri, this.zzbed);
        this.zzbeb = new zzfu(this.zzri, new zzec(this));
        this.zzbee = 0;
        this.zzbef = 2000;
    }

    @Override // com.google.android.gms.tagmanager.zzcb
    public final void zzb(long j, String str) {
        long currentTimeMillis = this.zzrz.currentTimeMillis();
        if (currentTimeMillis > this.zzbee + DateUtils.MILLIS_PER_DAY) {
            this.zzbee = currentTimeMillis;
            SQLiteDatabase zzdn = zzdn("Error opening database for deleteStaleHits.");
            if (zzdn != null) {
                zzdn.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(this.zzrz.currentTimeMillis() - 2592000000L)});
                this.zzbec.zzo(zzpj() == 0);
            }
        }
        int zzpj = (zzpj() - this.zzbef) + 1;
        if (zzpj > 0) {
            List<String> zzaa = zzaa(zzpj);
            int size = zzaa.size();
            StringBuilder sb = new StringBuilder(51);
            sb.append("Store full, deleting ");
            sb.append(size);
            sb.append(" hits to make room.");
            zzdi.v(sb.toString());
            zza((String[]) zzaa.toArray(new String[0]));
        }
        SQLiteDatabase zzdn2 = zzdn("Error opening database for putHit");
        if (zzdn2 != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_time", Long.valueOf(j));
            contentValues.put("hit_url", str);
            contentValues.put("hit_first_send_time", (Integer) 0);
            try {
                zzdn2.insert("gtm_hits", null, contentValues);
                this.zzbec.zzo(false);
            } catch (SQLiteException unused) {
                zzdi.zzab("Error storing hit");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0078 A[Catch:{ all -> 0x0065 }] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x007d A[Catch:{ all -> 0x0065 }] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.util.List<java.lang.String> zzaa(int r15) {
        /*
        // Method dump skipped, instructions count: 145
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzeb.zzaa(int):java.util.List");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0149, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x014a, code lost:
        r12 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x014d, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x014e, code lost:
        r15 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0164, code lost:
        r0 = "Error in peekHits fetching hitIds: ".concat(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0169, code lost:
        r0 = new java.lang.String("Error in peekHits fetching hitIds: ");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x0173, code lost:
        r12.close();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0104 A[Catch:{ all -> 0x013e }] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0109 A[Catch:{ all -> 0x013e }] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x011f A[Catch:{ all -> 0x013e }] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x013a  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0141  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0149 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:6:0x0040] */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x0164 A[Catch:{ all -> 0x0151 }] */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0169 A[Catch:{ all -> 0x0151 }] */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0173  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x0179  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.util.List<com.google.android.gms.tagmanager.zzbw> zzab(int r18) {
        /*
        // Method dump skipped, instructions count: 381
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzeb.zzab(int):java.util.List");
    }

    private final void zza(String[] strArr) {
        SQLiteDatabase zzdn;
        if (strArr != null && strArr.length != 0 && (zzdn = zzdn("Error opening database for deleteHits.")) != null) {
            boolean z = true;
            try {
                zzdn.delete("gtm_hits", String.format("HIT_ID in (%s)", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
                zzcc zzcc = this.zzbec;
                if (zzpj() != 0) {
                    z = false;
                }
                zzcc.zzo(z);
            } catch (SQLiteException unused) {
                zzdi.zzab("Error deleting hits");
            }
        }
    }

    /* access modifiers changed from: public */
    private final void zze(long j) {
        zza(new String[]{String.valueOf(j)});
    }

    /* access modifiers changed from: public */
    private final void zze(long j, long j2) {
        SQLiteDatabase zzdn = zzdn("Error opening database for getNumStoredHits.");
        if (zzdn != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_first_send_time", Long.valueOf(j2));
            try {
                zzdn.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j)});
            } catch (SQLiteException unused) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("Error setting HIT_FIRST_DISPATCH_TIME for hitId: ");
                sb.append(j);
                zzdi.zzab(sb.toString());
                zze(j);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0036  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzpj() {
        /*
            r4 = this;
            java.lang.String r0 = "Error opening database for getNumStoredHits."
            android.database.sqlite.SQLiteDatabase r0 = r4.zzdn(r0)
            r1 = 0
            if (r0 != 0) goto L_0x000a
            return r1
        L_0x000a:
            r2 = 0
            java.lang.String r3 = "SELECT COUNT(*) from gtm_hits"
            android.database.Cursor r0 = r0.rawQuery(r3, r2)     // Catch:{ SQLiteException -> 0x0029 }
            boolean r2 = r0.moveToFirst()     // Catch:{ SQLiteException -> 0x0025, all -> 0x0022 }
            if (r2 == 0) goto L_0x001c
            long r2 = r0.getLong(r1)     // Catch:{ SQLiteException -> 0x0025, all -> 0x0022 }
            int r1 = (int) r2
        L_0x001c:
            if (r0 == 0) goto L_0x0033
            r0.close()
            goto L_0x0033
        L_0x0022:
            r1 = move-exception
            r2 = r0
            goto L_0x0034
        L_0x0025:
            r2 = r0
            goto L_0x0029
        L_0x0027:
            r1 = move-exception
            goto L_0x0034
        L_0x0029:
            java.lang.String r0 = "Error getting numStoredHits"
            com.google.android.gms.tagmanager.zzdi.zzab(r0)     // Catch:{ all -> 0x0027 }
            if (r2 == 0) goto L_0x0033
            r2.close()
        L_0x0033:
            return r1
        L_0x0034:
            if (r2 == 0) goto L_0x0039
            r2.close()
        L_0x0039:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzeb.zzpj():int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzpk() {
        /*
            r10 = this;
            java.lang.String r0 = "Error opening database for getNumStoredHits."
            android.database.sqlite.SQLiteDatabase r1 = r10.zzdn(r0)
            r0 = 0
            if (r1 != 0) goto L_0x000a
            return r0
        L_0x000a:
            r9 = 0
            java.lang.String r2 = "gtm_hits"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x0035 }
            java.lang.String r4 = "hit_id"
            r3[r0] = r4     // Catch:{ SQLiteException -> 0x0035 }
            r4 = 1
            java.lang.String r5 = "hit_first_send_time"
            r3[r4] = r5     // Catch:{ SQLiteException -> 0x0035 }
            java.lang.String r4 = "hit_first_send_time=0"
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x0035 }
            int r2 = r1.getCount()     // Catch:{ SQLiteException -> 0x0031, all -> 0x002e }
            if (r1 == 0) goto L_0x002c
            r1.close()
        L_0x002c:
            r0 = r2
            goto L_0x003f
        L_0x002e:
            r0 = move-exception
            r9 = r1
            goto L_0x0040
        L_0x0031:
            r9 = r1
            goto L_0x0035
        L_0x0033:
            r0 = move-exception
            goto L_0x0040
        L_0x0035:
            java.lang.String r1 = "Error getting num untried hits"
            com.google.android.gms.tagmanager.zzdi.zzab(r1)     // Catch:{ all -> 0x0033 }
            if (r9 == 0) goto L_0x003f
            r9.close()
        L_0x003f:
            return r0
        L_0x0040:
            if (r9 == 0) goto L_0x0045
            r9.close()
        L_0x0045:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzeb.zzpk():int");
    }

    @Override // com.google.android.gms.tagmanager.zzcb
    public final void dispatch() {
        zzdi.v("GTM Dispatch running...");
        if (this.zzbeb.zzom()) {
            List<zzbw> zzab = zzab(40);
            if (zzab.isEmpty()) {
                zzdi.v("...nothing to dispatch");
                this.zzbec.zzo(true);
                return;
            }
            this.zzbeb.zze(zzab);
            if (zzpk() > 0) {
                zzfn.zzqe().dispatch();
            }
        }
    }

    private final SQLiteDatabase zzdn(String str) {
        try {
            return this.zzbea.getWritableDatabase();
        } catch (SQLiteException unused) {
            zzdi.zzab(str);
            return null;
        }
    }
}

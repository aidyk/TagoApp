package com.google.android.gms.internal.measurement;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.HttpUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.time.DateUtils;

/* access modifiers changed from: package-private */
public final class zzbf extends zzau implements Closeable {
    private static final String zzxf = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    private static final String zzxg = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");
    private final zzbg zzxh;
    private final zzdc zzxi = new zzdc(zzbx());
    private final zzdc zzxj = new zzdc(zzbx());

    zzbf(zzaw zzaw) {
        super(zzaw);
        this.zzxh = new zzbg(this, zzaw.getContext(), "google_analytics_v4.db");
    }

    /* access modifiers changed from: private */
    public static String zzdd() {
        return "google_analytics_v4.db";
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzau
    public final void zzag() {
    }

    public final void beginTransaction() {
        zzcl();
        getWritableDatabase().beginTransaction();
    }

    public final void setTransactionSuccessful() {
        zzcl();
        getWritableDatabase().setTransactionSuccessful();
    }

    public final void endTransaction() {
        zzcl();
        getWritableDatabase().endTransaction();
    }

    public final void zzc(zzck zzck) {
        String str;
        Preconditions.checkNotNull(zzck);
        zzk.zzaf();
        zzcl();
        Preconditions.checkNotNull(zzck);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : zzck.zzcw().entrySet()) {
            String key = entry.getKey();
            if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key)) {
                builder.appendQueryParameter(key, entry.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        if (encodedQuery == null) {
            encodedQuery = "";
        }
        if (encodedQuery.length() > 8192) {
            zzby().zza(zzck, "Hit length exceeds the maximum allowed size");
            return;
        }
        int intValue = zzcf.zzza.get().intValue();
        long zzcv = zzcv();
        if (zzcv > ((long) (intValue - 1))) {
            List<Long> zzc = zzc((zzcv - ((long) intValue)) + 1);
            zzd("Store full, deleting hits to make room, count", Integer.valueOf(zzc.size()));
            zza(zzc);
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", encodedQuery);
        contentValues.put("hit_time", Long.valueOf(zzck.zzer()));
        contentValues.put("hit_app_id", Integer.valueOf(zzck.zzep()));
        if (zzck.zzet()) {
            str = zzbx.zzed();
        } else {
            str = zzbx.zzee();
        }
        contentValues.put("hit_url", str);
        try {
            long insert = writableDatabase.insert("hits2", null, contentValues);
            if (insert == -1) {
                zzu("Failed to insert a hit (got -1)");
            } else {
                zzb("Hit saved to database. db-id, hit", Long.valueOf(insert), zzck);
            }
        } catch (SQLiteException e) {
            zze("Error storing a hit", e);
        }
    }

    private final long zzcv() {
        zzk.zzaf();
        zzcl();
        return zza("SELECT COUNT(*) FROM hits2", (String[]) null);
    }

    /* access modifiers changed from: package-private */
    public final boolean isEmpty() {
        return zzcv() == 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0077  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.util.List<java.lang.Long> zzc(long r14) {
        /*
        // Method dump skipped, instructions count: 123
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbf.zzc(long):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.measurement.zzck> zzd(long r22) {
        /*
        // Method dump skipped, instructions count: 180
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbf.zzd(long):java.util.List");
    }

    public final void zza(List<Long> list) {
        Preconditions.checkNotNull(list);
        zzk.zzaf();
        zzcl();
        if (!list.isEmpty()) {
            StringBuilder sb = new StringBuilder("hit_id");
            sb.append(" in (");
            for (int i = 0; i < list.size(); i++) {
                Long l = list.get(i);
                if (l == null || l.longValue() == 0) {
                    throw new SQLiteException("Invalid hit id");
                }
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(l);
            }
            sb.append(")");
            String sb2 = sb.toString();
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                zza("Deleting dispatched hits. count", Integer.valueOf(list.size()));
                int delete = writableDatabase.delete("hits2", sb2, null);
                if (delete != list.size()) {
                    zzb("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(delete), sb2);
                }
            } catch (SQLiteException e) {
                zze("Error deleting hits", e);
                throw e;
            }
        }
    }

    public final void zze(long j) {
        zzk.zzaf();
        zzcl();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        zza("Deleting hit, id", Long.valueOf(j));
        zza(arrayList);
    }

    public final int zzdb() {
        zzk.zzaf();
        zzcl();
        if (!this.zzxi.zzj(DateUtils.MILLIS_PER_DAY)) {
            return 0;
        }
        this.zzxi.start();
        zzq("Deleting stale hits (if any)");
        int delete = getWritableDatabase().delete("hits2", "hit_time < ?", new String[]{Long.toString(zzbx().currentTimeMillis() - 2592000000L)});
        zza("Deleted stale hits, count", Integer.valueOf(delete));
        return delete;
    }

    public final long zzdc() {
        zzk.zzaf();
        zzcl();
        return zza(zzxg, (String[]) null, 0);
    }

    public final long zza(long j, String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzcl();
        zzk.zzaf();
        return zza("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2}, 0);
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x00cb  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.measurement.zzaz> zzf(long r26) {
        /*
        // Method dump skipped, instructions count: 207
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbf.zzf(long):java.util.List");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.zzxh.close();
        } catch (SQLiteException e) {
            zze("Sql error closing database", e);
        } catch (IllegalStateException e2) {
            zze("Error closing database", e2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0035  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final long zza(java.lang.String r4, java.lang.String[] r5) {
        /*
            r3 = this;
            android.database.sqlite.SQLiteDatabase r5 = r3.getWritableDatabase()
            r0 = 0
            android.database.Cursor r5 = r5.rawQuery(r4, r0)     // Catch:{ SQLiteException -> 0x0029, all -> 0x0026 }
            boolean r0 = r5.moveToFirst()     // Catch:{ SQLiteException -> 0x0024 }
            if (r0 == 0) goto L_0x001a
            r0 = 0
            long r0 = r5.getLong(r0)     // Catch:{ SQLiteException -> 0x0024 }
            if (r5 == 0) goto L_0x0019
            r5.close()
        L_0x0019:
            return r0
        L_0x001a:
            android.database.sqlite.SQLiteException r0 = new android.database.sqlite.SQLiteException
            java.lang.String r1 = "Database returned empty set"
            r0.<init>(r1)
            throw r0
        L_0x0022:
            r4 = move-exception
            goto L_0x0033
        L_0x0024:
            r0 = move-exception
            goto L_0x002d
        L_0x0026:
            r4 = move-exception
            r5 = r0
            goto L_0x0033
        L_0x0029:
            r5 = move-exception
            r2 = r0
            r0 = r5
            r5 = r2
        L_0x002d:
            java.lang.String r1 = "Database error"
            r3.zzd(r1, r4, r0)     // Catch:{ all -> 0x0022 }
            throw r0     // Catch:{ all -> 0x0022 }
        L_0x0033:
            if (r5 == 0) goto L_0x0038
            r5.close()
        L_0x0038:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbf.zza(java.lang.String, java.lang.String[]):long");
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0033  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final long zza(java.lang.String r1, java.lang.String[] r2, long r3) {
        /*
            r0 = this;
            android.database.sqlite.SQLiteDatabase r3 = r0.getWritableDatabase()
            r4 = 0
            android.database.Cursor r2 = r3.rawQuery(r1, r2)     // Catch:{ SQLiteException -> 0x002a }
            boolean r3 = r2.moveToFirst()     // Catch:{ SQLiteException -> 0x0025, all -> 0x0022 }
            if (r3 == 0) goto L_0x001a
            r3 = 0
            long r3 = r2.getLong(r3)     // Catch:{ SQLiteException -> 0x0025, all -> 0x0022 }
            if (r2 == 0) goto L_0x0019
            r2.close()
        L_0x0019:
            return r3
        L_0x001a:
            if (r2 == 0) goto L_0x001f
            r2.close()
        L_0x001f:
            r1 = 0
            return r1
        L_0x0022:
            r1 = move-exception
            r4 = r2
            goto L_0x0031
        L_0x0025:
            r3 = move-exception
            r4 = r2
            goto L_0x002b
        L_0x0028:
            r1 = move-exception
            goto L_0x0031
        L_0x002a:
            r3 = move-exception
        L_0x002b:
            java.lang.String r2 = "Database error"
            r0.zzd(r2, r1, r3)     // Catch:{ all -> 0x0028 }
            throw r3     // Catch:{ all -> 0x0028 }
        L_0x0031:
            if (r4 == 0) goto L_0x0036
            r4.close()
        L_0x0036:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbf.zza(java.lang.String, java.lang.String[], long):long");
    }

    @VisibleForTesting
    private final Map<String, String> zzv(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            if (!str.startsWith("?")) {
                String valueOf = String.valueOf(str);
                str = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            return HttpUtils.parse(new URI(str), "UTF-8");
        } catch (URISyntaxException e) {
            zze("Error parsing hit parameters", e);
            return new HashMap(0);
        }
    }

    @VisibleForTesting
    private final Map<String, String> zzw(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            String valueOf = String.valueOf(str);
            return HttpUtils.parse(new URI(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")), "UTF-8");
        } catch (URISyntaxException e) {
            zze("Error parsing property parameters", e);
            return new HashMap(0);
        }
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzxh.getWritableDatabase();
        } catch (SQLiteException e) {
            zzd("Error opening database", e);
            throw e;
        }
    }
}

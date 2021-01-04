package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.time.DateUtils;

/* access modifiers changed from: package-private */
@VisibleForTesting
public final class zzbg extends SQLiteOpenHelper {
    private final /* synthetic */ zzbf zzxk;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzbg(zzbf zzbf, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.zzxk = zzbf;
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public final SQLiteDatabase getWritableDatabase() {
        if (zzbf.zza(this.zzxk).zzj(DateUtils.MILLIS_PER_HOUR)) {
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException unused) {
                zzbf.zza(this.zzxk).start();
                this.zzxk.zzu("Opening the database failed, dropping the table and recreating it");
                this.zzxk.getContext().getDatabasePath(zzbf.zzb(this.zzxk)).delete();
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    zzbf.zza(this.zzxk).clear();
                    return writableDatabase;
                } catch (SQLiteException e) {
                    this.zzxk.zze("Failed to open freshly created database", e);
                    throw e;
                }
            }
        } else {
            throw new SQLiteException("Database open failed");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x003d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean zza(android.database.sqlite.SQLiteDatabase r12, java.lang.String r13) {
        /*
            r11 = this;
            r0 = 0
            r1 = 0
            java.lang.String r3 = "SQLITE_MASTER"
            r2 = 1
            java.lang.String[] r4 = new java.lang.String[r2]     // Catch:{ SQLiteException -> 0x002d }
            java.lang.String r5 = "name"
            r4[r0] = r5     // Catch:{ SQLiteException -> 0x002d }
            java.lang.String r5 = "name=?"
            java.lang.String[] r6 = new java.lang.String[r2]     // Catch:{ SQLiteException -> 0x002d }
            r6[r0] = r13     // Catch:{ SQLiteException -> 0x002d }
            r7 = 0
            r8 = 0
            r9 = 0
            r2 = r12
            android.database.Cursor r12 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch:{ SQLiteException -> 0x002d }
            boolean r1 = r12.moveToFirst()     // Catch:{ SQLiteException -> 0x0026, all -> 0x0023 }
            if (r12 == 0) goto L_0x0022
            r12.close()
        L_0x0022:
            return r1
        L_0x0023:
            r13 = move-exception
            r1 = r12
            goto L_0x003b
        L_0x0026:
            r1 = move-exception
            r10 = r1
            r1 = r12
            r12 = r10
            goto L_0x002e
        L_0x002b:
            r13 = move-exception
            goto L_0x003b
        L_0x002d:
            r12 = move-exception
        L_0x002e:
            com.google.android.gms.internal.measurement.zzbf r2 = r11.zzxk     // Catch:{ all -> 0x002b }
            java.lang.String r3 = "Error querying for table"
            r2.zzc(r3, r13, r12)     // Catch:{ all -> 0x002b }
            if (r1 == 0) goto L_0x003a
            r1.close()
        L_0x003a:
            return r0
        L_0x003b:
            if (r1 == 0) goto L_0x0040
            r1.close()
        L_0x0040:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbg.zza(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    private static Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
        String[] columnNames;
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
        sb.append("SELECT * FROM ");
        sb.append(str);
        sb.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        try {
            for (String str2 : rawQuery.getColumnNames()) {
                hashSet.add(str2);
            }
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (Build.VERSION.SDK_INT < 15) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
            try {
                rawQuery.moveToFirst();
            } finally {
                rawQuery.close();
            }
        }
        if (!zza(sQLiteDatabase, "hits2")) {
            sQLiteDatabase.execSQL(zzbf.zzde());
        } else {
            Set<String> zzb = zzb(sQLiteDatabase, "hits2");
            String[] strArr = {"hit_id", "hit_string", "hit_time", "hit_url"};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                if (!zzb.remove(str)) {
                    String valueOf = String.valueOf(str);
                    throw new SQLiteException(valueOf.length() != 0 ? "Database hits2 is missing required column: ".concat(valueOf) : new String("Database hits2 is missing required column: "));
                }
            }
            boolean z = !zzb.remove("hit_app_id");
            if (!zzb.isEmpty()) {
                throw new SQLiteException("Database hits2 has extra columns");
            } else if (z) {
                sQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER");
            }
        }
        if (!zza(sQLiteDatabase, "properties")) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;");
            return;
        }
        Set<String> zzb2 = zzb(sQLiteDatabase, "properties");
        String[] strArr2 = {"app_uid", "cid", "tid", NativeProtocol.WEB_DIALOG_PARAMS, "adid", "hits_count"};
        for (int i2 = 0; i2 < 6; i2++) {
            String str2 = strArr2[i2];
            if (!zzb2.remove(str2)) {
                String valueOf2 = String.valueOf(str2);
                throw new SQLiteException(valueOf2.length() != 0 ? "Database properties is missing required column: ".concat(valueOf2) : new String("Database properties is missing required column: "));
            }
        }
        if (!zzb2.isEmpty()) {
            throw new SQLiteException("Database properties table has extra columns");
        }
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        if (zzce.version() >= 9) {
            File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }
}

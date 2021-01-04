package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashSet;

/* access modifiers changed from: package-private */
@VisibleForTesting
public final class zzax extends SQLiteOpenHelper {
    private final /* synthetic */ zzat zzbca;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzax(zzat zzat, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.zzbca = zzat;
    }

    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0036 A[Catch:{ all -> 0x0028 }] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003b A[Catch:{ all -> 0x0028 }] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0045  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x004b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean zza(java.lang.String r10, android.database.sqlite.SQLiteDatabase r11) {
        /*
            r0 = 0
            r1 = 0
            java.lang.String r3 = "SQLITE_MASTER"
            r2 = 1
            java.lang.String[] r4 = new java.lang.String[r2]     // Catch:{ SQLiteException -> 0x002a }
            java.lang.String r5 = "name"
            r4[r0] = r5     // Catch:{ SQLiteException -> 0x002a }
            java.lang.String r5 = "name=?"
            java.lang.String[] r6 = new java.lang.String[r2]     // Catch:{ SQLiteException -> 0x002a }
            r6[r0] = r10     // Catch:{ SQLiteException -> 0x002a }
            r7 = 0
            r8 = 0
            r9 = 0
            r2 = r11
            android.database.Cursor r11 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch:{ SQLiteException -> 0x002a }
            boolean r1 = r11.moveToFirst()     // Catch:{ SQLiteException -> 0x0026, all -> 0x0023 }
            if (r11 == 0) goto L_0x0022
            r11.close()
        L_0x0022:
            return r1
        L_0x0023:
            r10 = move-exception
            r1 = r11
            goto L_0x0049
        L_0x0026:
            r1 = r11
            goto L_0x002a
        L_0x0028:
            r10 = move-exception
            goto L_0x0049
        L_0x002a:
            java.lang.String r11 = "Error querying for table "
            java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch:{ all -> 0x0028 }
            int r2 = r10.length()     // Catch:{ all -> 0x0028 }
            if (r2 == 0) goto L_0x003b
            java.lang.String r10 = r11.concat(r10)     // Catch:{ all -> 0x0028 }
            goto L_0x0040
        L_0x003b:
            java.lang.String r10 = new java.lang.String     // Catch:{ all -> 0x0028 }
            r10.<init>(r11)     // Catch:{ all -> 0x0028 }
        L_0x0040:
            com.google.android.gms.tagmanager.zzdi.zzab(r10)     // Catch:{ all -> 0x0028 }
            if (r1 == 0) goto L_0x0048
            r1.close()
        L_0x0048:
            return r0
        L_0x0049:
            if (r1 == 0) goto L_0x004e
            r1.close()
        L_0x004e:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzax.zza(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    public final SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = super.getWritableDatabase();
        } catch (SQLiteException unused) {
            this.zzbca.zzri.getDatabasePath("google_tagmanager.db").delete();
            sQLiteDatabase = null;
        }
        return sQLiteDatabase == null ? super.getWritableDatabase() : sQLiteDatabase;
    }

    /* JADX INFO: finally extract failed */
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        String[] columnNames;
        if (Build.VERSION.SDK_INT < 15) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
            try {
                rawQuery.moveToFirst();
            } finally {
                rawQuery.close();
            }
        }
        if (!zza("datalayer", sQLiteDatabase)) {
            sQLiteDatabase.execSQL(zzat.zzbbu);
            return;
        }
        Cursor rawQuery2 = sQLiteDatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
        HashSet hashSet = new HashSet();
        try {
            for (String str : rawQuery2.getColumnNames()) {
                hashSet.add(str);
            }
            rawQuery2.close();
            if (!hashSet.remove("key") || !hashSet.remove("value") || !hashSet.remove("ID") || !hashSet.remove("expires")) {
                throw new SQLiteException("Database column missing");
            } else if (!hashSet.isEmpty()) {
                throw new SQLiteException("Database has extra columns");
            }
        } catch (Throwable th) {
            rawQuery2.close();
            throw th;
        }
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        zzbr.zzdt(sQLiteDatabase.getPath());
    }
}

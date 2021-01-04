package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tagmanager.DataLayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* access modifiers changed from: package-private */
public final class zzat implements DataLayer.zzc {
    private static final String zzbbu = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", "datalayer", "ID", "key", "value", "expires");
    private final Executor zzbbv;
    private zzax zzbbw;
    private int zzbbx;
    private final Context zzri;
    private Clock zzrz;

    public zzat(Context context) {
        this(context, DefaultClock.getInstance(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
    }

    @VisibleForTesting
    private zzat(Context context, Clock clock, String str, int i, Executor executor) {
        this.zzri = context;
        this.zzrz = clock;
        this.zzbbx = 2000;
        this.zzbbv = executor;
        this.zzbbw = new zzax(this, this.zzri, str);
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public final void zza(List<DataLayer.zza> list, long j) {
        ArrayList arrayList = new ArrayList();
        for (DataLayer.zza zza : list) {
            arrayList.add(new zzay(zza.mKey, zzg(zza.mValue)));
        }
        this.zzbbv.execute(new zzau(this, arrayList, j));
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public final void zza(zzaq zzaq) {
        this.zzbbv.execute(new zzav(this, zzaq));
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public final void zzdl(String str) {
        this.zzbbv.execute(new zzaw(this, str));
    }

    /* access modifiers changed from: private */
    public final List<DataLayer.zza> zzoh() {
        try {
            zzat(this.zzrz.currentTimeMillis());
            List<zzay> zzoi = zzoi();
            ArrayList arrayList = new ArrayList();
            for (zzay zzay : zzoi) {
                arrayList.add(new DataLayer.zza(zzay.zzoj, zzd(zzay.zzbcd)));
            }
            return arrayList;
        } finally {
            zzok();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x001e A[SYNTHETIC, Splitter:B:13:0x001e] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0028 A[SYNTHETIC, Splitter:B:22:0x0028] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0032 A[SYNTHETIC, Splitter:B:31:0x0032] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.Object zzd(byte[] r4) {
        /*
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r0.<init>(r4)
            r4 = 0
            java.io.ObjectInputStream r1 = new java.io.ObjectInputStream     // Catch:{ IOException -> 0x002f, ClassNotFoundException -> 0x0025, all -> 0x001b }
            r1.<init>(r0)     // Catch:{ IOException -> 0x002f, ClassNotFoundException -> 0x0025, all -> 0x001b }
            java.lang.Object r2 = r1.readObject()     // Catch:{ IOException -> 0x0030, ClassNotFoundException -> 0x0026, all -> 0x0016 }
            r1.close()     // Catch:{ IOException -> 0x0015 }
            r0.close()     // Catch:{ IOException -> 0x0015 }
        L_0x0015:
            return r2
        L_0x0016:
            r4 = move-exception
            r3 = r1
            r1 = r4
            r4 = r3
            goto L_0x001c
        L_0x001b:
            r1 = move-exception
        L_0x001c:
            if (r4 == 0) goto L_0x0021
            r4.close()     // Catch:{ IOException -> 0x0024 }
        L_0x0021:
            r0.close()     // Catch:{ IOException -> 0x0024 }
        L_0x0024:
            throw r1
        L_0x0025:
            r1 = r4
        L_0x0026:
            if (r1 == 0) goto L_0x002b
            r1.close()     // Catch:{ IOException -> 0x002e }
        L_0x002b:
            r0.close()     // Catch:{ IOException -> 0x002e }
        L_0x002e:
            return r4
        L_0x002f:
            r1 = r4
        L_0x0030:
            if (r1 == 0) goto L_0x0035
            r1.close()     // Catch:{ IOException -> 0x0038 }
        L_0x0035:
            r0.close()     // Catch:{ IOException -> 0x0038 }
        L_0x0038:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzd(byte[]):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x001f A[SYNTHETIC, Splitter:B:13:0x001f] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0029 A[SYNTHETIC, Splitter:B:22:0x0029] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static byte[] zzg(java.lang.Object r3) {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            r1 = 0
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x0026, all -> 0x001c }
            r2.<init>(r0)     // Catch:{ IOException -> 0x0026, all -> 0x001c }
            r2.writeObject(r3)     // Catch:{ IOException -> 0x0027, all -> 0x0019 }
            byte[] r3 = r0.toByteArray()     // Catch:{ IOException -> 0x0027, all -> 0x0019 }
            r2.close()     // Catch:{ IOException -> 0x0018 }
            r0.close()     // Catch:{ IOException -> 0x0018 }
        L_0x0018:
            return r3
        L_0x0019:
            r3 = move-exception
            r1 = r2
            goto L_0x001d
        L_0x001c:
            r3 = move-exception
        L_0x001d:
            if (r1 == 0) goto L_0x0022
            r1.close()     // Catch:{ IOException -> 0x0025 }
        L_0x0022:
            r0.close()     // Catch:{ IOException -> 0x0025 }
        L_0x0025:
            throw r3
        L_0x0026:
            r2 = r1
        L_0x0027:
            if (r2 == 0) goto L_0x002c
            r2.close()     // Catch:{ IOException -> 0x002f }
        L_0x002c:
            r0.close()     // Catch:{ IOException -> 0x002f }
        L_0x002f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzg(java.lang.Object):byte[]");
    }

    /* access modifiers changed from: private */
    public final synchronized void zzb(List<zzay> list, long j) {
        try {
            long currentTimeMillis = this.zzrz.currentTimeMillis();
            zzat(currentTimeMillis);
            int zzoj = (zzoj() - this.zzbbx) + list.size();
            if (zzoj > 0) {
                List<String> zzv = zzv(zzoj);
                int size = zzv.size();
                StringBuilder sb = new StringBuilder(64);
                sb.append("DataLayer store full, deleting ");
                sb.append(size);
                sb.append(" entries to make room.");
                zzdi.zzdo(sb.toString());
                String[] strArr = (String[]) zzv.toArray(new String[0]);
                if (strArr != null) {
                    if (strArr.length != 0) {
                        SQLiteDatabase zzdn = zzdn("Error opening database for deleteEntries.");
                        if (zzdn != null) {
                            try {
                                zzdn.delete("datalayer", String.format("%s in (%s)", "ID", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
                            } catch (SQLiteException unused) {
                                String valueOf = String.valueOf(Arrays.toString(strArr));
                                zzdi.zzab(valueOf.length() != 0 ? "Error deleting entries ".concat(valueOf) : new String("Error deleting entries "));
                            }
                        }
                    }
                }
            }
            long j2 = currentTimeMillis + j;
            SQLiteDatabase zzdn2 = zzdn("Error opening database for writeEntryToDatabase.");
            if (zzdn2 != null) {
                for (zzay zzay : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("expires", Long.valueOf(j2));
                    contentValues.put("key", zzay.zzoj);
                    contentValues.put("value", zzay.zzbcd);
                    zzdn2.insert("datalayer", null, contentValues);
                }
            }
        } finally {
            zzok();
        }
    }

    private final List<zzay> zzoi() {
        SQLiteDatabase zzdn = zzdn("Error opening database for loadSerialized.");
        ArrayList arrayList = new ArrayList();
        if (zzdn == null) {
            return arrayList;
        }
        Cursor query = zzdn.query("datalayer", new String[]{"key", "value"}, null, null, null, null, "ID", null);
        while (query.moveToNext()) {
            try {
                arrayList.add(new zzay(query.getString(0), query.getBlob(1)));
            } finally {
                query.close();
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: private */
    public final void zzdm(String str) {
        SQLiteDatabase zzdn = zzdn("Error opening database for clearKeysWithPrefix.");
        if (zzdn != null) {
            try {
                int delete = zzdn.delete("datalayer", "key = ? OR key LIKE ?", new String[]{str, String.valueOf(str).concat(".%")});
                StringBuilder sb = new StringBuilder(25);
                sb.append("Cleared ");
                sb.append(delete);
                sb.append(" items");
                zzdi.v(sb.toString());
            } catch (SQLiteException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 44 + String.valueOf(valueOf).length());
                sb2.append("Error deleting entries with key prefix: ");
                sb2.append(str);
                sb2.append(" (");
                sb2.append(valueOf);
                sb2.append(").");
                zzdi.zzab(sb2.toString());
            } finally {
                zzok();
            }
        }
    }

    private final void zzat(long j) {
        SQLiteDatabase zzdn = zzdn("Error opening database for deleteOlderThan.");
        if (zzdn != null) {
            try {
                int delete = zzdn.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)});
                StringBuilder sb = new StringBuilder(33);
                sb.append("Deleted ");
                sb.append(delete);
                sb.append(" expired items");
                zzdi.v(sb.toString());
            } catch (SQLiteException unused) {
                zzdi.zzab("Error deleting old entries.");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0078 A[Catch:{ all -> 0x0065 }] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x007d A[Catch:{ all -> 0x0065 }] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.util.List<java.lang.String> zzv(int r15) {
        /*
        // Method dump skipped, instructions count: 145
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzv(int):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0036  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int zzoj() {
        /*
            r4 = this;
            java.lang.String r0 = "Error opening database for getNumStoredEntries."
            android.database.sqlite.SQLiteDatabase r0 = r4.zzdn(r0)
            r1 = 0
            if (r0 != 0) goto L_0x000a
            return r1
        L_0x000a:
            r2 = 0
            java.lang.String r3 = "SELECT COUNT(*) from datalayer"
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
            java.lang.String r0 = "Error getting numStoredEntries"
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzoj():int");
    }

    private final SQLiteDatabase zzdn(String str) {
        try {
            return this.zzbbw.getWritableDatabase();
        } catch (SQLiteException unused) {
            zzdi.zzab(str);
            return null;
        }
    }

    private final void zzok() {
        try {
            this.zzbbw.close();
        } catch (SQLiteException unused) {
        }
    }
}

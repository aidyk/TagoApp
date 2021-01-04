package com.google.android.gms.tagmanager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.Random;
import org.apache.commons.lang3.time.DateUtils;

@ShowFirstParty
public final class zzai {
    private final String zzbaa;
    private final Random zzbbg;
    private final Context zzri;

    public zzai(Context context, String str) {
        this(context, str, new Random());
    }

    @VisibleForTesting
    private zzai(Context context, String str, Random random) {
        this.zzri = (Context) Preconditions.checkNotNull(context);
        this.zzbaa = (String) Preconditions.checkNotNull(str);
        this.zzbbg = random;
    }

    public final long zznz() {
        return zzd(7200000, 259200000) + 43200000;
    }

    public final long zzoa() {
        return zzd(600000, DateUtils.MILLIS_PER_DAY) + DateUtils.MILLIS_PER_HOUR;
    }

    private final long zzd(long j, long j2) {
        SharedPreferences zzod = zzod();
        long max = Math.max(0L, zzod.getLong("FORBIDDEN_COUNT", 0));
        return (long) (this.zzbbg.nextFloat() * ((float) (j + ((long) ((((float) max) / ((float) ((max + Math.max(0L, zzod.getLong("SUCCESSFUL_COUNT", 0))) + 1))) * ((float) (j2 - j)))))));
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void zzob() {
        long j;
        SharedPreferences zzod = zzod();
        long j2 = zzod.getLong("FORBIDDEN_COUNT", 0);
        long j3 = zzod.getLong("SUCCESSFUL_COUNT", 0);
        SharedPreferences.Editor edit = zzod.edit();
        if (j2 == 0) {
            j = 3;
        } else {
            j = Math.min(10L, j2 + 1);
        }
        long max = Math.max(0L, Math.min(j3, 10 - j));
        edit.putLong("FORBIDDEN_COUNT", j);
        edit.putLong("SUCCESSFUL_COUNT", max);
        edit.apply();
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void zzoc() {
        SharedPreferences zzod = zzod();
        long j = zzod.getLong("SUCCESSFUL_COUNT", 0);
        long j2 = zzod.getLong("FORBIDDEN_COUNT", 0);
        long min = Math.min(10L, j + 1);
        long max = Math.max(0L, Math.min(j2, 10 - min));
        SharedPreferences.Editor edit = zzod.edit();
        edit.putLong("SUCCESSFUL_COUNT", min);
        edit.putLong("FORBIDDEN_COUNT", max);
        edit.apply();
    }

    private final SharedPreferences zzod() {
        Context context = this.zzri;
        String valueOf = String.valueOf("_gtmContainerRefreshPolicy_");
        String valueOf2 = String.valueOf(this.zzbaa);
        return context.getSharedPreferences(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), 0);
    }
}

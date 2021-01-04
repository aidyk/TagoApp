package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.internal.measurement.zzcx;
import com.google.android.gms.internal.measurement.zzdb;

@TargetApi(24)
public final class AnalyticsJobService extends JobService implements zzdb {
    private zzcx<AnalyticsJobService> zzqz;

    private final zzcx<AnalyticsJobService> zzn() {
        if (this.zzqz == null) {
            this.zzqz = new zzcx<>(this);
        }
        return this.zzqz;
    }

    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final void onCreate() {
        super.onCreate();
        zzn().onCreate();
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final void onDestroy() {
        zzn().onDestroy();
        super.onDestroy();
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final int onStartCommand(Intent intent, int i, int i2) {
        return zzn().onStartCommand(intent, i, i2);
    }

    public final boolean onStartJob(JobParameters jobParameters) {
        return zzn().onStartJob(jobParameters);
    }

    @Override // com.google.android.gms.internal.measurement.zzdb
    public final boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzdb
    @TargetApi(24)
    public final void zza(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }
}

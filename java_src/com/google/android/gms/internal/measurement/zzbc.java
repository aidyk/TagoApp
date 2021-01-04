package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
public final class zzbc implements ServiceConnection {
    final /* synthetic */ zzba zzxa;
    private volatile zzcl zzxb;
    private volatile boolean zzxc;

    protected zzbc(zzba zzba) {
        this.zzxa = zzba;
    }

    public final zzcl zzda() {
        zzk.zzaf();
        Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
        Context context = this.zzxa.getContext();
        intent.putExtra("app_package_name", context.getPackageName());
        ConnectionTracker instance = ConnectionTracker.getInstance();
        synchronized (this) {
            this.zzxb = null;
            this.zzxc = true;
            boolean bindService = instance.bindService(context, intent, zzba.zza(this.zzxa), TsExtractor.TS_STREAM_TYPE_AC3);
            this.zzxa.zza("Bind to service requested", Boolean.valueOf(bindService));
            if (!bindService) {
                this.zzxc = false;
                return null;
            }
            try {
                wait(zzcf.zzaag.get().longValue());
            } catch (InterruptedException unused) {
                this.zzxa.zzt("Wait for service connect was interrupted");
            }
            this.zzxc = false;
            zzcl zzcl = this.zzxb;
            this.zzxb = null;
            if (zzcl == null) {
                this.zzxa.zzu("Successfully bound to service but never got onServiceConnected callback");
            }
            return zzcl;
        }
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzcl zzcm;
        Preconditions.checkMainThread("AnalyticsServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                try {
                    this.zzxa.zzu("Service connected with null binder");
                } finally {
                    notifyAll();
                }
            } else {
                zzcl zzcl = null;
                try {
                    String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                    if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(interfaceDescriptor)) {
                        if (iBinder != null) {
                            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                            if (queryLocalInterface instanceof zzcl) {
                                zzcm = (zzcl) queryLocalInterface;
                            } else {
                                zzcm = new zzcm(iBinder);
                            }
                            zzcl = zzcm;
                        }
                        this.zzxa.zzq("Bound to IAnalyticsService interface");
                    } else {
                        this.zzxa.zze("Got binder with a wrong descriptor", interfaceDescriptor);
                    }
                } catch (RemoteException unused) {
                    this.zzxa.zzu("Service connect failed to get IAnalyticsService");
                }
                if (zzcl == null) {
                    try {
                        ConnectionTracker.getInstance().unbindService(this.zzxa.getContext(), zzba.zza(this.zzxa));
                    } catch (IllegalArgumentException unused2) {
                    }
                } else if (!this.zzxc) {
                    this.zzxa.zzt("onServiceConnected received after the timeout limit");
                    this.zzxa.zzca().zza(new zzbd(this, zzcl));
                } else {
                    this.zzxb = zzcl;
                }
                notifyAll();
            }
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("AnalyticsServiceConnection.onServiceDisconnected");
        this.zzxa.zzca().zza(new zzbe(this, componentName));
    }
}

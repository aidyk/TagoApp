package com.google.android.gms.tagmanager;

import android.util.Log;
import com.google.android.gms.common.internal.ShowFirstParty;

@ShowFirstParty
public final class zzba implements zzdj {
    private int zzyn = 5;

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void e(String str) {
        if (this.zzyn <= 6) {
            Log.e("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zza(String str, Throwable th) {
        if (this.zzyn <= 6) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zzab(String str) {
        if (this.zzyn <= 5) {
            Log.w("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zzb(String str, Throwable th) {
        if (this.zzyn <= 5) {
            Log.w("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zzdo(String str) {
        if (this.zzyn <= 4) {
            Log.i("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zzdp(String str) {
        if (this.zzyn <= 3) {
            Log.d("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void v(String str) {
        if (this.zzyn <= 2) {
            Log.v("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void setLogLevel(int i) {
        this.zzyn = i;
    }
}

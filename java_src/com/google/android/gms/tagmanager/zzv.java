package com.google.android.gms.tagmanager;

import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tagmanager.ContainerHolder;

/* access modifiers changed from: package-private */
@VisibleForTesting
public final class zzv implements ContainerHolder {
    private Status zzadh;
    private final Looper zzbai;
    private Container zzbaj;
    private Container zzbak;
    private zzx zzbal;
    private zzw zzbam;
    private boolean zzban;
    private TagManager zzbao;

    public zzv(Status status) {
        this.zzadh = status;
        this.zzbai = null;
    }

    public zzv(TagManager tagManager, Looper looper, Container container, zzw zzw) {
        this.zzbao = tagManager;
        this.zzbai = looper == null ? Looper.getMainLooper() : looper;
        this.zzbaj = container;
        this.zzbam = zzw;
        this.zzadh = Status.RESULT_SUCCESS;
        tagManager.zza(this);
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zzadh;
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public final synchronized Container getContainer() {
        if (this.zzban) {
            zzdi.e("ContainerHolder is released.");
            return null;
        }
        if (this.zzbak != null) {
            this.zzbaj = this.zzbak;
            this.zzbak = null;
        }
        return this.zzbaj;
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public final synchronized void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener containerAvailableListener) {
        if (this.zzban) {
            zzdi.e("ContainerHolder is released.");
        } else if (containerAvailableListener == null) {
            this.zzbal = null;
        } else {
            this.zzbal = new zzx(this, containerAvailableListener, this.zzbai);
            if (this.zzbak != null) {
                zznr();
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public final synchronized void refresh() {
        if (this.zzban) {
            zzdi.e("Refreshing a released ContainerHolder.");
        } else {
            this.zzbam.zzns();
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final synchronized void release() {
        if (this.zzban) {
            zzdi.e("Releasing a released ContainerHolder.");
            return;
        }
        this.zzban = true;
        this.zzbao.zzb(this);
        this.zzbaj.release();
        this.zzbaj = null;
        this.zzbak = null;
        this.zzbam = null;
        this.zzbal = null;
    }

    public final synchronized void zza(Container container) {
        if (!this.zzban) {
            this.zzbak = container;
            zznr();
        }
    }

    public final synchronized void zzdg(String str) {
        if (!this.zzban) {
            this.zzbaj.zzdg(str);
        }
    }

    /* access modifiers changed from: package-private */
    public final String getContainerId() {
        if (!this.zzban) {
            return this.zzbaj.getContainerId();
        }
        zzdi.e("getContainerId called on a released ContainerHolder.");
        return "";
    }

    /* access modifiers changed from: package-private */
    public final void zzdh(String str) {
        if (this.zzban) {
            zzdi.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        } else {
            this.zzbam.zzdh(str);
        }
    }

    /* access modifiers changed from: package-private */
    public final String zznq() {
        if (!this.zzban) {
            return this.zzbam.zznq();
        }
        zzdi.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        return "";
    }

    private final void zznr() {
        if (this.zzbal != null) {
            zzx zzx = this.zzbal;
            zzx.sendMessage(zzx.obtainMessage(1, this.zzbak.zzno()));
        }
    }
}

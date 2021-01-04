package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.RawRes;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

@VisibleForTesting
public class TagManager {
    private static TagManager zzbhb;
    private final DataLayer zzbab;
    private final zzal zzbfc;
    private final zza zzbgy;
    private final zzfm zzbgz;
    private final ConcurrentMap<String, zzv> zzbha;
    private final Context zzri;

    @VisibleForTesting
    public interface zza {
        zzy zza(Context context, TagManager tagManager, Looper looper, String str, int i, zzal zzal);
    }

    @VisibleForTesting
    private TagManager(Context context, zza zza2, DataLayer dataLayer, zzfm zzfm) {
        if (context != null) {
            this.zzri = context.getApplicationContext();
            this.zzbgz = zzfm;
            this.zzbgy = zza2;
            this.zzbha = new ConcurrentHashMap();
            this.zzbab = dataLayer;
            this.zzbab.zza(new zzga(this));
            this.zzbab.zza(new zzg(this.zzri));
            this.zzbfc = new zzal();
            this.zzri.registerComponentCallbacks(new zzgc(this));
            zza.zzo(this.zzri);
            return;
        }
        throw new NullPointerException("context cannot be null");
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static TagManager getInstance(Context context) {
        TagManager tagManager;
        synchronized (TagManager.class) {
            if (zzbhb == null) {
                if (context != null) {
                    zzbhb = new TagManager(context, new zzgb(), new DataLayer(new zzat(context)), zzfn.zzqe());
                } else {
                    zzdi.e("TagManager.getInstance requires non-null context.");
                    throw new NullPointerException();
                }
            }
            tagManager = zzbhb;
        }
        return tagManager;
    }

    public DataLayer getDataLayer() {
        return this.zzbab;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, @RawRes int i) {
        zzy zza2 = this.zzbgy.zza(this.zzri, this, null, str, i, this.zzbfc);
        zza2.zznt();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, @RawRes int i, Handler handler) {
        zzy zza2 = this.zzbgy.zza(this.zzri, this, handler.getLooper(), str, i, this.zzbfc);
        zza2.zznt();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, @RawRes int i) {
        zzy zza2 = this.zzbgy.zza(this.zzri, this, null, str, i, this.zzbfc);
        zza2.zznu();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, @RawRes int i, Handler handler) {
        zzy zza2 = this.zzbgy.zza(this.zzri, this, handler.getLooper(), str, i, this.zzbfc);
        zza2.zznu();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, @RawRes int i) {
        zzy zza2 = this.zzbgy.zza(this.zzri, this, null, str, i, this.zzbfc);
        zza2.zznv();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, @RawRes int i, Handler handler) {
        zzy zza2 = this.zzbgy.zza(this.zzri, this, handler.getLooper(), str, i, this.zzbfc);
        zza2.zznv();
        return zza2;
    }

    public void dispatch() {
        this.zzbgz.dispatch();
    }

    public void setVerboseLoggingEnabled(boolean z) {
        zzdi.setLogLevel(z ? 2 : 5);
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean zzb(Uri uri) {
        zzeh zzpm = zzeh.zzpm();
        if (!zzpm.zzb(uri)) {
            return false;
        }
        String containerId = zzpm.getContainerId();
        switch (zzgd.zzbhd[zzpm.zzpn().ordinal()]) {
            case 1:
                zzv zzv = this.zzbha.get(containerId);
                if (zzv != null) {
                    zzv.zzdh(null);
                    zzv.refresh();
                    break;
                }
                break;
            case 2:
            case 3:
                for (String str : this.zzbha.keySet()) {
                    zzv zzv2 = this.zzbha.get(str);
                    if (str.equals(containerId)) {
                        zzv2.zzdh(zzpm.zzpo());
                        zzv2.refresh();
                    } else if (zzv2.zznq() != null) {
                        zzv2.zzdh(null);
                        zzv2.refresh();
                    }
                }
                break;
        }
        return true;
    }

    @VisibleForTesting
    public final int zza(zzv zzv) {
        this.zzbha.put(zzv.getContainerId(), zzv);
        return this.zzbha.size();
    }

    @VisibleForTesting
    public final boolean zzb(zzv zzv) {
        return this.zzbha.remove(zzv.getContainerId()) != null;
    }

    /* access modifiers changed from: private */
    public final void zzed(String str) {
        for (zzv zzv : this.zzbha.values()) {
            zzv.zzdg(str);
        }
    }
}

package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.tagmanager.ContainerHolder;

/* access modifiers changed from: package-private */
public final class zzx extends Handler {
    private final ContainerHolder.ContainerAvailableListener zzbap;
    private final /* synthetic */ zzv zzbaq;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public zzx(zzv zzv, ContainerHolder.ContainerAvailableListener containerAvailableListener, Looper looper) {
        super(looper);
        this.zzbaq = zzv;
        this.zzbap = containerAvailableListener;
    }

    public final void handleMessage(Message message) {
        if (message.what != 1) {
            zzdi.e("Don't know how to handle this message.");
            return;
        }
        this.zzbap.onContainerAvailable(this.zzbaq, (String) message.obj);
    }
}

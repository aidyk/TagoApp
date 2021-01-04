package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Message;

/* access modifiers changed from: package-private */
public final class zzfr implements zzfq {
    private Handler handler;
    final /* synthetic */ zzfn zzbgu;

    private zzfr(zzfn zzfn) {
        this.zzbgu = zzfn;
        this.handler = new Handler(this.zzbgu.zzbgj.getMainLooper(), new zzfs(this));
    }

    @Override // com.google.android.gms.tagmanager.zzfq
    public final void zzqh() {
        this.handler.removeMessages(1, zzfn.zzbgi);
        this.handler.sendMessage(obtainMessage());
    }

    @Override // com.google.android.gms.tagmanager.zzfq
    public final void cancel() {
        this.handler.removeMessages(1, zzfn.zzbgi);
    }

    @Override // com.google.android.gms.tagmanager.zzfq
    public final void zzh(long j) {
        this.handler.removeMessages(1, zzfn.zzbgi);
        this.handler.sendMessageDelayed(obtainMessage(), j);
    }

    private final Message obtainMessage() {
        return this.handler.obtainMessage(1, zzfn.zzbgi);
    }

    /* synthetic */ zzfr(zzfn zzfn, zzfo zzfo) {
        this(zzfn);
    }
}

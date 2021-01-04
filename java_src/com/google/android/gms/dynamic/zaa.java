package com.google.android.gms.dynamic;

import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import java.util.Iterator;

final class zaa implements OnDelegateCreatedListener<T> {
    private final /* synthetic */ DeferredLifecycleHelper zari;

    zaa(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.zari = deferredLifecycleHelper;
    }

    @Override // com.google.android.gms.dynamic.OnDelegateCreatedListener
    public final void onDelegateCreated(T t) {
        DeferredLifecycleHelper.zaa(this.zari, (LifecycleDelegate) t);
        Iterator it2 = DeferredLifecycleHelper.zaa(this.zari).iterator();
        while (it2.hasNext()) {
            ((DeferredLifecycleHelper.zaa) it2.next()).zaa(DeferredLifecycleHelper.zab(this.zari));
        }
        DeferredLifecycleHelper.zaa(this.zari).clear();
        DeferredLifecycleHelper.zaa(this.zari, (Bundle) null);
    }
}

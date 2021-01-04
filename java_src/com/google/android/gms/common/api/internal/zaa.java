package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.support.annotation.MainThread;
import android.support.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public final class zaa extends ActivityLifecycleObserver {
    private final WeakReference<C0000zaa> zack;

    public zaa(Activity activity) {
        this(C0000zaa.zaa(activity));
    }

    @VisibleForTesting(otherwise = 2)
    private zaa(C0000zaa zaa) {
        this.zack = new WeakReference<>(zaa);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        C0000zaa zaa = this.zack.get();
        if (zaa != null) {
            zaa.zaa((C0000zaa) runnable);
            return this;
        }
        throw new IllegalStateException("The target activity has already been GC'd");
    }

    @VisibleForTesting(otherwise = 2)
    /* renamed from: com.google.android.gms.common.api.internal.zaa$zaa  reason: collision with other inner class name */
    static class C0000zaa extends LifecycleCallback {
        private List<Runnable> zacl = new ArrayList();

        /* access modifiers changed from: private */
        public static C0000zaa zaa(Activity activity) {
            C0000zaa zaa;
            synchronized (activity) {
                LifecycleFragment fragment = getFragment(activity);
                zaa = (C0000zaa) fragment.getCallbackOrNull("LifecycleObserverOnStop", C0000zaa.class);
                if (zaa == null) {
                    zaa = new C0000zaa(fragment);
                }
            }
            return zaa;
        }

        private C0000zaa(LifecycleFragment lifecycleFragment) {
            super(lifecycleFragment);
            this.mLifecycleFragment.addCallback("LifecycleObserverOnStop", this);
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final synchronized void zaa(Runnable runnable) {
            this.zacl.add(runnable);
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        @MainThread
        public void onStop() {
            List<Runnable> list;
            synchronized (this) {
                list = this.zacl;
                this.zacl = new ArrayList();
            }
            for (Runnable runnable : list) {
                runnable.run();
            }
        }
    }
}

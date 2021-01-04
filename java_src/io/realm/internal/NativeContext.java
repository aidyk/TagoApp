package io.realm.internal;

import java.lang.ref.ReferenceQueue;

public class NativeContext {
    static final NativeContext dummyContext = new NativeContext();
    private static final Thread finalizingThread = new Thread(new FinalizerRunnable(referenceQueue));
    private static final ReferenceQueue<NativeObject> referenceQueue = new ReferenceQueue<>();

    static {
        finalizingThread.setName("RealmFinalizingDaemon");
        finalizingThread.start();
    }

    /* access modifiers changed from: package-private */
    public void addReference(NativeObject nativeObject) {
        new NativeObjectReference(this, nativeObject, referenceQueue);
    }
}

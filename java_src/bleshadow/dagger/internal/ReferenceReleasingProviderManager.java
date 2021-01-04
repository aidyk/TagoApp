package bleshadow.dagger.internal;

import bleshadow.dagger.releasablereferences.ReleasableReferenceManager;
import java.lang.annotation.Annotation;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

@GwtIncompatible
public final class ReferenceReleasingProviderManager implements ReleasableReferenceManager {
    private final Queue<WeakReference<ReferenceReleasingProvider<?>>> providers = new ConcurrentLinkedQueue();
    private final Class<? extends Annotation> scope;

    /* access modifiers changed from: private */
    public enum Operation {
        RELEASE {
            /* access modifiers changed from: package-private */
            @Override // bleshadow.dagger.internal.ReferenceReleasingProviderManager.Operation
            public void execute(ReferenceReleasingProvider<?> referenceReleasingProvider) {
                referenceReleasingProvider.releaseStrongReference();
            }
        },
        RESTORE {
            /* access modifiers changed from: package-private */
            @Override // bleshadow.dagger.internal.ReferenceReleasingProviderManager.Operation
            public void execute(ReferenceReleasingProvider<?> referenceReleasingProvider) {
                referenceReleasingProvider.restoreStrongReference();
            }
        };

        /* access modifiers changed from: package-private */
        public abstract void execute(ReferenceReleasingProvider<?> referenceReleasingProvider);
    }

    public ReferenceReleasingProviderManager(Class<? extends Annotation> cls) {
        this.scope = (Class) Preconditions.checkNotNull(cls);
    }

    public void addProvider(ReferenceReleasingProvider<?> referenceReleasingProvider) {
        this.providers.add(new WeakReference<>(referenceReleasingProvider));
    }

    @Override // bleshadow.dagger.releasablereferences.ReleasableReferenceManager
    public Class<? extends Annotation> scope() {
        return this.scope;
    }

    @Override // bleshadow.dagger.releasablereferences.ReleasableReferenceManager
    public void releaseStrongReferences() {
        execute(Operation.RELEASE);
    }

    @Override // bleshadow.dagger.releasablereferences.ReleasableReferenceManager
    public void restoreStrongReferences() {
        execute(Operation.RESTORE);
    }

    private void execute(Operation operation) {
        Iterator<WeakReference<ReferenceReleasingProvider<?>>> it2 = this.providers.iterator();
        while (it2.hasNext()) {
            ReferenceReleasingProvider<?> referenceReleasingProvider = it2.next().get();
            if (referenceReleasingProvider == null) {
                it2.remove();
            } else {
                operation.execute(referenceReleasingProvider);
            }
        }
    }
}

package bleshadow.dagger.releasablereferences;

import bleshadow.dagger.internal.GwtIncompatible;
import java.lang.annotation.Annotation;

@GwtIncompatible
public interface ReleasableReferenceManager {
    void releaseStrongReferences();

    void restoreStrongReferences();

    Class<? extends Annotation> scope();
}

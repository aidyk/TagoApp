package bleshadow.dagger.releasablereferences;

import bleshadow.dagger.internal.GwtIncompatible;
import java.lang.annotation.Annotation;

@GwtIncompatible
public interface TypedReleasableReferenceManager<M extends Annotation> extends ReleasableReferenceManager {
    M metadata();
}

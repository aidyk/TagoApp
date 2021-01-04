package bleshadow.dagger.releasablereferences;

import bleshadow.dagger.internal.GwtIncompatible;
import bleshadow.javax.inject.Qualifier;
import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@GwtIncompatible
@Qualifier
@Target({ElementType.FIELD, ElementType.PARAMETER, ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface ForReleasableReferences {
    Class<? extends Annotation> value();
}

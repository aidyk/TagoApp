package bleshadow.dagger;

import bleshadow.javax.inject.Scope;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Scope
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface Reusable {
}

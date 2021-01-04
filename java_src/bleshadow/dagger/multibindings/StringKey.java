package bleshadow.dagger.multibindings;

import bleshadow.dagger.MapKey;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@MapKey
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface StringKey {
    String value();
}

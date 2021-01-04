package com.trello.rxlifecycle2;

import io.reactivex.Completable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.util.concurrent.CancellationException;

final class Functions {
    static final Function<Object, Completable> CANCEL_COMPLETABLE = new Function<Object, Completable>() {
        /* class com.trello.rxlifecycle2.Functions.AnonymousClass3 */

        @Override // io.reactivex.functions.Function
        public Completable apply(Object obj) throws Exception {
            return Completable.error(new CancellationException());
        }
    };
    static final Function<Throwable, Boolean> RESUME_FUNCTION = new Function<Throwable, Boolean>() {
        /* class com.trello.rxlifecycle2.Functions.AnonymousClass1 */

        public Boolean apply(Throwable th) throws Exception {
            if (th instanceof OutsideLifecycleException) {
                return true;
            }
            Exceptions.propagate(th);
            return false;
        }
    };
    static final Predicate<Boolean> SHOULD_COMPLETE = new Predicate<Boolean>() {
        /* class com.trello.rxlifecycle2.Functions.AnonymousClass2 */

        public boolean test(Boolean bool) throws Exception {
            return bool.booleanValue();
        }
    };

    private Functions() {
        throw new AssertionError("No instances!");
    }
}

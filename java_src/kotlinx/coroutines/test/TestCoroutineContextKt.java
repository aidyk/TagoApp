package kotlinx.coroutines.test;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0007¨\u0006\u0007"}, d2 = {"withTestContext", "", "testContext", "Lkotlinx/coroutines/test/TestCoroutineContext;", "testBody", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 13})
/* compiled from: TestCoroutineContext.kt */
public final class TestCoroutineContextKt {
    @ObsoleteCoroutinesApi
    public static /* synthetic */ void withTestContext$default(TestCoroutineContext testCoroutineContext, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            testCoroutineContext = new TestCoroutineContext(null, 1, null);
        }
        withTestContext(testCoroutineContext, function1);
    }

    @ObsoleteCoroutinesApi
    public static final void withTestContext(@NotNull TestCoroutineContext testCoroutineContext, @NotNull Function1<? super TestCoroutineContext, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(testCoroutineContext, "testContext");
        Intrinsics.checkParameterIsNotNull(function1, "testBody");
        function1.invoke(testCoroutineContext);
        List<Throwable> exceptions = testCoroutineContext.getExceptions();
        boolean z = true;
        if (!(exceptions instanceof Collection) || !exceptions.isEmpty()) {
            Iterator<T> it2 = exceptions.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (!(it2.next() instanceof CancellationException)) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (!z) {
            throw new AssertionError("Coroutine encountered unhandled exceptions:\n" + testCoroutineContext.getExceptions());
        }
    }
}

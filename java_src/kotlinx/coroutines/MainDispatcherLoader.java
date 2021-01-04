package kotlinx.coroutines;

import java.util.Iterator;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.MainDispatcherFactory;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0005\u001a\u00020\u0004*\u00020\u0006H\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/MainDispatcherLoader;", "", "()V", "dispatcher", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "tryCreateDispatcher", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 13})
/* compiled from: Dispatchers.kt */
final class MainDispatcherLoader {
    public static final MainDispatcherLoader INSTANCE;
    @JvmField
    @NotNull
    public static final MainCoroutineDispatcher dispatcher;

    static {
        Object obj;
        MissingMainCoroutineDispatcher missingMainCoroutineDispatcher;
        MainDispatcherLoader mainDispatcherLoader = new MainDispatcherLoader();
        INSTANCE = mainDispatcherLoader;
        ServiceLoader load = ServiceLoader.load(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader());
        Intrinsics.checkExpressionValueIsNotNull(load, "ServiceLoader.load(clz, clz.classLoader)");
        Iterator it2 = CollectionsKt.toList(load).iterator();
        if (!it2.hasNext()) {
            obj = null;
        } else {
            obj = it2.next();
            int loadPriority = ((MainDispatcherFactory) obj).getLoadPriority();
            while (it2.hasNext()) {
                Object next = it2.next();
                int loadPriority2 = ((MainDispatcherFactory) next).getLoadPriority();
                if (loadPriority < loadPriority2) {
                    obj = next;
                    loadPriority = loadPriority2;
                }
            }
        }
        MainDispatcherFactory mainDispatcherFactory = (MainDispatcherFactory) obj;
        if (mainDispatcherFactory == null || (missingMainCoroutineDispatcher = mainDispatcherLoader.tryCreateDispatcher(mainDispatcherFactory)) == null) {
            missingMainCoroutineDispatcher = new MissingMainCoroutineDispatcher(null);
        }
        dispatcher = missingMainCoroutineDispatcher;
    }

    private MainDispatcherLoader() {
    }

    private final MainCoroutineDispatcher tryCreateDispatcher(@NotNull MainDispatcherFactory mainDispatcherFactory) {
        try {
            return mainDispatcherFactory.createDispatcher();
        } catch (Throwable th) {
            return new MissingMainCoroutineDispatcher(th);
        }
    }
}

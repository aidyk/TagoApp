package androidx.core.os;

import android.os.Handler;
import android.os.Message;
import com.facebook.internal.NativeProtocol;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\b\u0004\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\b\u001a1\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\b\u0004\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\b\u001a&\u0010\f\u001a\u00020\t*\u00020\u00022\u0006\u0010\r\u001a\u00020\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0001¨\u0006\u000e"}, d2 = {"postAtTime", "Ljava/lang/Runnable;", "Landroid/os/Handler;", "uptimeMillis", "", "token", "", NativeProtocol.WEB_DIALOG_ACTION, "Lkotlin/Function0;", "", "postDelayed", "delayInMillis", "postDelayedWithToken", "runnable", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Handler.kt */
public final class HandlerKt {
    @PublishedApi
    public static final void postDelayedWithToken(@NotNull Handler handler, @NotNull Runnable runnable, @Nullable Object obj, long j) {
        Message obtain = Message.obtain(handler, runnable);
        obtain.obj = obj;
        handler.sendMessageDelayed(obtain, j);
    }

    @NotNull
    public static final Runnable postDelayed(@NotNull Handler handler, long j, @Nullable Object obj, @NotNull Function0<Unit> function0) {
        HandlerKt$postDelayed$runnable$1 handlerKt$postDelayed$runnable$1 = new HandlerKt$postDelayed$runnable$1(function0);
        if (obj == null) {
            handler.postDelayed(handlerKt$postDelayed$runnable$1, j);
        } else {
            postDelayedWithToken(handler, handlerKt$postDelayed$runnable$1, obj, j);
        }
        return handlerKt$postDelayed$runnable$1;
    }

    @NotNull
    public static final Runnable postAtTime(@NotNull Handler handler, long j, @Nullable Object obj, @NotNull Function0<Unit> function0) {
        HandlerKt$postAtTime$runnable$1 handlerKt$postAtTime$runnable$1 = new HandlerKt$postAtTime$runnable$1(function0);
        handler.postAtTime(handlerKt$postAtTime$runnable$1, obj, j);
        return handlerKt$postAtTime$runnable$1;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Runnable postDelayed$default(Handler handler, long j, Object obj, Function0 function0, int i, Object obj2) {
        if ((i & 2) != 0) {
            obj = null;
        }
        HandlerKt$postDelayed$runnable$1 handlerKt$postDelayed$runnable$1 = new HandlerKt$postDelayed$runnable$1(function0);
        if (obj == null) {
            handler.postDelayed(handlerKt$postDelayed$runnable$1, j);
        } else {
            postDelayedWithToken(handler, handlerKt$postDelayed$runnable$1, obj, j);
        }
        return handlerKt$postDelayed$runnable$1;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Runnable postAtTime$default(Handler handler, long j, Object obj, Function0 function0, int i, Object obj2) {
        if ((i & 2) != 0) {
            obj = null;
        }
        HandlerKt$postAtTime$runnable$1 handlerKt$postAtTime$runnable$1 = new HandlerKt$postAtTime$runnable$1(function0);
        handler.postAtTime(handlerKt$postAtTime$runnable$1, obj, j);
        return handlerKt$postAtTime$runnable$1;
    }
}

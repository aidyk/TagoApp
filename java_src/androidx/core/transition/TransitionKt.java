package androidx.core.transition;

import android.support.annotation.RequiresApi;
import android.transition.Transition;
import com.facebook.internal.NativeProtocol;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u001aÏ\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00022%\b\u0002\u0010\u0003\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00042%\b\u0002\u0010\b\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00042%\b\u0002\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00042%\b\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00042%\b\u0002\u0010\u000b\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0004H\u0007\u001a/\u0010\f\u001a\u00020\u0001*\u00020\u00022!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u00010\u0004H\u0007\u001a/\u0010\u000e\u001a\u00020\u0001*\u00020\u00022!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u00010\u0004H\u0007\u001a/\u0010\u000f\u001a\u00020\u0001*\u00020\u00022!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u00010\u0004H\u0007\u001a/\u0010\u0010\u001a\u00020\u0001*\u00020\u00022!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u00010\u0004H\u0007\u001a/\u0010\u0011\u001a\u00020\u0001*\u00020\u00022!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u00010\u0004H\u0007¨\u0006\u0012"}, d2 = {"addListener", "", "Landroid/transition/Transition;", "onEnd", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "transition", "onStart", "onCancel", "onResume", "onPause", "doOnCancel", NativeProtocol.WEB_DIALOG_ACTION, "doOnEnd", "doOnPause", "doOnResume", "doOnStart", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Transition.kt */
public final class TransitionKt {
    @RequiresApi(19)
    public static final void doOnEnd(@NotNull Transition transition, @NotNull Function1<? super Transition, Unit> function1) {
        addListener$default(transition, function1, null, null, null, null, 30, null);
    }

    @RequiresApi(19)
    public static final void doOnStart(@NotNull Transition transition, @NotNull Function1<? super Transition, Unit> function1) {
        addListener$default(transition, null, function1, null, null, null, 29, null);
    }

    @RequiresApi(19)
    public static final void doOnCancel(@NotNull Transition transition, @NotNull Function1<? super Transition, Unit> function1) {
        addListener$default(transition, null, null, function1, null, null, 27, null);
    }

    @RequiresApi(19)
    public static final void doOnResume(@NotNull Transition transition, @NotNull Function1<? super Transition, Unit> function1) {
        addListener$default(transition, null, null, null, function1, null, 23, null);
    }

    @RequiresApi(19)
    public static final void doOnPause(@NotNull Transition transition, @NotNull Function1<? super Transition, Unit> function1) {
        addListener$default(transition, null, null, null, null, function1, 15, null);
    }

    @RequiresApi(19)
    public static /* bridge */ /* synthetic */ void addListener$default(Transition transition, Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        if ((i & 2) != 0) {
            function12 = null;
        }
        if ((i & 4) != 0) {
            function13 = null;
        }
        if ((i & 8) != 0) {
            function14 = null;
        }
        if ((i & 16) != 0) {
            function15 = null;
        }
        addListener(transition, function1, function12, function13, function14, function15);
    }

    @RequiresApi(19)
    public static final void addListener(@NotNull Transition transition, @Nullable Function1<? super Transition, Unit> function1, @Nullable Function1<? super Transition, Unit> function12, @Nullable Function1<? super Transition, Unit> function13, @Nullable Function1<? super Transition, Unit> function14, @Nullable Function1<? super Transition, Unit> function15) {
        transition.addListener(new TransitionKt$addListener$1(function1, function14, function15, function13, function12));
    }
}

package org.jetbrains.anko.recyclerview.v7;

import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\b\u001a+\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0005¢\u0006\u0002\b\u0006\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0002\b\bH\b\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\tH\b\u001a+\u0010\u0000\u001a\u00020\u0001*\u00020\t2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0005¢\u0006\u0002\b\u0006\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0002\b\bH\b\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\nH\b\u001a+\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0005¢\u0006\u0002\b\u0006\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0002\b\bH\b\u001a\u0017\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\rH\b\u001a5\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\r2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0005¢\u0006\u0002\b\u0006\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0002\b\bH\b\u001a\u0017\u0010\u000b\u001a\u00020\u0001*\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\rH\b\u001a5\u0010\u000b\u001a\u00020\u0001*\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\r2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0005¢\u0006\u0002\b\u0006\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0002\b\bH\b\u001a\u0017\u0010\u000b\u001a\u00020\u0001*\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\rH\b\u001a5\u0010\u000b\u001a\u00020\u0001*\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\r2\u001c\u0010\u0003\u001a\u0018\u0012\t\u0012\u00070\u0005¢\u0006\u0002\b\u0006\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0002\b\bH\b¨\u0006\u000e"}, d2 = {"recyclerView", "Landroid/support/v7/widget/RecyclerView;", "Landroid/app/Activity;", "init", "Lkotlin/Function1;", "Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;", "Lorg/jetbrains/anko/AnkoViewDslMarker;", "", "Lkotlin/ExtensionFunctionType;", "Landroid/content/Context;", "Landroid/view/ViewManager;", "themedRecyclerView", "theme", "", "anko-recyclerview-v7_release"}, k = 2, mv = {1, 1, 13})
@JvmName(name = "RecyclerviewV7ViewsKt")
/* compiled from: Views.kt */
public final class RecyclerviewV7ViewsKt {
    @NotNull
    public static final RecyclerView recyclerView(@NotNull ViewManager viewManager, @NotNull Function1<? super _RecyclerView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), 0));
        function1.invoke(invoke);
        AnkoInternals.INSTANCE.addView(viewManager, invoke);
        return invoke;
    }

    @NotNull
    public static /* synthetic */ RecyclerView themedRecyclerView$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i));
        AnkoInternals.INSTANCE.addView(viewManager, invoke);
        return invoke;
    }

    @NotNull
    public static /* synthetic */ RecyclerView themedRecyclerView$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i));
        function1.invoke(invoke);
        AnkoInternals.INSTANCE.addView(viewManager, invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView themedRecyclerView(@NotNull ViewManager viewManager, int i, @NotNull Function1<? super _RecyclerView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i));
        function1.invoke(invoke);
        AnkoInternals.INSTANCE.addView(viewManager, invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView recyclerView(@NotNull Context context, @NotNull Function1<? super _RecyclerView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(context, 0));
        function1.invoke(invoke);
        AnkoInternals.INSTANCE.addView(context, invoke);
        return invoke;
    }

    @NotNull
    public static /* synthetic */ RecyclerView themedRecyclerView$default(Context context, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(context, i));
        AnkoInternals.INSTANCE.addView(context, invoke);
        return invoke;
    }

    @NotNull
    public static /* synthetic */ RecyclerView themedRecyclerView$default(Context context, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(context, i));
        function1.invoke(invoke);
        AnkoInternals.INSTANCE.addView(context, invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView themedRecyclerView(@NotNull Context context, int i, @NotNull Function1<? super _RecyclerView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(context, i));
        function1.invoke(invoke);
        AnkoInternals.INSTANCE.addView(context, invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView recyclerView(@NotNull Activity activity, @NotNull Function1<? super _RecyclerView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(activity, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(activity, 0));
        function1.invoke(invoke);
        AnkoInternals.INSTANCE.addView(activity, (View) invoke);
        return invoke;
    }

    @NotNull
    public static /* synthetic */ RecyclerView themedRecyclerView$default(Activity activity, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(activity, "receiver$0");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(activity, i));
        AnkoInternals.INSTANCE.addView(activity, (View) invoke);
        return invoke;
    }

    @NotNull
    public static /* synthetic */ RecyclerView themedRecyclerView$default(Activity activity, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(activity, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(activity, i));
        function1.invoke(invoke);
        AnkoInternals.INSTANCE.addView(activity, (View) invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView themedRecyclerView(@NotNull Activity activity, int i, @NotNull Function1<? super _RecyclerView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(activity, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(activity, i));
        function1.invoke(invoke);
        AnkoInternals.INSTANCE.addView(activity, (View) invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView recyclerView(@NotNull ViewManager viewManager) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), 0));
        AnkoInternals.INSTANCE.addView(viewManager, invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView themedRecyclerView(@NotNull ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i));
        AnkoInternals.INSTANCE.addView(viewManager, invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView recyclerView(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(context, 0));
        AnkoInternals.INSTANCE.addView(context, invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView themedRecyclerView(@NotNull Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(context, i));
        AnkoInternals.INSTANCE.addView(context, invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView recyclerView(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "receiver$0");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(activity, 0));
        AnkoInternals.INSTANCE.addView(activity, (View) invoke);
        return invoke;
    }

    @NotNull
    public static final RecyclerView themedRecyclerView(@NotNull Activity activity, int i) {
        Intrinsics.checkParameterIsNotNull(activity, "receiver$0");
        _RecyclerView invoke = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(activity, i));
        AnkoInternals.INSTANCE.addView(activity, (View) invoke);
        return invoke;
    }
}

package org.jetbrains.anko.internals;

import android.app.Activity;
import android.app.Service;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompat;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewManager;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.io.Serializable;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedRange;
import kotlin.text.StringsKt;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.AnkoContextImpl;
import org.jetbrains.anko.AnkoException;
import org.jetbrains.anko.Orientation;
import org.jetbrains.anko.ScreenSize;
import org.jetbrains.anko.UiMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002UVB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0005\u001a\u00020\u0006\"\b\b\u0000\u0010\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u0002H\u0007¢\u0006\u0002\u0010\fJ%\u0010\u0005\u001a\u00020\u0006\"\b\b\u0000\u0010\u0007*\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u0002H\u0007¢\u0006\u0002\u0010\u000fJ%\u0010\u0005\u001a\u00020\u0006\"\b\b\u0000\u0010\u0007*\u00020\b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u0002H\u0007¢\u0006\u0002\u0010\u0012J\"\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\b2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0016JI\u0010\u0017\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u00072\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00070\u001a2\u001c\u0010\u001b\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d0\u001cH\u0007¢\u0006\u0002\u0010\u001eJ3\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00182\u001c\u0010\u001b\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d0\u001cH\u0003¢\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011J-\u0010#\u001a\u0002H\u0007\"\b\b\u0000\u0010\u0007*\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u00070\u001aH\u0007¢\u0006\u0002\u0010%JC\u0010&\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u001a2\u001c\u0010\u001b\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d0\u001cH\u0007¢\u0006\u0002\u0010'JK\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\n2\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u001a2\u0006\u0010*\u001a\u00020+2\u001c\u0010\u001b\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d0\u001cH\u0007¢\u0006\u0002\u0010,JE\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u0002000\u001a2\u001c\u0010\u001b\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d0\u001cH\u0007¢\u0006\u0002\u00101JC\u00102\u001a\u0002032\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u0002000\u001a2\u001c\u0010\u001b\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d0\u001cH\u0007¢\u0006\u0002\u00104J\u0006\u00105\u001a\u000206J\u0001\u00107\u001a\u0002032\u0006\u0010\r\u001a\u00020\u000e2\b\u00108\u001a\u0004\u0018\u0001092\u000e\u0010:\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010;2\b\u0010<\u001a\u0004\u0018\u00010\u00042\b\u0010=\u001a\u0004\u0018\u00010>2\b\u0010?\u001a\u0004\u0018\u0001032\b\u0010@\u001a\u0004\u0018\u00010+2\b\u0010A\u001a\u0004\u0018\u00010+2\b\u0010B\u001a\u0004\u0018\u00010C2\b\u0010D\u001a\u0004\u0018\u0001032\b\u0010E\u001a\u0004\u0018\u0001032\b\u0010F\u001a\u0004\u0018\u00010+H\u0007¢\u0006\u0002\u0010GJ0\u0010H\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u00072\u0006\u0010I\u001a\u00020J2\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u0002H\u00070\u0016H\b¢\u0006\u0002\u0010LJ\u0016\u0010M\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020+JO\u0010O\u001a\b\u0012\u0004\u0012\u0002H\u00070P\"\u0004\b\u0000\u0010\u0007*\u0002H\u00072\u0006\u0010\r\u001a\u00020\u000e2\u001d\u0010Q\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00070P\u0012\u0004\u0012\u00020\u00060\u0016¢\u0006\u0002\bR2\b\b\u0002\u0010S\u001a\u000203H\b¢\u0006\u0002\u0010TR\u000e\u0010\u0003\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000¨\u0006W"}, d2 = {"Lorg/jetbrains/anko/internals/AnkoInternals;", "", "()V", "NO_GETTER", "", "addView", "", "T", "Landroid/view/View;", "activity", "Landroid/app/Activity;", Promotion.ACTION_VIEW, "(Landroid/app/Activity;Landroid/view/View;)V", "ctx", "Landroid/content/Context;", "(Landroid/content/Context;Landroid/view/View;)V", "manager", "Landroid/view/ViewManager;", "(Landroid/view/ViewManager;Landroid/view/View;)V", "applyRecursively", "v", "style", "Lkotlin/Function1;", "createIntent", "Landroid/content/Intent;", "clazz", "Ljava/lang/Class;", NativeProtocol.WEB_DIALOG_PARAMS, "", "Lkotlin/Pair;", "(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)Landroid/content/Intent;", "fillIntentArguments", "intent", "(Landroid/content/Intent;[Lkotlin/Pair;)V", "getContext", "initiateView", "viewClass", "(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;", "internalStartActivity", "(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V", "internalStartActivityForResult", "act", "requestCode", "", "(Landroid/app/Activity;Ljava/lang/Class;I[Lkotlin/Pair;)V", "internalStartService", "Landroid/content/ComponentName;", NotificationCompat.CATEGORY_SERVICE, "Landroid/app/Service;", "(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)Landroid/content/ComponentName;", "internalStopService", "", "(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)Z", "noGetter", "", "testConfiguration", "screenSize", "Lorg/jetbrains/anko/ScreenSize;", "density", "Lkotlin/ranges/ClosedRange;", "language", "orientation", "Lorg/jetbrains/anko/Orientation;", "long", "fromSdk", "sdk", "uiMode", "Lorg/jetbrains/anko/UiMode;", "nightMode", "rightToLeft", "smallestWidth", "(Landroid/content/Context;Lorg/jetbrains/anko/ScreenSize;Lkotlin/ranges/ClosedRange;Ljava/lang/String;Lorg/jetbrains/anko/Orientation;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jetbrains/anko/UiMode;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)Z", "useCursor", "cursor", "Landroid/database/Cursor;", "f", "(Landroid/database/Cursor;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "wrapContextIfNeeded", "theme", "createAnkoContext", "Lorg/jetbrains/anko/AnkoContext;", "init", "Lkotlin/ExtensionFunctionType;", "setContentView", "(Ljava/lang/Object;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)Lorg/jetbrains/anko/AnkoContext;", "AnkoContextThemeWrapper", "InternalConfiguration", "commons-base_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Internals.kt */
public final class AnkoInternals {
    public static final AnkoInternals INSTANCE = new AnkoInternals();
    @NotNull
    public static final String NO_GETTER = "Property does not have a getter";

    private AnkoInternals() {
    }

    @NotNull
    public final Void noGetter() {
        throw new AnkoException(NO_GETTER);
    }

    /* access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lorg/jetbrains/anko/internals/AnkoInternals$AnkoContextThemeWrapper;", "Landroid/view/ContextThemeWrapper;", "base", "Landroid/content/Context;", "theme", "", "(Landroid/content/Context;I)V", "getTheme", "()I", "commons-base_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: Internals.kt */
    public static final class AnkoContextThemeWrapper extends ContextThemeWrapper {
        private final int theme;

        public AnkoContextThemeWrapper(@Nullable Context context, int i) {
            super(context, i);
            this.theme = i;
        }

        public final int getTheme() {
            return this.theme;
        }
    }

    public final <T extends View> void addView(@NotNull ViewManager viewManager, @NotNull T t) {
        Intrinsics.checkParameterIsNotNull(viewManager, "manager");
        Intrinsics.checkParameterIsNotNull(t, Promotion.ACTION_VIEW);
        if (viewManager instanceof ViewGroup) {
            ((ViewGroup) viewManager).addView(t);
        } else if (viewManager instanceof AnkoContext) {
            viewManager.addView(t, null);
        } else {
            throw new AnkoException(viewManager + " is the wrong parent");
        }
    }

    @NotNull
    public final Context wrapContextIfNeeded(@NotNull Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        if (i != 0) {
            return (!(context instanceof AnkoContextThemeWrapper) || ((AnkoContextThemeWrapper) context).getTheme() != i) ? new AnkoContextThemeWrapper(context, i) : context;
        }
        return context;
    }

    public final void applyRecursively(@NotNull View view, @NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Intrinsics.checkParameterIsNotNull(function1, "style");
        function1.invoke(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount() - 1;
            int i = 0;
            if (childCount >= 0) {
                while (true) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt != null) {
                        INSTANCE.applyRecursively(childAt, function1);
                    }
                    if (i != childCount) {
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @NotNull
    public final Context getContext(@NotNull ViewManager viewManager) {
        Intrinsics.checkParameterIsNotNull(viewManager, "manager");
        if (viewManager instanceof ViewGroup) {
            Context context = ((ViewGroup) viewManager).getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "manager.context");
            return context;
        } else if (viewManager instanceof AnkoContext) {
            return ((AnkoContext) viewManager).getCtx();
        } else {
            throw new AnkoException(viewManager + " is the wrong parent");
        }
    }

    @NotNull
    public static /* synthetic */ AnkoContext createAnkoContext$default(AnkoInternals ankoInternals, Object obj, Context context, Function1 function1, boolean z, int i, Object obj2) {
        if ((i & 4) != 0) {
            z = false;
        }
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        AnkoContextImpl ankoContextImpl = new AnkoContextImpl(context, obj, z);
        function1.invoke(ankoContextImpl);
        return ankoContextImpl;
    }

    @NotNull
    public final <T> AnkoContext<T> createAnkoContext(T t, @NotNull Context context, @NotNull Function1<? super AnkoContext<? extends T>, Unit> function1, boolean z) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        AnkoContextImpl ankoContextImpl = new AnkoContextImpl(context, t, z);
        function1.invoke(ankoContextImpl);
        return ankoContextImpl;
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0006¨\u0006\u000f"}, d2 = {"Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;", "", "()V", "SCREENLAYOUT_LAYOUTDIR_MASK", "", "getSCREENLAYOUT_LAYOUTDIR_MASK", "()I", "SCREENLAYOUT_LAYOUTDIR_RTL", "getSCREENLAYOUT_LAYOUTDIR_RTL", "SCREENLAYOUT_LAYOUTDIR_SHIFT", "getSCREENLAYOUT_LAYOUTDIR_SHIFT", "UI_MODE_TYPE_APPLIANCE", "getUI_MODE_TYPE_APPLIANCE", "UI_MODE_TYPE_WATCH", "getUI_MODE_TYPE_WATCH", "commons-base_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: Internals.kt */
    private static final class InternalConfiguration {
        public static final InternalConfiguration INSTANCE = new InternalConfiguration();
        private static final int SCREENLAYOUT_LAYOUTDIR_MASK = 192;
        private static final int SCREENLAYOUT_LAYOUTDIR_RTL = (2 << SCREENLAYOUT_LAYOUTDIR_SHIFT);
        private static final int SCREENLAYOUT_LAYOUTDIR_SHIFT = 6;
        private static final int UI_MODE_TYPE_APPLIANCE = 5;
        private static final int UI_MODE_TYPE_WATCH = 6;

        private InternalConfiguration() {
        }

        public final int getSCREENLAYOUT_LAYOUTDIR_MASK() {
            return SCREENLAYOUT_LAYOUTDIR_MASK;
        }

        public final int getSCREENLAYOUT_LAYOUTDIR_SHIFT() {
            return SCREENLAYOUT_LAYOUTDIR_SHIFT;
        }

        public final int getSCREENLAYOUT_LAYOUTDIR_RTL() {
            return SCREENLAYOUT_LAYOUTDIR_RTL;
        }

        public final int getUI_MODE_TYPE_APPLIANCE() {
            return UI_MODE_TYPE_APPLIANCE;
        }

        public final int getUI_MODE_TYPE_WATCH() {
            return UI_MODE_TYPE_WATCH;
        }
    }

    @JvmStatic
    @NotNull
    public static final <T> Intent createIntent(@NotNull Context context, @NotNull Class<? extends T> cls, @NotNull Pair<String, ? extends Object>[] pairArr) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(cls, "clazz");
        Intrinsics.checkParameterIsNotNull(pairArr, NativeProtocol.WEB_DIALOG_PARAMS);
        Intent intent = new Intent(context, cls);
        if (!(pairArr.length == 0)) {
            fillIntentArguments(intent, pairArr);
        }
        return intent;
    }

    @JvmStatic
    public static final void internalStartActivity(@NotNull Context context, @NotNull Class<? extends Activity> cls, @NotNull Pair<String, ? extends Object>[] pairArr) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(cls, "activity");
        Intrinsics.checkParameterIsNotNull(pairArr, NativeProtocol.WEB_DIALOG_PARAMS);
        context.startActivity(createIntent(context, cls, pairArr));
    }

    @JvmStatic
    public static final void internalStartActivityForResult(@NotNull Activity activity, @NotNull Class<? extends Activity> cls, int i, @NotNull Pair<String, ? extends Object>[] pairArr) {
        Intrinsics.checkParameterIsNotNull(activity, "act");
        Intrinsics.checkParameterIsNotNull(cls, "activity");
        Intrinsics.checkParameterIsNotNull(pairArr, NativeProtocol.WEB_DIALOG_PARAMS);
        activity.startActivityForResult(createIntent(activity, cls, pairArr), i);
    }

    @JvmStatic
    @Nullable
    public static final ComponentName internalStartService(@NotNull Context context, @NotNull Class<? extends Service> cls, @NotNull Pair<String, ? extends Object>[] pairArr) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(cls, NotificationCompat.CATEGORY_SERVICE);
        Intrinsics.checkParameterIsNotNull(pairArr, NativeProtocol.WEB_DIALOG_PARAMS);
        return context.startService(createIntent(context, cls, pairArr));
    }

    @JvmStatic
    public static final boolean internalStopService(@NotNull Context context, @NotNull Class<? extends Service> cls, @NotNull Pair<String, ? extends Object>[] pairArr) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(cls, NotificationCompat.CATEGORY_SERVICE);
        Intrinsics.checkParameterIsNotNull(pairArr, NativeProtocol.WEB_DIALOG_PARAMS);
        return context.stopService(createIntent(context, cls, pairArr));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0028, code lost:
        kotlin.jvm.internal.InlineMarker.finallyStart(1);
        kotlin.io.CloseableKt.closeFinally(r3, r0);
        kotlin.jvm.internal.InlineMarker.finallyEnd(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0031, code lost:
        throw r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0024, code lost:
        r4 = move-exception;
     */
    @kotlin.jvm.JvmStatic
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T useCursor(@org.jetbrains.annotations.NotNull android.database.Cursor r3, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super android.database.Cursor, ? extends T> r4) {
        /*
            java.lang.String r0 = "cursor"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            java.lang.String r0 = "f"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 1
            r2 = 16
            if (r0 < r2) goto L_0x0032
            java.io.Closeable r3 = (java.io.Closeable) r3
            r0 = 0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            java.lang.Object r4 = r4.invoke(r3)     // Catch:{ Throwable -> 0x0026 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            kotlin.io.CloseableKt.closeFinally(r3, r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            goto L_0x003f
        L_0x0024:
            r4 = move-exception
            goto L_0x0028
        L_0x0026:
            r0 = move-exception
            throw r0     // Catch:{ all -> 0x0024 }
        L_0x0028:
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            kotlin.io.CloseableKt.closeFinally(r3, r0)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r4
        L_0x0032:
            java.lang.Object r4 = r4.invoke(r3)     // Catch:{ all -> 0x0040 }
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r3.close()     // Catch:{ Exception -> 0x003c }
        L_0x003c:
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
        L_0x003f:
            return r4
        L_0x0040:
            r4 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r1)
            r3.close()     // Catch:{ Exception -> 0x0047 }
        L_0x0047:
            kotlin.jvm.internal.InlineMarker.finallyEnd(r1)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jetbrains.anko.internals.AnkoInternals.useCursor(android.database.Cursor, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:?, code lost:
        r5 = r1.invoke().newInstance(r5, null);
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, "getConstructor2().newInstance(ctx, null)");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0041, code lost:
        return (T) ((android.view.View) r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0063, code lost:
        throw new org.jetbrains.anko.AnkoException("Can't initiate View of class " + r6.getName() + ": can't find proper constructor");
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:4:0x002a */
    @kotlin.jvm.JvmStatic
    @org.jetbrains.annotations.NotNull
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T extends android.view.View> T initiateView(@org.jetbrains.annotations.NotNull android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.Class<T> r6) {
        /*
            java.lang.String r0 = "ctx"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            java.lang.String r0 = "viewClass"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0)
            org.jetbrains.anko.internals.AnkoInternals$initiateView$1 r0 = new org.jetbrains.anko.internals.AnkoInternals$initiateView$1
            r0.<init>(r6)
            org.jetbrains.anko.internals.AnkoInternals$initiateView$2 r1 = new org.jetbrains.anko.internals.AnkoInternals$initiateView$2
            r1.<init>(r6)
            r2 = 0
            r3 = 1
            java.lang.reflect.Constructor r0 = r0.invoke()     // Catch:{ NoSuchMethodException -> 0x002a }
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch:{ NoSuchMethodException -> 0x002a }
            r4[r2] = r5     // Catch:{ NoSuchMethodException -> 0x002a }
            java.lang.Object r0 = r0.newInstance(r4)     // Catch:{ NoSuchMethodException -> 0x002a }
            java.lang.String r4 = "getConstructor1().newInstance(ctx)"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r4)     // Catch:{ NoSuchMethodException -> 0x002a }
            android.view.View r0 = (android.view.View) r0     // Catch:{ NoSuchMethodException -> 0x002a }
            return r0
        L_0x002a:
            java.lang.reflect.Constructor r0 = r1.invoke()     // Catch:{ NoSuchMethodException -> 0x0042 }
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ NoSuchMethodException -> 0x0042 }
            r1[r2] = r5     // Catch:{ NoSuchMethodException -> 0x0042 }
            r5 = 0
            r1[r3] = r5     // Catch:{ NoSuchMethodException -> 0x0042 }
            java.lang.Object r5 = r0.newInstance(r1)     // Catch:{ NoSuchMethodException -> 0x0042 }
            java.lang.String r0 = "getConstructor2().newInstance(ctx, null)"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r0)     // Catch:{ NoSuchMethodException -> 0x0042 }
            android.view.View r5 = (android.view.View) r5     // Catch:{ NoSuchMethodException -> 0x0042 }
            return r5
        L_0x0042:
            org.jetbrains.anko.AnkoException r5 = new org.jetbrains.anko.AnkoException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Can't initiate View of class "
            r0.append(r1)
            java.lang.String r6 = r6.getName()
            r0.append(r6)
            java.lang.String r6 = ": can't find proper constructor"
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            r5.<init>(r6)
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jetbrains.anko.internals.AnkoInternals.initiateView(android.content.Context, java.lang.Class):android.view.View");
    }

    @JvmStatic
    public static final boolean testConfiguration(@NotNull Context context, @Nullable ScreenSize screenSize, @Nullable ClosedRange<Integer> closedRange, @Nullable String str, @Nullable Orientation orientation, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable UiMode uiMode, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Integer num3) {
        String str2;
        DisplayMetrics displayMetrics;
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Resources resources = context.getResources();
        UiModeManager uiModeManager = null;
        Configuration configuration = resources != null ? resources.getConfiguration() : null;
        if (screenSize != null) {
            if (configuration != null) {
                switch (configuration.screenLayout & 15) {
                    case 1:
                        if (screenSize != ScreenSize.SMALL) {
                            return false;
                        }
                        break;
                    case 2:
                        if (screenSize != ScreenSize.NORMAL) {
                            return false;
                        }
                        break;
                    case 3:
                        if (screenSize != ScreenSize.LARGE) {
                            return false;
                        }
                        break;
                    case 4:
                        if (screenSize != ScreenSize.XLARGE) {
                            return false;
                        }
                        break;
                }
            } else {
                return false;
            }
        }
        if (closedRange != null) {
            Resources resources2 = context.getResources();
            if (resources2 == null || (displayMetrics = resources2.getDisplayMetrics()) == null) {
                return false;
            }
            int i = displayMetrics.densityDpi;
            if (!closedRange.contains(Integer.valueOf(i)) || i == closedRange.getEndInclusive().intValue()) {
                return false;
            }
        }
        if (str != null) {
            Locale locale = Locale.getDefault();
            if (StringsKt.indexOf$default((CharSequence) str, '_', 0, false, 6, (Object) null) >= 0) {
                str2 = locale.toString();
            } else {
                Intrinsics.checkExpressionValueIsNotNull(locale, "locale");
                str2 = locale.getLanguage();
            }
            if (!Intrinsics.areEqual(str2, str)) {
                return false;
            }
        }
        if (orientation != null) {
            if (configuration != null) {
                switch (configuration.orientation) {
                    case 1:
                        if (orientation != Orientation.PORTRAIT) {
                            return false;
                        }
                        break;
                    case 2:
                        if (orientation != Orientation.LANDSCAPE) {
                            return false;
                        }
                        break;
                    case 3:
                        if (orientation != Orientation.SQUARE) {
                            return false;
                        }
                        break;
                }
            } else {
                return false;
            }
        }
        if (bool != null) {
            if (configuration == null) {
                return false;
            }
            int i2 = configuration.screenLayout & 48;
            if (i2 == 32 && !bool.booleanValue()) {
                return false;
            }
            if (i2 == 16 && bool.booleanValue()) {
                return false;
            }
        }
        if (num != null && Intrinsics.compare(Build.VERSION.SDK_INT, num.intValue()) < 0) {
            return false;
        }
        if (num2 != null && Build.VERSION.SDK_INT != num2.intValue()) {
            return false;
        }
        if (uiMode != null) {
            if (configuration == null) {
                return false;
            }
            int i3 = configuration.uiMode & 15;
            if (i3 == 1) {
                if (uiMode != UiMode.NORMAL) {
                    return false;
                }
            } else if (i3 == 2) {
                if (uiMode != UiMode.DESK) {
                    return false;
                }
            } else if (i3 == 3) {
                if (uiMode != UiMode.CAR) {
                    return false;
                }
            } else if (i3 == 4) {
                if (uiMode != UiMode.TELEVISION) {
                    return false;
                }
            } else if (i3 == InternalConfiguration.INSTANCE.getUI_MODE_TYPE_APPLIANCE()) {
                if (uiMode != UiMode.APPLIANCE) {
                    return false;
                }
            } else if (i3 == InternalConfiguration.INSTANCE.getUI_MODE_TYPE_WATCH() && uiMode != UiMode.WATCH) {
                return false;
            }
        }
        if (bool2 != null) {
            Object systemService = context.getSystemService("uimode");
            if (systemService instanceof UiModeManager) {
                uiModeManager = systemService;
            }
            UiModeManager uiModeManager2 = uiModeManager;
            if (uiModeManager2 == null) {
                return false;
            }
            int nightMode = uiModeManager2.getNightMode();
            if (nightMode == 2 && !bool2.booleanValue()) {
                return false;
            }
            if (nightMode == 1 && bool2.booleanValue()) {
                return false;
            }
        }
        if (bool3 != null) {
            if (configuration == null) {
                return false;
            }
            if (!Intrinsics.areEqual(Boolean.valueOf((configuration.screenLayout & InternalConfiguration.INSTANCE.getSCREENLAYOUT_LAYOUTDIR_MASK()) == InternalConfiguration.INSTANCE.getSCREENLAYOUT_LAYOUTDIR_RTL()), bool3)) {
                return false;
            }
        }
        if (num3 != null) {
            if (configuration == null) {
                return false;
            }
            if (configuration.smallestScreenWidthDp == 0) {
                if (num3.intValue() != 0) {
                    return false;
                }
            } else if (Intrinsics.compare(configuration.smallestScreenWidthDp, num3.intValue()) < 0) {
                return false;
            }
        }
        return true;
    }

    public final <T extends View> void addView(@NotNull Context context, @NotNull T t) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(t, Promotion.ACTION_VIEW);
        AnkoInternals ankoInternals = INSTANCE;
        INSTANCE.addView(new AnkoContextImpl(context, context, false), t);
    }

    public final <T extends View> void addView(@NotNull Activity activity, @NotNull T t) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(t, Promotion.ACTION_VIEW);
        INSTANCE.addView(new AnkoContextImpl(activity, this, true), t);
    }

    @JvmStatic
    private static final void fillIntentArguments(Intent intent, Pair<String, ? extends Object>[] pairArr) {
        for (Pair<String, ? extends Object> pair : pairArr) {
            Object second = pair.getSecond();
            if (second == null) {
                intent.putExtra(pair.getFirst(), (Serializable) null);
            } else if (second instanceof Integer) {
                intent.putExtra(pair.getFirst(), ((Number) second).intValue());
            } else if (second instanceof Long) {
                intent.putExtra(pair.getFirst(), ((Number) second).longValue());
            } else if (second instanceof CharSequence) {
                intent.putExtra(pair.getFirst(), (CharSequence) second);
            } else if (second instanceof String) {
                intent.putExtra(pair.getFirst(), (String) second);
            } else if (second instanceof Float) {
                intent.putExtra(pair.getFirst(), ((Number) second).floatValue());
            } else if (second instanceof Double) {
                intent.putExtra(pair.getFirst(), ((Number) second).doubleValue());
            } else if (second instanceof Character) {
                intent.putExtra(pair.getFirst(), ((Character) second).charValue());
            } else if (second instanceof Short) {
                intent.putExtra(pair.getFirst(), ((Number) second).shortValue());
            } else if (second instanceof Boolean) {
                intent.putExtra(pair.getFirst(), ((Boolean) second).booleanValue());
            } else if (second instanceof Serializable) {
                intent.putExtra(pair.getFirst(), (Serializable) second);
            } else if (second instanceof Bundle) {
                intent.putExtra(pair.getFirst(), (Bundle) second);
            } else if (second instanceof Parcelable) {
                intent.putExtra(pair.getFirst(), (Parcelable) second);
            } else if (second instanceof Object[]) {
                Object[] objArr = (Object[]) second;
                if (objArr instanceof CharSequence[]) {
                    intent.putExtra(pair.getFirst(), (Serializable) second);
                } else if (objArr instanceof String[]) {
                    intent.putExtra(pair.getFirst(), (Serializable) second);
                } else if (objArr instanceof Parcelable[]) {
                    intent.putExtra(pair.getFirst(), (Serializable) second);
                } else {
                    throw new AnkoException("Intent extra " + pair.getFirst() + " has wrong type " + objArr.getClass().getName());
                }
            } else if (second instanceof int[]) {
                intent.putExtra(pair.getFirst(), (int[]) second);
            } else if (second instanceof long[]) {
                intent.putExtra(pair.getFirst(), (long[]) second);
            } else if (second instanceof float[]) {
                intent.putExtra(pair.getFirst(), (float[]) second);
            } else if (second instanceof double[]) {
                intent.putExtra(pair.getFirst(), (double[]) second);
            } else if (second instanceof char[]) {
                intent.putExtra(pair.getFirst(), (char[]) second);
            } else if (second instanceof short[]) {
                intent.putExtra(pair.getFirst(), (short[]) second);
            } else if (second instanceof boolean[]) {
                intent.putExtra(pair.getFirst(), (boolean[]) second);
            } else {
                throw new AnkoException("Intent extra " + pair.getFirst() + " has wrong type " + second.getClass().getName());
            }
        }
    }
}

package com.liber8tech.tago.util.extension;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.Settings;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.content.res.AppCompatResources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a\u0017\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\u0004\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\u0005\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\u0006\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\u0007\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\b\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\t\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\n\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\u000b\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\f\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\r\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\u000e\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0017\u0010\u000f\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\b\u001a\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u0006\u0010\u0012\u001a\u00020\u0011\u001a\u0006\u0010\u0013\u001a\u00020\u0011\u001a\u0006\u0010\u0014\u001a\u00020\u0011\u001a\u0006\u0010\u0015\u001a\u00020\u0011\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u0018\u001a\n\u0010\u0019\u001a\u00020\u0017*\u00020\u0018\u001a\n\u0010\u001a\u001a\u00020\u001b*\u00020\u0018\u001a\u0012\u0010\u001c\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u0017\u001a\u0012\u0010\u001e\u001a\u00020\u001f*\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u0017\u001a\u0012\u0010 \u001a\u00020\u0011*\u00020\u00182\u0006\u0010!\u001a\u00020\"\u001a\n\u0010#\u001a\u00020\u0011*\u00020\u0018\u001a\n\u0010$\u001a\u00020\u001b*\u00020\u0018\u001a\u0012\u0010%\u001a\u00020\u0017*\u00020\u00182\u0006\u0010&\u001a\u00020\u0017\u001a\u0012\u0010'\u001a\u00020(*\u00020\u00182\u0006\u0010)\u001a\u00020\u0017\u001a\n\u0010*\u001a\u00020\u0011*\u00020\u0018\u001a\n\u0010+\u001a\u00020\u0017*\u00020\u0018\u001a\n\u0010,\u001a\u00020\u0017*\u00020\u0018\u001a\n\u0010-\u001a\u00020\u0017*\u00020\u0018\u001a\n\u0010.\u001a\u00020\u0017*\u00020\u0018\u001a\u001a\u0010/\u001a\u00020(*\u00020\u00182\u0006\u00100\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0017\u001a\u001a\u00101\u001a\u00020(*\u00020\u00182\u0006\u00100\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u0017¨\u00063"}, d2 = {"doBelowKitKat", "", "f", "Lkotlin/Function0;", "doBelowLollipop", "doBelowMarshmallow", "doFromJellyBean", "doFromKitKat", "doFromLollipop", "doFromMarshmallow", "doFromNougat", "doIfJellyBean", "doIfKitKat", "doIfLollipop", "doIfMarshmallow", "doIfNougat", "gtJellyBean", "", "gtKitKat", "gtLollipop", "gtMarshmallow", "gtNougat", "actionBarHeight", "", "Landroid/content/Context;", "appVersionCode", "appVersionName", "", "attrAsDimen", "value", "attribute", "Landroid/util/TypedValue;", "canResolveIntent", "intent", "Landroid/content/Intent;", "deviceHasNavBar", "deviceInfo", "getColorCompat", "colorResId", "getDrawableCompat", "Landroid/graphics/drawable/Drawable;", "id", "isNotificationAccessGranted", "navBarCorrection", "navigationBarHeight", "statusBarCorrection", "statusBarHeight", "tintedDrawable", "drawableResId", "tintedListDrawable", "colorStateListResId", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: AndroidExtensions.kt */
public final class AndroidExtensionsKt {
    public static final void doFromJellyBean(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT >= 16) {
            function0.invoke();
        }
    }

    public static final void doIfJellyBean(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT == 16) {
            function0.invoke();
        }
    }

    public static final void doFromKitKat(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT >= 19) {
            function0.invoke();
        }
    }

    public static final void doBelowKitKat(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT <= 19) {
            function0.invoke();
        }
    }

    public static final void doIfKitKat(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT == 19) {
            function0.invoke();
        }
    }

    public static final void doFromLollipop(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT >= 21) {
            function0.invoke();
        }
    }

    public static final void doBelowLollipop(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT <= 21) {
            function0.invoke();
        }
    }

    public static final void doIfLollipop(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT == 21) {
            function0.invoke();
        }
    }

    public static final void doFromMarshmallow(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT >= 23) {
            function0.invoke();
        }
    }

    public static final void doBelowMarshmallow(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT <= 23) {
            function0.invoke();
        }
    }

    public static final void doIfMarshmallow(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT == 23) {
            function0.invoke();
        }
    }

    public static final void doFromNougat(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT >= 24) {
            function0.invoke();
        }
    }

    public static final void doIfNougat(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "f");
        if (Build.VERSION.SDK_INT == 24) {
            function0.invoke();
        }
    }

    public static final boolean gtJellyBean() {
        return Build.VERSION.SDK_INT >= 16;
    }

    public static final boolean gtKitKat() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public static final boolean gtLollipop() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static final boolean gtMarshmallow() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static final boolean gtNougat() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static final int statusBarHeight(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static final int statusBarCorrection(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        if (gtKitKat()) {
            return statusBarHeight(context);
        }
        return 0;
    }

    public static final boolean deviceHasNavBar(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        if (!gtKitKat()) {
            return false;
        }
        Resources resources = context.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Object systemService = context.getSystemService("window");
        if (systemService != null) {
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (displayMetrics.heightPixels != point.y) {
                return true;
            }
            return false;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
    }

    public static final int navigationBarHeight(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static final int navBarCorrection(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        if (deviceHasNavBar(context)) {
            return navigationBarHeight(context);
        }
        return 0;
    }

    public static final int actionBarHeight(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(16843499, typedValue, true)) {
            return 0;
        }
        int i = typedValue.data;
        Resources resources = context.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        return TypedValue.complexToDimensionPixelSize(i, resources.getDisplayMetrics());
    }

    public static final int appVersionCode(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    @NotNull
    public static final String appVersionName(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            Intrinsics.checkExpressionValueIsNotNull(str, "packageInfo.versionName");
            return str;
        } catch (Exception unused) {
            return "";
        }
    }

    public static final boolean isNotificationAccessGranted(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        Intrinsics.checkExpressionValueIsNotNull(string, "enabledNotificationListeners");
        String str = string;
        if (!(str.length() > 0)) {
            return false;
        }
        String packageName = context.getPackageName();
        Intrinsics.checkExpressionValueIsNotNull(packageName, "packageName");
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) packageName, false, 2, (Object) null)) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final String deviceInfo(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        String str = Build.MANUFACTURER + StringUtils.SPACE + Build.MODEL + ", API level " + Build.VERSION.SDK_INT;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return str + ", version " + packageInfo.versionName + "(" + packageInfo.versionCode + ")";
        } catch (Exception unused) {
            return str;
        }
    }

    public static final boolean canResolveIntent(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        return context.getPackageManager().queryIntentActivities(intent, 0).size() > 0;
    }

    @NotNull
    public static final TypedValue attribute(@NotNull Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue;
    }

    public static final int attrAsDimen(@NotNull Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        int i2 = attribute(context, i).data;
        Resources resources = context.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        return TypedValue.complexToDimensionPixelSize(i2, resources.getDisplayMetrics());
    }

    @NotNull
    public static final Drawable tintedListDrawable(@NotNull Context context, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Drawable drawable = AppCompatResources.getDrawable(context, i);
        if (drawable == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(drawable, "AppCompatResources.getDr…le(this, drawableResId)!!");
        Drawable wrap = DrawableCompat.wrap(drawable);
        DrawableCompat.setTintList(wrap, AppCompatResources.getColorStateList(context, i2));
        Intrinsics.checkExpressionValueIsNotNull(wrap, "drawableCompat");
        return wrap;
    }

    @NotNull
    public static final Drawable tintedDrawable(@NotNull Context context, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Drawable drawable = AppCompatResources.getDrawable(context, i);
        if (drawable == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(drawable, "AppCompatResources.getDr…le(this, drawableResId)!!");
        Drawable wrap = DrawableCompat.wrap(drawable);
        DrawableCompat.setTint(wrap, getColorCompat(context, i2));
        Intrinsics.checkExpressionValueIsNotNull(wrap, "drawableCompat");
        return wrap;
    }

    public static final int getColorCompat(@NotNull Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        return ContextCompat.getColor(context, i);
    }

    @NotNull
    public static final Drawable getDrawableCompat(@NotNull Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Drawable drawable = ContextCompat.getDrawable(context, i);
        if (drawable == null) {
            Intrinsics.throwNpe();
        }
        return drawable;
    }
}

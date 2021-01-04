package com.liber8tech.tago.service;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import io.reactivex.Observable;
import io.reactivex.subjects.BehaviorSubject;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\tH\u0002J\u0006\u0010\u000f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\u0014\u001a\u00020\tH\u0002J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\f\u0012\n \n*\u0004\u0018\u00010\t0\t0\bX\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/liber8tech/tago/service/LocationService;", "", "ctx", "Landroid/content/Context;", "(Landroid/content/Context;)V", "locationManager", "Landroid/location/LocationManager;", "locationStates", "Lio/reactivex/subjects/BehaviorSubject;", "", "kotlin.jvm.PlatformType", "checkPermission", "permission", "", "hasAccess", "hasPermission", "requestPermission", "", "activity", "Landroid/app/Activity;", "required", "states", "Lio/reactivex/Observable;", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: LocationService.kt */
public final class LocationService {
    public static final Companion Companion = new Companion(null);
    public static final int locationRequest = 0;
    private final Context ctx;
    private final LocationManager locationManager;
    private final BehaviorSubject<Boolean> locationStates;

    @Inject
    public LocationService(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        this.ctx = context;
        Object systemService = this.ctx.getSystemService("location");
        if (systemService != null) {
            this.locationManager = (LocationManager) systemService;
            BehaviorSubject<Boolean> createDefault = BehaviorSubject.createDefault(Boolean.valueOf(hasAccess()));
            Intrinsics.checkExpressionValueIsNotNull(createDefault, "BehaviorSubject.createDefault(hasAccess())");
            this.locationStates = createDefault;
            this.ctx.registerReceiver(new LocationService$receiver$1(this), new IntentFilter("android.location.PROVIDERS_CHANGED"));
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.location.LocationManager");
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/liber8tech/tago/service/LocationService$Companion;", "", "()V", "locationRequest", "", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: LocationService.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @NotNull
    public final Observable<Boolean> states() {
        return this.locationStates;
    }

    public final boolean hasPermission() {
        return checkPermission("android.permission.ACCESS_COARSE_LOCATION") || checkPermission("android.permission.ACCESS_FINE_LOCATION");
    }

    public final void requestPermission(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        ActivityCompat.requestPermissions(activity, new String[]{"android.permission.ACCESS_COARSE_LOCATION"}, 0);
    }

    private final boolean checkPermission(String str) {
        return Build.VERSION.SDK_INT < 23 || this.ctx.checkSelfPermission(str) == 0;
    }

    private final boolean required() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* access modifiers changed from: private */
    public final boolean hasAccess() {
        return !required() || this.locationManager.isProviderEnabled("network") || this.locationManager.isProviderEnabled("gps");
    }
}

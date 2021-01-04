package com.liber8tech.tago.service;

import android.content.Context;
import com.liber8tech.tago.util.RuntimeConfig;
import io.reactivex.Single;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fX\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001b"}, d2 = {"Lcom/liber8tech/tago/service/FirmwareService;", "", "retrofit", "Lretrofit2/Retrofit;", "context", "Landroid/content/Context;", "runtime", "Lcom/liber8tech/tago/util/RuntimeConfig;", "(Lretrofit2/Retrofit;Landroid/content/Context;Lcom/liber8tech/tago/util/RuntimeConfig;)V", "getContext", "()Landroid/content/Context;", "firmwareApi", "Lcom/liber8tech/tago/service/FirmwareApi;", "kotlin.jvm.PlatformType", "isFirmwareUpdateTried", "", "()Z", "setFirmwareUpdateTried", "(Z)V", "getRuntime", "()Lcom/liber8tech/tago/util/RuntimeConfig;", "getAndStoreFirmware", "Lio/reactivex/Single;", "", "firmwareData", "Lcom/liber8tech/tago/service/FirmwareResponse;", "getLatestFirmware", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: FirmwareService.kt */
public final class FirmwareService {
    @NotNull
    private final Context context;
    private final FirmwareApi firmwareApi;
    private boolean isFirmwareUpdateTried;
    @NotNull
    private final RuntimeConfig runtime;

    @Inject
    public FirmwareService(@NotNull Retrofit retrofit, @NotNull Context context2, @NotNull RuntimeConfig runtimeConfig) {
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Intrinsics.checkParameterIsNotNull(context2, "context");
        Intrinsics.checkParameterIsNotNull(runtimeConfig, "runtime");
        this.context = context2;
        this.runtime = runtimeConfig;
        this.firmwareApi = (FirmwareApi) retrofit.create(FirmwareApi.class);
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final RuntimeConfig getRuntime() {
        return this.runtime;
    }

    public final boolean isFirmwareUpdateTried() {
        return this.isFirmwareUpdateTried;
    }

    public final void setFirmwareUpdateTried(boolean z) {
        this.isFirmwareUpdateTried = z;
    }

    @NotNull
    public final Single<Unit> getLatestFirmware() {
        Single<R> flatMap = this.firmwareApi.getLatestFirmware().flatMap(new FirmwareService$getLatestFirmware$1(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "firmwareApi.getLatestFir…t(Unit)\n        }\n      }");
        return flatMap;
    }

    /* access modifiers changed from: private */
    public final Single<Unit> getAndStoreFirmware(FirmwareResponse firmwareResponse) {
        Single<Unit> create = Single.create(new FirmwareService$getAndStoreFirmware$1(this, firmwareResponse));
        Intrinsics.checkExpressionValueIsNotNull(create, "Single.create({ emitter …ception())\n      }\n    })");
        return create;
    }
}

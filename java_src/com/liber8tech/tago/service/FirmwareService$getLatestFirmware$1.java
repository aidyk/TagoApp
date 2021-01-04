package com.liber8tech.tago.service;

import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Single;", "", "kotlin.jvm.PlatformType", "it", "Lcom/liber8tech/tago/service/FirmwareResponse;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: FirmwareService.kt */
public final class FirmwareService$getLatestFirmware$1<T, R> implements Function<T, SingleSource<? extends R>> {
    final /* synthetic */ FirmwareService this$0;

    FirmwareService$getLatestFirmware$1(FirmwareService firmwareService) {
        this.this$0 = firmwareService;
    }

    public final Single<Unit> apply(@NotNull FirmwareResponse firmwareResponse) {
        Intrinsics.checkParameterIsNotNull(firmwareResponse, "it");
        Timber.d("", new Object[0]);
        String latestFirmwareVersion = this.this$0.getRuntime().getLatestFirmwareVersion();
        if (!(latestFirmwareVersion == null || latestFirmwareVersion.length() == 0) && !(!Intrinsics.areEqual(this.this$0.getRuntime().getLatestFirmwareVersion(), firmwareResponse.getVersion()))) {
            return Single.just(Unit.INSTANCE);
        }
        Timber.d("New firmware saved to storage", new Object[0]);
        return this.this$0.getAndStoreFirmware(firmwareResponse);
    }
}

package com.liber8tech.tago.service;

import io.reactivex.Single;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.http.GET;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bb\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'¨\u0006\u0005"}, d2 = {"Lcom/liber8tech/tago/service/FirmwareApi;", "", "getLatestFirmware", "Lio/reactivex/Single;", "Lcom/liber8tech/tago/service/FirmwareResponse;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: FirmwareService.kt */
public interface FirmwareApi {
    @GET("v1/firmware")
    @NotNull
    Single<FirmwareResponse> getLatestFirmware();
}

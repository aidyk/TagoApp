package com.liber8tech.tago.service;

import com.liber8tech.tago.R;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleOnSubscribe;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00010\u00010\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "emitter", "Lio/reactivex/SingleEmitter;", "kotlin.jvm.PlatformType", "subscribe"}, k = 3, mv = {1, 1, 13})
/* compiled from: FirmwareService.kt */
public final class FirmwareService$getAndStoreFirmware$1<T> implements SingleOnSubscribe<T> {
    final /* synthetic */ FirmwareResponse $firmwareData;
    final /* synthetic */ FirmwareService this$0;

    FirmwareService$getAndStoreFirmware$1(FirmwareService firmwareService, FirmwareResponse firmwareResponse) {
        this.this$0 = firmwareService;
        this.$firmwareData = firmwareResponse;
    }

    @Override // io.reactivex.SingleOnSubscribe
    public final void subscribe(@NotNull SingleEmitter<Unit> singleEmitter) {
        Intrinsics.checkParameterIsNotNull(singleEmitter, "emitter");
        Response execute = new OkHttpClient.Builder().build().newCall(new Request.Builder().url(this.$firmwareData.getUrl()).build()).execute();
        Intrinsics.checkExpressionValueIsNotNull(execute, "response");
        if (execute.isSuccessful()) {
            FileOutputStream openFileOutput = this.this$0.getContext().openFileOutput(this.this$0.getContext().getString(R.string.firmware_filename), 0);
            ResponseBody body = execute.body();
            openFileOutput.write(body != null ? body.bytes() : null);
            openFileOutput.close();
            this.this$0.getRuntime().setLatestFirmwareVersion(this.$firmwareData.getVersion());
            singleEmitter.onSuccess(Unit.INSTANCE);
            return;
        }
        singleEmitter.onError(new IOException());
    }
}

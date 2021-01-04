package com.liber8tech.tago.service;

import com.liber8tech.tago.model.TagoDevice;
import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.Observable;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bJ\u0012\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\r0\bJ\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000f\u001a\u00020\tJ\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/liber8tech/tago/service/TagoApiService;", "", "retrofit", "Lretrofit2/Retrofit;", "(Lretrofit2/Retrofit;)V", "syncApi", "Lcom/liber8tech/tago/service/SyncApi;", "delete", "Lio/reactivex/Observable;", "Lcom/liber8tech/tago/model/TagoDevice;", "id", "", "get", "", "update", "device", "Lcom/polidea/rxandroidble2/RxBleDevice;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoApiService.kt */
public final class TagoApiService {
    private final SyncApi syncApi;

    @Inject
    public TagoApiService(@NotNull Retrofit retrofit) {
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(SyncApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(SyncApi::class.java)");
        this.syncApi = (SyncApi) create;
    }

    @NotNull
    public final Observable<TagoDevice> update(@NotNull RxBleDevice rxBleDevice) {
        Intrinsics.checkParameterIsNotNull(rxBleDevice, "device");
        SyncApi syncApi2 = this.syncApi;
        String macAddress = rxBleDevice.getMacAddress();
        Intrinsics.checkExpressionValueIsNotNull(macAddress, "device.macAddress");
        String name = rxBleDevice.getName();
        if (name == null) {
            name = "empty";
        }
        return syncApi2.update(new TagoDevice(macAddress, name));
    }

    @NotNull
    public final Observable<TagoDevice> update(@NotNull TagoDevice tagoDevice) {
        Intrinsics.checkParameterIsNotNull(tagoDevice, "device");
        return this.syncApi.update(tagoDevice);
    }

    @NotNull
    public final Observable<List<TagoDevice>> get() {
        return this.syncApi.get();
    }

    @NotNull
    public final Observable<TagoDevice> delete(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        return this.syncApi.delete(str);
    }
}

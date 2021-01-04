package com.liber8tech.tago.service;

import com.liber8tech.tago.model.TagoDevice;
import com.liber8tech.tago.util.RxRealm;
import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.Observable;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a \u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b0\nJ\u0018\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000b0\nJ\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u0012\u001a\u00020\u0013J\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\nJ\u001c\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\n2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\f0\nJ\u0012\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\nJ\u0012\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\nJ\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00110\nJ\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u001d\u001a\u00020\rJ\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/liber8tech/tago/service/TagoService;", "", "apiService", "Lcom/liber8tech/tago/service/TagoApiService;", "bluetoothService", "Lcom/liber8tech/tago/service/BluetoothService;", "locationService", "Lcom/liber8tech/tago/service/LocationService;", "(Lcom/liber8tech/tago/service/TagoApiService;Lcom/liber8tech/tago/service/BluetoothService;Lcom/liber8tech/tago/service/LocationService;)V", "allDevices", "Lio/reactivex/Observable;", "Lkotlin/Pair;", "", "Lcom/polidea/rxandroidble2/RxBleDevice;", "bleAndLocationStates", "", "delete", "", "id", "", "deleteAll", "devices", "own", "get", "Lcom/liber8tech/tago/model/TagoDevice;", "nearByDevices", "ownDevices", "sync", "update", "device", "lowBat", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoService.kt */
public final class TagoService {
    private final TagoApiService apiService;
    private final BluetoothService bluetoothService;
    private final LocationService locationService;

    @Inject
    public TagoService(@NotNull TagoApiService tagoApiService, @NotNull BluetoothService bluetoothService2, @NotNull LocationService locationService2) {
        Intrinsics.checkParameterIsNotNull(tagoApiService, "apiService");
        Intrinsics.checkParameterIsNotNull(bluetoothService2, "bluetoothService");
        Intrinsics.checkParameterIsNotNull(locationService2, "locationService");
        this.apiService = tagoApiService;
        this.bluetoothService = bluetoothService2;
        this.locationService = locationService2;
    }

    @NotNull
    public final Observable<List<TagoDevice>> get() {
        return RxRealm.INSTANCE.findAll(TagoDevice.class);
    }

    @NotNull
    public final Observable<Unit> update(@NotNull RxBleDevice rxBleDevice) {
        Intrinsics.checkParameterIsNotNull(rxBleDevice, "device");
        Observable<R> flatMap = this.apiService.update(rxBleDevice).flatMap(TagoService$update$1.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "apiService.update(device…tMap { RxRealm.save(it) }");
        return flatMap;
    }

    @NotNull
    public final Observable<Unit> update(@NotNull String str, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        Observable<R> flatMap = RxRealm.INSTANCE.mainRealm().flatMap(new TagoService$update$$inlined$transactionWithResult$1(str, z));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        Observable<R> flatMap2 = flatMap.flatMap(new TagoService$update$3(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap2, "RxRealm.transactionWithR…      .map { Unit }\n    }");
        return flatMap2;
    }

    @NotNull
    public final Observable<Unit> delete(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        Observable<R> flatMap = this.apiService.delete(str).flatMap(new TagoService$delete$1(str));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "apiService.delete(id).fl…java, \"identifier\", id) }");
        return flatMap;
    }

    @NotNull
    public final Observable<Boolean> deleteAll() {
        return RxRealm.INSTANCE.deleteAll(TagoDevice.class);
    }

    @NotNull
    public final Observable<Unit> sync() {
        Observable<R> zipWith = this.apiService.get().zipWith(RxRealm.INSTANCE.findAll(TagoDevice.class), new TagoService$sync$$inlined$zipWith$1());
        Intrinsics.checkExpressionValueIsNotNull(zipWith, "zipWith(other, BiFunctio…-> zipper.invoke(t, u) })");
        Observable<R> flatMap = zipWith.flatMap(TagoService$sync$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "apiService\n      .get()\n…t(Unit)\n        }\n      }");
        return flatMap;
    }

    @NotNull
    public final Observable<Pair<Boolean, Boolean>> bleAndLocationStates() {
        Observable<Pair<Boolean, Boolean>> combineLatest = Observable.combineLatest(this.locationService.states(), this.bluetoothService.states(), TagoService$bleAndLocationStates$1.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(combineLatest, "Observable.combineLatest…tion, bluetooth)\n      })");
        return combineLatest;
    }

    @NotNull
    public final Observable<List<RxBleDevice>> nearByDevices() {
        return devices(false);
    }

    @NotNull
    public final Observable<List<RxBleDevice>> ownDevices() {
        return devices(true);
    }

    @NotNull
    public final Observable<Pair<List<RxBleDevice>, List<RxBleDevice>>> allDevices() {
        Observable<R> flatMap = bleAndLocationStates().filter(TagoService$allDevices$1.INSTANCE).flatMap(new TagoService$allDevices$2(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "bleAndLocationStates().f…toothOff())\n      }\n    }");
        return flatMap;
    }

    private final Observable<List<RxBleDevice>> devices(boolean z) {
        Observable<R> flatMap = bleAndLocationStates().filter(TagoService$devices$1.INSTANCE).flatMap(new TagoService$devices$2(this, z));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "bleAndLocationStates().f…toothOff())\n      }\n    }");
        return flatMap;
    }
}

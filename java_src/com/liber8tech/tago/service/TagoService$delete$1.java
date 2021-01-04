package com.liber8tech.tago.service;

import com.liber8tech.tago.model.TagoDevice;
import com.liber8tech.tago.util.RxRealm;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "it", "Lcom/liber8tech/tago/model/TagoDevice;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoService.kt */
public final class TagoService$delete$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ String $id;

    TagoService$delete$1(String str) {
        this.$id = str;
    }

    @NotNull
    public final Observable<Unit> apply(@NotNull TagoDevice tagoDevice) {
        Intrinsics.checkParameterIsNotNull(tagoDevice, "it");
        return RxRealm.INSTANCE.delete(TagoDevice.class, SettingsJsonConstants.APP_IDENTIFIER_KEY, this.$id);
    }
}

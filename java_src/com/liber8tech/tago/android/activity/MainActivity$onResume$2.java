package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.service.UpdateProfileData;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012(\u0010\u0004\u001a$\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00060\u0006 \u0003*\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00060\u00060\u00070\u0005H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "Lio/reactivex/Single;", "Lcom/liber8tech/tago/service/UpdateProfileData;", "kotlin.jvm.PlatformType", "it", "", "", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
final class MainActivity$onResume$2<T, R> implements Function<T, SingleSource<? extends R>> {
    final /* synthetic */ MainActivity this$0;

    MainActivity$onResume$2(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    public final Single<UpdateProfileData> apply(@NotNull List<Unit> list) {
        Intrinsics.checkParameterIsNotNull(list, "it");
        return this.this$0.getProfileService().getProfile().subscribeOn(Schedulers.io());
    }
}

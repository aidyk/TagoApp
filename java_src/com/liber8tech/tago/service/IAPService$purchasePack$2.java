package com.liber8tech.tago.service;

import com.android.billingclient.api.Purchase;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "Lcom/android/billingclient/api/Purchase;", "kotlin.jvm.PlatformType", "it", "", "apply", "(Ljava/lang/Integer;)Lio/reactivex/Observable;"}, k = 3, mv = {1, 1, 13})
/* compiled from: IAPService.kt */
public final class IAPService$purchasePack$2<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ IAPService this$0;

    IAPService$purchasePack$2(IAPService iAPService) {
        this.this$0 = iAPService;
    }

    @Nullable
    public final Observable<List<Purchase>> apply(@NotNull Integer num) {
        Intrinsics.checkParameterIsNotNull(num, "it");
        if (num.intValue() != 0) {
            return Observable.error(new Exception(this.this$0.getIAPErrorType(num.intValue())));
        }
        this.this$0.purchaseUpdateSubject = PublishSubject.create();
        return this.this$0.purchaseUpdateSubject;
    }
}

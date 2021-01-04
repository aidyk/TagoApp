package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.service.SignInResponse;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "kotlin.jvm.PlatformType", "it", "Lcom/liber8tech/tago/service/SignInResponse;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: SignInActivity.kt */
public final class SignInActivity$signInClick$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ SignInActivity this$0;

    SignInActivity$signInClick$1(SignInActivity signInActivity) {
        this.this$0 = signInActivity;
    }

    public final Observable<Unit> apply(@NotNull SignInResponse signInResponse) {
        Intrinsics.checkParameterIsNotNull(signInResponse, "it");
        return this.this$0.getTagoService().sync().onErrorReturn(AnonymousClass1.INSTANCE);
    }
}

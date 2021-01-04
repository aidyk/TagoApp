package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Action;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "device", "Lcom/polidea/rxandroidble2/RxBleDevice;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: AddTagoActivity.kt */
public final class AddTagoActivity$ui$1 extends Lambda implements Function1<RxBleDevice, Unit> {
    final /* synthetic */ AddTagoActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    AddTagoActivity$ui$1(AddTagoActivity addTagoActivity) {
        super(1);
        this.this$0 = addTagoActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RxBleDevice rxBleDevice) {
        invoke(rxBleDevice);
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull RxBleDevice rxBleDevice) {
        Intrinsics.checkParameterIsNotNull(rxBleDevice, "device");
        this.this$0.getDisposeBag().add(RxExtensionsKt.asyncIO(this.this$0.getTagoService().update(rxBleDevice)).subscribe(new Consumer<Unit>(this) {
            /* class com.liber8tech.tago.android.activity.AddTagoActivity$ui$1.AnonymousClass1 */
            final /* synthetic */ AddTagoActivity$ui$1 this$0;

            {
                this.this$0 = r1;
            }

            public final void accept(Unit unit) {
                AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.getAnalytics(), Screens.addDevice, Category.tago, Action.addTago, null, null, null, null, null, null, 504, null);
                if (AddTagoActivity.access$isSignUpActivity$p(this.this$0.this$0)) {
                    AnkoInternals.internalStartActivity(this.this$0.this$0, MainActivity.class, new Pair[0]);
                }
                this.this$0.this$0.finish();
            }
        }, new Consumer<Throwable>(this) {
            /* class com.liber8tech.tago.android.activity.AddTagoActivity$ui$1.AnonymousClass2 */
            final /* synthetic */ AddTagoActivity$ui$1 this$0;

            {
                this.this$0 = r1;
            }

            public final void accept(Throwable th) {
                AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.getAnalytics(), Screens.addDevice, Category.tago, Action.addTago, th.getMessage(), null, null, null, null, null, 496, null);
                Timber.e(th);
                AuthValidationKt.showError(this.this$0.this$0, th);
            }
        }));
    }
}

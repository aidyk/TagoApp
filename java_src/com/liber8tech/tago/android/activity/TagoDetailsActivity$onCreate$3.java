package com.liber8tech.tago.android.activity;

import android.view.View;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Action;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoDetailsActivity.kt */
public final class TagoDetailsActivity$onCreate$3 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ String $id;
    final /* synthetic */ TagoDetailsActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    TagoDetailsActivity$onCreate$3(TagoDetailsActivity tagoDetailsActivity, String str) {
        super(1);
        this.this$0 = tagoDetailsActivity;
        this.$id = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "it");
        TagoDetailsActivity tagoDetailsActivity = this.this$0;
        View findViewById = this.this$0.findViewById(16908290);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
        ContextExtensionKt.tintedSnack$default(tagoDetailsActivity, R.string.delete_title, 17039370, findViewById, new Function1<View, Unit>(this) {
            /* class com.liber8tech.tago.android.activity.TagoDetailsActivity$onCreate$3.AnonymousClass1 */
            final /* synthetic */ TagoDetailsActivity$onCreate$3 this$0;

            {
                this.this$0 = r1;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke(view);
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull View view) {
                Intrinsics.checkParameterIsNotNull(view, "it");
                TagoService tagoService = this.this$0.this$0.getTagoService();
                String str = this.this$0.$id;
                Intrinsics.checkExpressionValueIsNotNull(str, "id");
                this.this$0.this$0.getDisposeBag().add(RxExtensionsKt.asyncIO(tagoService.delete(str)).subscribe(new Consumer<Unit>(this) {
                    /* class com.liber8tech.tago.android.activity.TagoDetailsActivity$onCreate$3.AnonymousClass1.AnonymousClass1 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    public final void accept(Unit unit) {
                        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.this$0.getAnalytics(), "Change Password", Category.tago, Action.deleteTago, null, null, null, null, null, null, 504, null);
                        this.this$0.this$0.this$0.finish();
                    }
                }, new Consumer<Throwable>(this) {
                    /* class com.liber8tech.tago.android.activity.TagoDetailsActivity$onCreate$3.AnonymousClass1.AnonymousClass2 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    public final void accept(Throwable th) {
                        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.this$0.getAnalytics(), "Change Password", Category.tago, Action.deleteTago, th.getMessage(), null, null, null, null, null, 496, null);
                        AuthValidationKt.showError(this.this$0.this$0.this$0, th);
                        Timber.e(th);
                    }
                }));
            }
        }, 0, 16, null);
    }
}

package com.liber8tech.tago.android.activity;

import android.view.View;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.MainActivityUI;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import io.reactivex.android.schedulers.AndroidSchedulers;
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
/* compiled from: SettingsActivity.kt */
public final class SettingsActivity$onCreate$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ SettingsActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    SettingsActivity$onCreate$1(SettingsActivity settingsActivity) {
        super(1);
        this.this$0 = settingsActivity;
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
        SettingsActivity settingsActivity = this.this$0;
        View findViewById = this.this$0.findViewById(16908290);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
        ContextExtensionKt.tintedSnack$default(settingsActivity, R.string.auth_logout_title, R.string.logout, findViewById, new Function1<View, Unit>(this) {
            /* class com.liber8tech.tago.android.activity.SettingsActivity$onCreate$1.AnonymousClass1 */
            final /* synthetic */ SettingsActivity$onCreate$1 this$0;

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
                this.this$0.this$0.getDisposeBag().add(this.this$0.this$0.getTagoService().deleteAll().observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer<Boolean>(this) {
                    /* class com.liber8tech.tago.android.activity.SettingsActivity$onCreate$1.AnonymousClass1.AnonymousClass1 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    public final void accept(Boolean bool) {
                        this.this$0.this$0.this$0.getImageEditorService().deleteCreatedPattern();
                        this.this$0.this$0.this$0.getRuntimeConfig().removeToken();
                        this.this$0.this$0.this$0.getRuntimeConfig().removeUserId();
                        this.this$0.this$0.this$0.getRuntimeConfig().setLastCollection(MainActivityUI.SelectedCollection.STARTER);
                        this.this$0.this$0.this$0.getImageEditorService().deletePurchasedPattern();
                        AuthValidationKt.logoutSuccess(this.this$0.this$0.this$0);
                    }
                }, new Consumer<Throwable>(this) {
                    /* class com.liber8tech.tago.android.activity.SettingsActivity$onCreate$1.AnonymousClass1.AnonymousClass2 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    public final void accept(Throwable th) {
                        AuthValidationKt.showError(this.this$0.this$0.this$0, th);
                        Timber.e(th);
                    }
                }));
            }
        }, 0, 16, null);
    }
}

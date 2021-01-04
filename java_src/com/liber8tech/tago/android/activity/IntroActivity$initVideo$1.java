package com.liber8tech.tago.android.activity;

import android.content.DialogInterface;
import android.view.View;
import com.liber8tech.tago.service.UpdateProfileData;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AlertBuilder;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 1, 13})
/* compiled from: IntroActivity.kt */
public final class IntroActivity$initVideo$1 implements View.OnClickListener {
    final /* synthetic */ IntroActivity this$0;

    IntroActivity$initVideo$1(IntroActivity introActivity) {
        this.this$0 = introActivity;
    }

    public final void onClick(View view) {
        ContextExtensionKt.showToUDialog$default(this.this$0, new Function1<AlertBuilder<? extends DialogInterface>, Unit>(this) {
            /* class com.liber8tech.tago.android.activity.IntroActivity$initVideo$1.AnonymousClass1 */
            final /* synthetic */ IntroActivity$initVideo$1 this$0;

            {
                this.this$0 = r1;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AlertBuilder<? extends DialogInterface> alertBuilder) {
                invoke(alertBuilder);
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull AlertBuilder<? extends DialogInterface> alertBuilder) {
                Intrinsics.checkParameterIsNotNull(alertBuilder, "it");
                this.this$0.this$0.disposeBag.add(RxExtensionsKt.asyncIO(this.this$0.this$0.getAuthService().signInFacebook(this.this$0.this$0)).subscribe(new Consumer<UpdateProfileData>(this) {
                    /* class com.liber8tech.tago.android.activity.IntroActivity$initVideo$1.AnonymousClass1.AnonymousClass1 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    public final void accept(UpdateProfileData updateProfileData) {
                        if (Intrinsics.areEqual((Object) updateProfileData.getCompletedProfile(), (Object) true)) {
                            AuthValidationKt.loginSuccess(this.this$0.this$0.this$0);
                            return;
                        }
                        AnkoInternals.internalStartActivity(this.this$0.this$0.this$0, ProfileActivity.class, new Pair[]{new Pair("profile", updateProfileData)});
                    }
                }, AnonymousClass2.INSTANCE));
            }
        }, null, 2, null);
    }
}

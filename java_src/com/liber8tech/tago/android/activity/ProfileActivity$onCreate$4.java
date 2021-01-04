package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.view.View;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.android.ui.ProfileActivityUIKt;
import com.liber8tech.tago.service.UpdateProfileData;
import com.liber8tech.tago.util.RuntimeConfig;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ProfileActivity.kt */
public final class ProfileActivity$onCreate$4 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ Ref.BooleanRef $fromLogin;
    final /* synthetic */ ProfileActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ProfileActivity$onCreate$4(ProfileActivity profileActivity, Ref.BooleanRef booleanRef) {
        super(1);
        this.this$0 = profileActivity;
        this.$fromLogin = booleanRef;
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
        String nullableText = this.this$0.getUi().getFirstName().getNullableText();
        String nullableText2 = this.this$0.getUi().getLastName().getNullableText();
        String elementOrNull = ProfileActivityUIKt.getElementOrNull(this.this$0.getUi().getBirthYear());
        UpdateProfileData updateProfileData = new UpdateProfileData(nullableText, nullableText2, elementOrNull != null ? Integer.valueOf(Integer.parseInt(elementOrNull)) : null, ProfileActivityUIKt.getElementOrNull(this.this$0.getUi().getCountry()), ProfileActivityUIKt.getElementOrNull(this.this$0.getUi().getGender()), Boolean.valueOf(this.this$0.getUi().getSubsCheck().isChecked()), Boolean.valueOf(this.this$0.getUi().getAnalyticsCheck().isChecked()), null, null, null, 896, null);
        boolean isChecked = this.this$0.getUi().getAnalyticsCheck().isChecked();
        RuntimeConfig runtimeConfig = this.this$0.getRuntimeConfig();
        runtimeConfig.setAnalyticsEnable(isChecked);
        runtimeConfig.setCrashlyticsEnable(isChecked);
        this.this$0.getDisposeBag().add(RxExtensionsKt.asyncIO(this.this$0.getProfileService().updateProfile(updateProfileData)).subscribe(new Consumer<Unit>(this) {
            /* class com.liber8tech.tago.android.activity.ProfileActivity$onCreate$4.AnonymousClass2 */
            final /* synthetic */ ProfileActivity$onCreate$4 this$0;

            {
                this.this$0 = r1;
            }

            public final void accept(Unit unit) {
                if (this.this$0.$fromLogin.element) {
                    Intent intent = new Intent(this.this$0.this$0, AddTagoActivity.class);
                    intent.addFlags(268468224);
                    intent.putExtra(Constants.SignUpActivity, true);
                    AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.getAnalytics(), Screens.profile, Category.auth, "Sign Up", null, null, null, null, null, null, 504, null);
                    this.this$0.this$0.startActivity(intent);
                    return;
                }
                AnkoInternals.internalStartActivity(this.this$0.this$0, MainActivity.class, new Pair[0]);
            }
        }, AnonymousClass3.INSTANCE));
    }
}

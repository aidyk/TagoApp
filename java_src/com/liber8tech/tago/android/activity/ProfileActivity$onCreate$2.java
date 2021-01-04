package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.android.ui.ProfileActivityUI;
import com.liber8tech.tago.service.UpdateProfileData;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/liber8tech/tago/service/UpdateProfileData;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: ProfileActivity.kt */
final class ProfileActivity$onCreate$2<T> implements Consumer<UpdateProfileData> {
    final /* synthetic */ ProfileActivity this$0;

    ProfileActivity$onCreate$2(ProfileActivity profileActivity) {
        this.this$0 = profileActivity;
    }

    public final void accept(UpdateProfileData updateProfileData) {
        ProfileActivityUI ui = this.this$0.getUi();
        Intrinsics.checkExpressionValueIsNotNull(updateProfileData, "it");
        ui.setProfile(updateProfileData);
    }
}

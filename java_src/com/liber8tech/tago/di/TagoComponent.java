package com.liber8tech.tago.di;

import com.google.android.exoplayer2.util.MimeTypes;
import com.liber8tech.tago.android.TagoApplication;
import com.liber8tech.tago.android.activity.AboutActivity;
import com.liber8tech.tago.android.activity.AddTagoActivity;
import com.liber8tech.tago.android.activity.AttachmentActivity;
import com.liber8tech.tago.android.activity.CameraActivity;
import com.liber8tech.tago.android.activity.ChangePasswordActivity;
import com.liber8tech.tago.android.activity.ContactUsActivity;
import com.liber8tech.tago.android.activity.ForgetPasswordActivity;
import com.liber8tech.tago.android.activity.ImageEditorActivity;
import com.liber8tech.tago.android.activity.IntroActivity;
import com.liber8tech.tago.android.activity.KioskActivity;
import com.liber8tech.tago.android.activity.MainActivity;
import com.liber8tech.tago.android.activity.PackActivity;
import com.liber8tech.tago.android.activity.ProfileActivity;
import com.liber8tech.tago.android.activity.ResetActivity;
import com.liber8tech.tago.android.activity.ResetChooseDeviceActivity;
import com.liber8tech.tago.android.activity.ResetSyncActivity;
import com.liber8tech.tago.android.activity.SelectTagoActivity;
import com.liber8tech.tago.android.activity.SettingsActivity;
import com.liber8tech.tago.android.activity.SignInActivity;
import com.liber8tech.tago.android.activity.SignUpActivity;
import com.liber8tech.tago.android.activity.StoreActivity;
import com.liber8tech.tago.android.activity.SyncActivity;
import com.liber8tech.tago.android.activity.TagoDetailsActivity;
import com.liber8tech.tago.util.ImageSizeStore;
import dagger.Component;
import javax.inject.Singleton;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Component(modules = {CoreModule.class, TagoModule.class, AnalyticsModule.class})
@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\nH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u000bH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\fH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\rH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u000eH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u000fH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0010H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0011H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0012H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0013H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0014H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0015H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0016H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0017H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0018H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0019H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u001aH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u001bH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u001cH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u001dH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u001eH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u001fH&¨\u0006 "}, d2 = {"Lcom/liber8tech/tago/di/TagoComponent;", "", "imageSizeStore", "Lcom/liber8tech/tago/util/ImageSizeStore;", "inject", "", MimeTypes.BASE_TYPE_APPLICATION, "Lcom/liber8tech/tago/android/TagoApplication;", "activity", "Lcom/liber8tech/tago/android/activity/AboutActivity;", "Lcom/liber8tech/tago/android/activity/AddTagoActivity;", "Lcom/liber8tech/tago/android/activity/AttachmentActivity;", "Lcom/liber8tech/tago/android/activity/CameraActivity;", "Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;", "Lcom/liber8tech/tago/android/activity/ContactUsActivity;", "Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;", "Lcom/liber8tech/tago/android/activity/ImageEditorActivity;", "Lcom/liber8tech/tago/android/activity/IntroActivity;", "Lcom/liber8tech/tago/android/activity/KioskActivity;", "Lcom/liber8tech/tago/android/activity/MainActivity;", "Lcom/liber8tech/tago/android/activity/PackActivity;", "Lcom/liber8tech/tago/android/activity/ProfileActivity;", "Lcom/liber8tech/tago/android/activity/ResetActivity;", "Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;", "Lcom/liber8tech/tago/android/activity/ResetSyncActivity;", "Lcom/liber8tech/tago/android/activity/SelectTagoActivity;", "Lcom/liber8tech/tago/android/activity/SettingsActivity;", "Lcom/liber8tech/tago/android/activity/SignInActivity;", "Lcom/liber8tech/tago/android/activity/SignUpActivity;", "Lcom/liber8tech/tago/android/activity/StoreActivity;", "Lcom/liber8tech/tago/android/activity/SyncActivity;", "Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoComponent.kt */
public interface TagoComponent {
    @NotNull
    ImageSizeStore imageSizeStore();

    void inject(@NotNull TagoApplication tagoApplication);

    void inject(@NotNull AboutActivity aboutActivity);

    void inject(@NotNull AddTagoActivity addTagoActivity);

    void inject(@NotNull AttachmentActivity attachmentActivity);

    void inject(@NotNull CameraActivity cameraActivity);

    void inject(@NotNull ChangePasswordActivity changePasswordActivity);

    void inject(@NotNull ContactUsActivity contactUsActivity);

    void inject(@NotNull ForgetPasswordActivity forgetPasswordActivity);

    void inject(@NotNull ImageEditorActivity imageEditorActivity);

    void inject(@NotNull IntroActivity introActivity);

    void inject(@NotNull KioskActivity kioskActivity);

    void inject(@NotNull MainActivity mainActivity);

    void inject(@NotNull PackActivity packActivity);

    void inject(@NotNull ProfileActivity profileActivity);

    void inject(@NotNull ResetActivity resetActivity);

    void inject(@NotNull ResetChooseDeviceActivity resetChooseDeviceActivity);

    void inject(@NotNull ResetSyncActivity resetSyncActivity);

    void inject(@NotNull SelectTagoActivity selectTagoActivity);

    void inject(@NotNull SettingsActivity settingsActivity);

    void inject(@NotNull SignInActivity signInActivity);

    void inject(@NotNull SignUpActivity signUpActivity);

    void inject(@NotNull StoreActivity storeActivity);

    void inject(@NotNull SyncActivity syncActivity);

    void inject(@NotNull TagoDetailsActivity tagoDetailsActivity);
}

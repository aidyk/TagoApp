.class public interface abstract Lcom/liber8tech/tago/di/TagoComponent;
.super Ljava/lang/Object;
.source "TagoComponent.kt"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/liber8tech/tago/di/CoreModule;,
        Lcom/liber8tech/tago/di/TagoModule;,
        Lcom/liber8tech/tago/di/AnalyticsModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\nH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u000bH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u000cH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\rH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u000eH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u000fH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0010H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0011H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0012H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0013H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0014H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0015H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0016H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0017H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0018H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0019H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u001aH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u001bH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u001cH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u001dH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u001eH&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u001fH&\u00a8\u0006 "
    }
    d2 = {
        "Lcom/liber8tech/tago/di/TagoComponent;",
        "",
        "imageSizeStore",
        "Lcom/liber8tech/tago/util/ImageSizeStore;",
        "inject",
        "",
        "application",
        "Lcom/liber8tech/tago/android/TagoApplication;",
        "activity",
        "Lcom/liber8tech/tago/android/activity/AboutActivity;",
        "Lcom/liber8tech/tago/android/activity/AddTagoActivity;",
        "Lcom/liber8tech/tago/android/activity/AttachmentActivity;",
        "Lcom/liber8tech/tago/android/activity/CameraActivity;",
        "Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;",
        "Lcom/liber8tech/tago/android/activity/ContactUsActivity;",
        "Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;",
        "Lcom/liber8tech/tago/android/activity/ImageEditorActivity;",
        "Lcom/liber8tech/tago/android/activity/IntroActivity;",
        "Lcom/liber8tech/tago/android/activity/KioskActivity;",
        "Lcom/liber8tech/tago/android/activity/MainActivity;",
        "Lcom/liber8tech/tago/android/activity/PackActivity;",
        "Lcom/liber8tech/tago/android/activity/ProfileActivity;",
        "Lcom/liber8tech/tago/android/activity/ResetActivity;",
        "Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;",
        "Lcom/liber8tech/tago/android/activity/ResetSyncActivity;",
        "Lcom/liber8tech/tago/android/activity/SelectTagoActivity;",
        "Lcom/liber8tech/tago/android/activity/SettingsActivity;",
        "Lcom/liber8tech/tago/android/activity/SignInActivity;",
        "Lcom/liber8tech/tago/android/activity/SignUpActivity;",
        "Lcom/liber8tech/tago/android/activity/StoreActivity;",
        "Lcom/liber8tech/tago/android/activity/SyncActivity;",
        "Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# virtual methods
.method public abstract imageSizeStore()Lcom/liber8tech/tago/util/ImageSizeStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/TagoApplication;)V
    .param p1    # Lcom/liber8tech/tago/android/TagoApplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/AboutActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/AboutActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/AddTagoActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/AttachmentActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/AttachmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/CameraActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/CameraActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/ContactUsActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/ContactUsActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/ImageEditorActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/IntroActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/IntroActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/KioskActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/KioskActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/MainActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/PackActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/PackActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/ProfileActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/ProfileActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/ResetActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/ResetActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/ResetSyncActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/SelectTagoActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/SettingsActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/SignInActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/SignInActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/SignUpActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/SignUpActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/StoreActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/StoreActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/SyncActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/SyncActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inject(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V
    .param p1    # Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

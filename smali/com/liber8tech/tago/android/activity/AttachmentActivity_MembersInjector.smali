.class public final Lcom/liber8tech/tago/android/activity/AttachmentActivity_MembersInjector;
.super Ljava/lang/Object;
.source "AttachmentActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/AttachmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageEditorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity_MembersInjector;->imageEditorServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/AttachmentActivity;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity_MembersInjector;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectImageEditorService(Lcom/liber8tech/tago/android/activity/AttachmentActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/AttachmentActivity;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity_MembersInjector;->imageEditorServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/AttachmentActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/AttachmentActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/AttachmentActivity;)V

    return-void
.end method

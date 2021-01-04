.class Lcom/crashlytics/android/core/ResourceUnityVersionProvider;
.super Ljava/lang/Object;
.source "ResourceUnityVersionProvider.java"

# interfaces
.implements Lcom/crashlytics/android/core/UnityVersionProvider;


# instance fields
.field private final context:Landroid/content/Context;

.field private final fallback:Lcom/crashlytics/android/core/UnityVersionProvider;

.field private hasRead:Z

.field private unityVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/core/UnityVersionProvider;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->hasRead:Z

    .line 16
    iput-object p1, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->fallback:Lcom/crashlytics/android/core/UnityVersionProvider;

    return-void
.end method


# virtual methods
.method public getUnityVersion()Ljava/lang/String;
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->hasRead:Z

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->resolveUnityEditorVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->hasRead:Z

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;

    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->fallback:Lcom/crashlytics/android/core/UnityVersionProvider;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;->fallback:Lcom/crashlytics/android/core/UnityVersionProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/core/UnityVersionProvider;->getUnityVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

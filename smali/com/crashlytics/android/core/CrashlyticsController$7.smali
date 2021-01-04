.class Lcom/crashlytics/android/core/CrashlyticsController$7;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->handleUncaughtException(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$firebaseCrashlyticsClientFlag:Z

.field final synthetic val$settingsDataProvider:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;

.field final synthetic val$thread:Ljava/lang/Thread;

.field final synthetic val$time:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;Z)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$time:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$thread:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$ex:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$settingsDataProvider:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;

    iput-boolean p6, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$firebaseCrashlyticsClientFlag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsController$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->access$400(Lcom/crashlytics/android/core/CrashlyticsController;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->createCrashMarker()V

    .line 328
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$time:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$thread:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$ex:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/core/CrashlyticsController;->access$500(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 330
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$settingsDataProvider:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;->getSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 334
    iget-object v2, v0, Lio/fabric/sdk/android/services/settings/SettingsData;->sessionData:Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    .line 335
    iget-object v3, v0, Lio/fabric/sdk/android/services/settings/SettingsData;->featuresData:Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    goto :goto_0

    :cond_0
    move-object v2, v1

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 338
    iget-boolean v3, v3, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;->firebaseCrashlyticsEnabled:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_3

    .line 340
    iget-boolean v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$firebaseCrashlyticsClientFlag:Z

    if-eqz v3, :cond_4

    .line 341
    :cond_3
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget-object v6, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$time:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/crashlytics/android/core/CrashlyticsController;->access$600(Lcom/crashlytics/android/core/CrashlyticsController;J)V

    .line 344
    :cond_4
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/core/CrashlyticsController;->doCloseSessions(Lio/fabric/sdk/android/services/settings/SessionSettingsData;)V

    .line 345
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v3}, Lcom/crashlytics/android/core/CrashlyticsController;->access$700(Lcom/crashlytics/android/core/CrashlyticsController;)V

    if-eqz v2, :cond_5

    .line 348
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget v2, v2, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCompleteSessionsCount:I

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/core/CrashlyticsController;->trimSessionFiles(I)V

    .line 351
    :cond_5
    new-instance v2, Lio/fabric/sdk/android/services/common/FirebaseInfo;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/common/FirebaseInfo;-><init>()V

    .line 352
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    .line 353
    invoke-static {v3}, Lcom/crashlytics/android/core/CrashlyticsController;->access$400(Lcom/crashlytics/android/core/CrashlyticsController;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/fabric/sdk/android/services/common/FirebaseInfo;->isDataCollectionDefaultEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 354
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    .line 355
    invoke-static {v2, v0}, Lcom/crashlytics/android/core/CrashlyticsController;->access$800(Lcom/crashlytics/android/core/CrashlyticsController;Lio/fabric/sdk/android/services/settings/SettingsData;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v4, 0x1

    :cond_6
    if-eqz v4, :cond_7

    .line 357
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v2, v0}, Lcom/crashlytics/android/core/CrashlyticsController;->access$900(Lcom/crashlytics/android/core/CrashlyticsController;Lio/fabric/sdk/android/services/settings/SettingsData;)V

    :cond_7
    return-object v1
.end method

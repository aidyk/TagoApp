.class Lcom/crashlytics/android/core/CrashlyticsController$16;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->finalizeNativeReport(Lcom/crashlytics/android/core/CrashlyticsNdkData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;

.field final synthetic val$ndkData:Lcom/crashlytics/android/core/CrashlyticsNdkData;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;Lcom/crashlytics/android/core/CrashlyticsNdkData;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->val$ndkData:Lcom/crashlytics/android/core/CrashlyticsNdkData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 970
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->val$ndkData:Lcom/crashlytics/android/core/CrashlyticsNdkData;

    iget-object v0, v0, Lcom/crashlytics/android/core/CrashlyticsNdkData;->timestampedDirectories:Ljava/util/TreeSet;

    .line 971
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v1}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1600(Lcom/crashlytics/android/core/CrashlyticsController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 973
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 974
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_0

    .line 977
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget-object v4, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v4}, Lcom/crashlytics/android/core/CrashlyticsController;->access$400(Lcom/crashlytics/android/core/CrashlyticsController;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1700(Lcom/crashlytics/android/core/CrashlyticsController;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1800(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/util/Set;)V

    .line 984
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 967
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsController$16;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

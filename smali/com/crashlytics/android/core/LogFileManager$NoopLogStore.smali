.class final Lcom/crashlytics/android/core/LogFileManager$NoopLogStore;
.super Ljava/lang/Object;
.source "LogFileManager.java"

# interfaces
.implements Lcom/crashlytics/android/core/FileLogStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/LogFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopLogStore"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/LogFileManager$1;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/crashlytics/android/core/LogFileManager$NoopLogStore;-><init>()V

    return-void
.end method


# virtual methods
.method public closeLogFile()V
    .locals 0

    return-void
.end method

.method public deleteLogFile()V
    .locals 0

    return-void
.end method

.method public getLogAsByteString()Lcom/crashlytics/android/core/ByteString;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogAsBytes()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToLog(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

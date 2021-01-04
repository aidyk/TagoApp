.class public Lcom/crashlytics/android/Crashlytics$Builder;
.super Ljava/lang/Object;
.source "Crashlytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/Crashlytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private answers:Lcom/crashlytics/android/answers/Answers;

.field private beta:Lcom/crashlytics/android/beta/Beta;

.field private core:Lcom/crashlytics/android/core/CrashlyticsCore;

.field private coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 155
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public answers(Lcom/crashlytics/android/answers/Answers;)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    if-nez v0, :cond_0

    .line 100
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    return-object p0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Answers Kit already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Answers Kit must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public beta(Lcom/crashlytics/android/beta/Beta;)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    return-object p0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Beta Kit already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Beta Kit must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/crashlytics/android/Crashlytics;
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->coreBuilder:Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not use Deprecated methods delay(), disabled(), listener(), pinningInfoProvider() with core()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Lcom/crashlytics/android/answers/Answers;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/Answers;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    if-nez v0, :cond_3

    .line 145
    new-instance v0, Lcom/crashlytics/android/beta/Beta;

    invoke-direct {v0}, Lcom/crashlytics/android/beta/Beta;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    if-nez v0, :cond_4

    .line 149
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    .line 152
    :cond_4
    new-instance v0, Lcom/crashlytics/android/Crashlytics;

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->answers:Lcom/crashlytics/android/answers/Answers;

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics$Builder;->beta:Lcom/crashlytics/android/beta/Beta;

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/Crashlytics;-><init>(Lcom/crashlytics/android/answers/Answers;Lcom/crashlytics/android/beta/Beta;Lcom/crashlytics/android/core/CrashlyticsCore;)V

    return-object v0
.end method

.method public core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    if-nez v0, :cond_0

    .line 126
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->core:Lcom/crashlytics/android/core/CrashlyticsCore;

    return-object p0

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CrashlyticsCore Kit already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CrashlyticsCore Kit must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delay(F)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics$Builder;->getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay(F)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    return-object p0
.end method

.method public disabled(Z)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics$Builder;->getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    return-object p0
.end method

.method public listener(Lcom/crashlytics/android/core/CrashlyticsListener;)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics$Builder;->getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->listener(Lcom/crashlytics/android/core/CrashlyticsListener;)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    return-object p0
.end method

.method public pinningInfo(Lcom/crashlytics/android/core/PinningInfoProvider;)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics$Builder;->getCoreBuilder()Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->pinningInfo(Lcom/crashlytics/android/core/PinningInfoProvider;)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    return-object p0
.end method

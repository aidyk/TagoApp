.class public final Lcom/liber8tech/tago/util/RuntimeConfig;
.super Ljava/lang/Object;
.source "RuntimeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRuntimeConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuntimeConfig.kt\ncom/liber8tech/tago/util/RuntimeConfig\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,76:1\n40#2,11:77\n*E\n*S KotlinDebug\n*F\n+ 1 RuntimeConfig.kt\ncom/liber8tech/tago/util/RuntimeConfig\n*L\n63#1,11:77\n*E\n"
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001a\u001a\u00020\u0006J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0010J\u0008\u0010 \u001a\u0004\u0018\u00010\u0010J\u0008\u0010!\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0016\u0010%\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u0010J\u000e\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020\u0006J\u000e\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020\u001cJ\u000e\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020\u0010J\u000e\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020\u0010J\u000e\u0010/\u001a\u00020#2\u0006\u00100\u001a\u00020\u0010R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/liber8tech/tago/util/RuntimeConfig;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "value",
        "",
        "analyticsEnable",
        "getAnalyticsEnable",
        "()Z",
        "setAnalyticsEnable",
        "(Z)V",
        "crashlyticsEnable",
        "getCrashlyticsEnable",
        "setCrashlyticsEnable",
        "keyAnalyticsEnabled",
        "",
        "keyAutoUpload",
        "keyCrashlyticsEnabled",
        "keyLastSelected",
        "keyNewestFirmwareId",
        "keyToken",
        "keyUserId",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "tagoAuthDb",
        "getAutoUpload",
        "getLastCollection",
        "Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;",
        "getLatestFirmwareVersion",
        "getPackName",
        "id",
        "getToken",
        "getUserId",
        "removeToken",
        "",
        "removeUserId",
        "savePack",
        "name",
        "setAutoUpload",
        "enabled",
        "setLastCollection",
        "collection",
        "setLatestFirmwareVersion",
        "version",
        "setToken",
        "token",
        "setUserId",
        "userId",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final keyAnalyticsEnabled:Ljava/lang/String;

.field private final keyAutoUpload:Ljava/lang/String;

.field private final keyCrashlyticsEnabled:Ljava/lang/String;

.field private final keyLastSelected:Ljava/lang/String;

.field private final keyNewestFirmwareId:Ljava/lang/String;

.field private final keyToken:Ljava/lang/String;

.field private final keyUserId:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final tagoAuthDb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->context:Landroid/content/Context;

    const-string p1, "tago_auth_db"

    .line 13
    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->tagoAuthDb:Ljava/lang/String;

    const-string p1, "key_token"

    .line 14
    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyToken:Ljava/lang/String;

    const-string p1, "key_user_id"

    .line 15
    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyUserId:Ljava/lang/String;

    const-string p1, "key_newest_firmware_id"

    .line 16
    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyNewestFirmwareId:Ljava/lang/String;

    const-string p1, "key_auto_upload"

    .line 17
    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyAutoUpload:Ljava/lang/String;

    const-string p1, "key_last_selected"

    .line 18
    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyLastSelected:Ljava/lang/String;

    const-string p1, "key_analytics_enabled"

    .line 19
    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyAnalyticsEnabled:Ljava/lang/String;

    const-string p1, "key_crashlytics_enabled"

    .line 20
    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyCrashlyticsEnabled:Ljava/lang/String;

    .line 22
    iget-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->tagoAuthDb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026Db, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getAnalyticsEnable()Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyAnalyticsEnabled:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getAutoUpload()Z
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyAutoUpload:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCrashlyticsEnable()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyCrashlyticsEnabled:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getLastCollection()Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyLastSelected:Ljava/lang/String;

    sget-object v2, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->STARTER:Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    invoke-virtual {v2}, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sharedPreferences.getStr\u2026dCollection.STARTER.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->valueOf(Ljava/lang/String;)Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    move-result-object v0

    return-object v0
.end method

.method public final getLatestFirmwareVersion()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyNewestFirmwareId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPackName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sharedPreferences.getString(id, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getToken()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyToken:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyUserId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final removeToken()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final removeUserId()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyUserId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final savePack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAnalyticsEnable(Z)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyAnalyticsEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAutoUpload(Z)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyAutoUpload:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setCrashlyticsEnable(Z)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyCrashlyticsEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastCollection(Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;)V
    .locals 2
    .param p1    # Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 81
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyLastSelected:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLatestFirmwareVersion(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyNewestFirmwareId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyToken:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/util/RuntimeConfig;->keyUserId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

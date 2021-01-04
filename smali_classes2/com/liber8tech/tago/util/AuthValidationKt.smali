.class public final Lcom/liber8tech/tago/util/AuthValidationKt;
.super Ljava/lang/Object;
.source "AuthValidation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthValidation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthValidation.kt\ncom/liber8tech/tago/util/AuthValidationKt\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,157:1\n75#2:158\n75#2:159\n*E\n*S KotlinDebug\n*F\n+ 1 AuthValidation.kt\ncom/liber8tech/tago/util/AuthValidationKt\n*L\n94#1:158\n98#1:159\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u001a\u0012\u0010\u0004\u001a\u00020\u00012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001H\u0002\u001a\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f\u001a\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u001e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018\u001a\u000e\u0010\u001a\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\t\u001a\u000e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\t\u001a\u0018\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u001a\u0016\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "communicationError",
        "",
        "minPasswordLength",
        "",
        "getError",
        "e",
        "",
        "getErrorString",
        "activity",
        "Landroid/app/Activity;",
        "error",
        "getIAPErrorString",
        "isEmailValid",
        "",
        "textInputView",
        "Lcom/liber8tech/tago/android/view/TextInputView;",
        "isPasswordMatch",
        "textInputView1",
        "textInputView2",
        "isPasswordValid",
        "isTermsAccepted",
        "context",
        "Landroid/content/Context;",
        "checkPP",
        "Landroid/support/v7/widget/AppCompatCheckBox;",
        "checkToC",
        "isValidField",
        "loginSuccess",
        "",
        "logoutSuccess",
        "showError",
        "showIAPError",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final communicationError:Ljava/lang/String; = "communication_error"

.field private static final minPasswordLength:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static final getError(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 104
    sget-object v0, Lcom/liber8tech/tago/util/AuthValidationKt;->communicationError:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 106
    instance-of v1, p0, Lretrofit2/HttpException;

    if-eqz v1, :cond_1

    .line 107
    move-object v0, p0

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    .line 108
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    .line 109
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.getString(\"message\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :cond_1
    instance-of p0, p0, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_2

    const-string v0, "no_internet"

    :cond_2
    return-object v0
.end method

.method private static final getErrorString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "not_found"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f002e

    goto :goto_1

    :sswitch_1
    const-string v0, "already.registered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f002f

    goto :goto_1

    :sswitch_2
    const-string v0, "no_internet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f0037

    goto :goto_1

    :sswitch_3
    const-string v0, "user.exists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f0038

    goto :goto_1

    :sswitch_4
    const-string v0, "user_not_found"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f00f6

    goto :goto_1

    :sswitch_5
    const-string v0, "invalid.credentials"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    instance-of p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;

    if-eqz p1, :cond_0

    const p1, 0x7f0f00f8

    goto :goto_1

    :cond_0
    const p1, 0x7f0f0036

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f0f00a5

    .line 131
    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "activity.getString(errorResInt)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d016e7b -> :sswitch_5
        -0x424d205e -> :sswitch_4
        -0x40b21c21 -> :sswitch_3
        0xd81d3ff -> :sswitch_2
        0x1e4865d8 -> :sswitch_1
        0x604afb16 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getIAPErrorString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7f831a7a

    if-eq v0, v1, :cond_2

    const v1, -0x5fa2c6fc

    if-eq v0, v1, :cond_1

    const v1, -0x2d24886e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ITEM_ALREADY_OWNED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f00aa

    goto :goto_1

    :cond_1
    const-string v0, "ITEM_UNAVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f00ac

    goto :goto_1

    :cond_2
    const-string v0, "SERVICE_UNAVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f00ab

    goto :goto_1

    :cond_3
    :goto_0
    const p1, 0x7f0f00a5

    .line 141
    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "activity.getString(errorResInt)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final isEmailValid(Lcom/liber8tech/tago/android/view/TextInputView;)Z
    .locals 3
    .param p0    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textInputView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/TextInputView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textInputView.context.ge\u2026.string.auth_email_error)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextError(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static final isPasswordMatch(Lcom/liber8tech/tago/android/view/TextInputView;Lcom/liber8tech/tago/android/view/TextInputView;)Z
    .locals 2
    .param p0    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textInputView1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textInputView2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lcom/liber8tech/tago/util/AuthValidationKt;->isPasswordValid(Lcom/liber8tech/tago/android/view/TextInputView;)Z

    move-result v0

    .line 60
    invoke-static {p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->isPasswordValid(Lcom/liber8tech/tago/android/view/TextInputView;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/TextInputView;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/TextInputView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "textInputView2.context.g\u2026uth_password_error_match)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextError(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/TextInputView;->removeTextError()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isPasswordValid(Lcom/liber8tech/tago/android/view/TextInputView;)Z
    .locals 5
    .param p0    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textInputView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/TextInputView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/liber8tech/tago/util/AuthValidationKt;->minPasswordLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 27
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0f0041

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "textInputView.context.ge\u2026password_error_character)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/liber8tech/tago/util/AuthValidationKt;->minPasswordLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    array-length v2, v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextError(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static final isTermsAccepted(Landroid/content/Context;Landroid/support/v7/widget/AppCompatCheckBox;Landroid/support/v7/widget/AppCompatCheckBox;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v7/widget/AppCompatCheckBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/AppCompatCheckBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkPP"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkToC"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result p0

    const v0, 0x7f0500b2

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lorg/jetbrains/anko/CustomViewPropertiesKt;->setTextColorResource(Landroid/widget/TextView;I)V

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lorg/jetbrains/anko/CustomViewPropertiesKt;->setTextColorResource(Landroid/widget/TextView;I)V

    :cond_1
    const/4 p0, 0x1

    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    const v1, 0x7f05009f

    const v2, 0x7f05002f

    const/16 v3, 0x15

    if-nez v0, :cond_4

    .line 40
    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatCheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 43
    :cond_3
    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lorg/jetbrains/anko/CustomViewPropertiesKt;->setTextColorResource(Landroid/widget/TextView;I)V

    .line 46
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_6

    .line 47
    invoke-virtual {p2}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_6

    .line 48
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_5

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/support/v7/widget/AppCompatCheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 51
    :cond_5
    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lorg/jetbrains/anko/CustomViewPropertiesKt;->setTextColorResource(Landroid/widget/TextView;I)V

    :cond_6
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static final isValidField(Lcom/liber8tech/tago/android/view/TextInputView;)Z
    .locals 3
    .param p0    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textInputView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/TextInputView;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textInputView.context.ge\u2026g(R.string.auth_required)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextError(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static final loginSuccess(Landroid/app/Activity;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "previousActivityLogin"

    const/4 v2, 0x1

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final logoutSuccess(Landroid/app/Activity;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/liber8tech/tago/android/activity/IntroActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final showError(Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->getError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->getErrorString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x1020002

    .line 158
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "findViewById(id)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {v0, p1, p0}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static final showIAPError(Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p0, p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->getIAPErrorString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x1020002

    .line 159
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "findViewById(id)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {v0, p1, p0}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

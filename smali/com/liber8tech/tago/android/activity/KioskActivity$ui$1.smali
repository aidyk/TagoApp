.class final Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KioskActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/KioskActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKioskActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KioskActivity.kt\ncom/liber8tech/tago/android/activity/KioskActivity$ui$1\n*L\n1#1,124:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "device",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/KioskActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/KioskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/KioskActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDevice;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;->invoke(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/polidea/rxandroidble2/RxBleDevice;)V
    .locals 7
    .param p1    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/KioskActivity;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/KioskActivity;

    const v2, 0x7f0f00b2

    invoke-virtual {v0, v2}, Lcom/liber8tech/tago/android/activity/KioskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(R.string.kiosk_alert_title)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AndroidDialogsKt;->alert$default(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/jetbrains/anko/AlertBuilder;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/KioskActivity;

    const v2, 0x7f0f008f

    invoke-virtual {v1, v2}, Lcom/liber8tech/tago/android/activity/KioskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.enable)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1$$special$$inlined$apply$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1$$special$$inlined$apply$lambda$1;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;Lcom/polidea/rxandroidble2/RxBleDevice;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2}, Lorg/jetbrains/anko/AlertBuilder;->positiveButton(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 32
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/KioskActivity;

    const v2, 0x7f0f008b

    invoke-virtual {v1, v2}, Lcom/liber8tech/tago/android/activity/KioskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.disable)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1$$special$$inlined$apply$lambda$2;

    invoke-direct {v2, p0, p1}, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1$$special$$inlined$apply$lambda$2;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;Lcom/polidea/rxandroidble2/RxBleDevice;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2}, Lorg/jetbrains/anko/AlertBuilder;->negativeButton(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 35
    invoke-interface {v0}, Lorg/jetbrains/anko/AlertBuilder;->show()Landroid/content/DialogInterface;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x2

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/KioskActivity;

    const v2, 0x7f050020

    invoke-static {v1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/KioskActivity;

    invoke-static {v0, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

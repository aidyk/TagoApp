.class public final Lorg/jetbrains/anko/support/v4/SupportV4ListenersKt$sam$i$android_support_v4_widget_NestedScrollView_OnScrollChangeListener$0;
.super Ljava/lang/Object;
.source "Listeners.kt"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final synthetic function:Lkotlin/jvm/functions/Function5;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jetbrains/anko/support/v4/SupportV4ListenersKt$sam$i$android_support_v4_widget_NestedScrollView_OnScrollChangeListener$0;->function:Lkotlin/jvm/functions/Function5;

    return-void
.end method


# virtual methods
.method public final synthetic onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 6

    iget-object v0, p0, Lorg/jetbrains/anko/support/v4/SupportV4ListenersKt$sam$i$android_support_v4_widget_NestedScrollView_OnScrollChangeListener$0;->function:Lkotlin/jvm/functions/Function5;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invoke(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

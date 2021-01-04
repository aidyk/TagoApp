.class public final enum Lorg/jetbrains/anko/InputConstraints;
.super Ljava/lang/Enum;
.source "InputConstraints.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jetbrains/anko/InputConstraints;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/jetbrains/anko/InputConstraints;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "PASSWORD",
        "platform-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jetbrains/anko/InputConstraints;

.field public static final enum PASSWORD:Lorg/jetbrains/anko/InputConstraints;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jetbrains/anko/InputConstraints;

    new-instance v1, Lorg/jetbrains/anko/InputConstraints;

    const-string v2, "PASSWORD"

    const/4 v3, 0x0

    const/16 v4, 0x81

    .line 23
    invoke-direct {v1, v2, v3, v4}, Lorg/jetbrains/anko/InputConstraints;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/jetbrains/anko/InputConstraints;->PASSWORD:Lorg/jetbrains/anko/InputConstraints;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jetbrains/anko/InputConstraints;->$VALUES:[Lorg/jetbrains/anko/InputConstraints;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/jetbrains/anko/InputConstraints;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jetbrains/anko/InputConstraints;
    .locals 1

    const-class v0, Lorg/jetbrains/anko/InputConstraints;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jetbrains/anko/InputConstraints;

    return-object p0
.end method

.method public static values()[Lorg/jetbrains/anko/InputConstraints;
    .locals 1

    sget-object v0, Lorg/jetbrains/anko/InputConstraints;->$VALUES:[Lorg/jetbrains/anko/InputConstraints;

    invoke-virtual {v0}, [Lorg/jetbrains/anko/InputConstraints;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jetbrains/anko/InputConstraints;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/jetbrains/anko/InputConstraints;->value:I

    return v0
.end method

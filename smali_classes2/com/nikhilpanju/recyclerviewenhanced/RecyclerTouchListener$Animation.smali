.class final enum Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;
.super Ljava/lang/Enum;
.source "RecyclerTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Animation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

.field public static final enum CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

.field public static final enum OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 893
    new-instance v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    new-instance v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    const-string v1, "CLOSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    const/4 v0, 0x2

    .line 892
    new-array v0, v0, [Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    sget-object v1, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->$VALUES:[Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 892
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;
    .locals 1

    .line 892
    const-class v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    return-object p0
.end method

.method public static values()[Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;
    .locals 1

    .line 892
    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->$VALUES:[Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    invoke-virtual {v0}, [Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    return-object v0
.end method

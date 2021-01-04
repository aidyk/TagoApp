.class abstract enum Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;
.super Ljava/lang/Enum;
.source "ReferenceReleasingProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbleshadow/dagger/internal/ReferenceReleasingProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

.field public static final enum RELEASE:Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

.field public static final enum RESTORE:Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 90
    new-instance v0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation$1;

    const-string v1, "RELEASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->RELEASE:Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    .line 96
    new-instance v0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation$2;

    const-string v1, "RESTORE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->RESTORE:Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    const/4 v0, 0x2

    .line 89
    new-array v0, v0, [Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    sget-object v1, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->RELEASE:Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    aput-object v1, v0, v2

    sget-object v1, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->RESTORE:Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    aput-object v1, v0, v3

    sput-object v0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->$VALUES:[Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILbleshadow/dagger/internal/ReferenceReleasingProviderManager$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;
    .locals 1

    .line 89
    const-class v0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    return-object p0
.end method

.method public static values()[Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;
    .locals 1

    .line 89
    sget-object v0, Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->$VALUES:[Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    invoke-virtual {v0}, [Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbleshadow/dagger/internal/ReferenceReleasingProviderManager$Operation;

    return-object v0
.end method


# virtual methods
.method abstract execute(Lbleshadow/dagger/internal/ReferenceReleasingProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/dagger/internal/ReferenceReleasingProvider<",
            "*>;)V"
        }
    .end annotation
.end method

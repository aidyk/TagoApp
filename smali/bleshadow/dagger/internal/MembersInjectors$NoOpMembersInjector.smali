.class final enum Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;
.super Ljava/lang/Enum;
.source "MembersInjectors.java"

# interfaces
.implements Lbleshadow/dagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbleshadow/dagger/internal/MembersInjectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NoOpMembersInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;",
        ">;",
        "Lbleshadow/dagger/MembersInjector<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

.field public static final enum INSTANCE:Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    sget-object v1, Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    aput-object v1, v0, v2

    sput-object v0, Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;->$VALUES:[Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;
    .locals 1

    .line 39
    const-class v0, Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object p0
.end method

.method public static values()[Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;
    .locals 1

    .line 39
    sget-object v0, Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;->$VALUES:[Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    invoke-virtual {v0}, [Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Cannot inject members into a null reference"

    .line 43
    invoke-static {p1, v0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

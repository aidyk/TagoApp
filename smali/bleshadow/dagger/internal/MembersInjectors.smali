.class public final Lbleshadow/dagger/internal/MembersInjectors;
.super Ljava/lang/Object;
.source "MembersInjectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noOp()Lbleshadow/dagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lbleshadow/dagger/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Lbleshadow/dagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method

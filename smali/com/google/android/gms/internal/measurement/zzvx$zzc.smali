.class public abstract Lcom/google/android/gms/internal/measurement/zzvx$zzc;
.super Lcom/google/android/gms/internal/measurement/zzvx;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzxg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzvx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzvx$zzc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzvx<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/zzxg;"
    }
.end annotation


# instance fields
.field protected zzbzn:Lcom/google/android/gms/internal/measurement/zzvo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzvo<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvx;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvo;->zzwd()Lcom/google/android/gms/internal/measurement/zzvo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvx$zzc;->zzbzn:Lcom/google/android/gms/internal/measurement/zzvo;

    return-void
.end method

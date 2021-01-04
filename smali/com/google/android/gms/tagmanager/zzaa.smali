.class final Lcom/google/android/gms/tagmanager/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzw;


# instance fields
.field private final synthetic zzbbd:Lcom/google/android/gms/tagmanager/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdh(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzy;->zzdh(Ljava/lang/String;)V

    return-void
.end method

.method public final zznq()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzy;->zznq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzns()V
    .locals 1

    const-string v0, "Refresh ignored: container loaded as default only."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    return-void
.end method

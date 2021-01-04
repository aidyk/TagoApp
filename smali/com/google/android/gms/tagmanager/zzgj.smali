.class public final Lcom/google/android/gms/tagmanager/zzgj;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field private static final zzbhj:Ljava/lang/Object;

.field private static zzbhk:Ljava/lang/Long;

.field private static zzbhl:Ljava/lang/Double;

.field private static zzbhm:Lcom/google/android/gms/tagmanager/zzgi;

.field private static zzbhn:Ljava/lang/String;

.field private static zzbho:Ljava/lang/Boolean;

.field private static zzbhp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbhq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbhr:Lcom/google/android/gms/internal/measurement/zzp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 151
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhk:Ljava/lang/Long;

    .line 152
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhl:Ljava/lang/Double;

    .line 153
    invoke-static {v1, v2}, Lcom/google/android/gms/tagmanager/zzgi;->zzau(J)Lcom/google/android/gms/tagmanager/zzgi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhm:Lcom/google/android/gms/tagmanager/zzgi;

    .line 154
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhn:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbho:Ljava/lang/Boolean;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhp:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhq:Ljava/util/Map;

    .line 158
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhn:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhr:Lcom/google/android/gms/internal/measurement/zzp;

    return-void
.end method

.method private static getDouble(Ljava/lang/Object;)D
    .locals 2

    .line 94
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 95
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p0, "getDouble received non-Number"

    .line 96
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/String;
    .locals 0

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/tagmanager/zzgi;
    .locals 2

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;

    move-result-object p0

    .line 11
    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzgi;

    if-eqz v0, :cond_0

    .line 12
    check-cast p0, Lcom/google/android/gms/tagmanager/zzgi;

    return-object p0

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzm(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzgi;->zzau(J)Lcom/google/android/gms/tagmanager/zzgi;

    move-result-object p0

    return-object p0

    .line 15
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzk(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgi;->zza(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/zzgi;

    move-result-object p0

    return-object p0

    .line 17
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzei(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzgi;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Long;
    .locals 2

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;

    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzm(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzei(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzgi;

    move-result-object p0

    .line 22
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhm:Lcom/google/android/gms/tagmanager/zzgi;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhk:Ljava/lang/Long;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static zzeh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzp;
    .locals 2

    .line 87
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    const/4 v1, 0x5

    .line 88
    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    .line 89
    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    return-object v0
.end method

.method private static zzei(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzgi;
    .locals 2

    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgi;->zzeg(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzgi;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 107
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to convert \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' to a number."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 108
    sget-object p0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhm:Lcom/google/android/gms/tagmanager/zzgi;

    return-object p0
.end method

.method public static zzf(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Double;
    .locals 2

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzk(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzei(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzgi;

    move-result-object p0

    .line 27
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhm:Lcom/google/android/gms/tagmanager/zzgi;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhl:Ljava/lang/Double;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static zzg(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Boolean;
    .locals 1

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;

    move-result-object p0

    .line 30
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "false"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 34
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lcom/google/android/gms/tagmanager/zzgj;->zzbho:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 111
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 148
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to convert a value of type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    return-object v0

    .line 147
    :pswitch_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 138
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, p0, v2

    .line 140
    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzgj;->zzi(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 142
    sget-object v5, Lcom/google/android/gms/tagmanager/zzgj;->zzbhn:Ljava/lang/String;

    if-ne v4, v5, :cond_1

    return-object v0

    .line 144
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 137
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p0, "Trying to convert a function id to object"

    .line 135
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    const-string p0, "Trying to convert a macro reference to object"

    .line 133
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    return-object v0

    .line 121
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v3, v3

    if-eq v1, v3, :cond_4

    const-string v1, "Converting an invalid value to object: "

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzr;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    return-object v0

    .line 124
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 125
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 126
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;

    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_6

    if-nez v4, :cond_5

    goto :goto_3

    .line 130
    :cond_5
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0

    :cond_7
    return-object v1

    .line 113
    :pswitch_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v3, p0

    :goto_4
    if-ge v2, v3, :cond_9

    aget-object v4, p0, v2

    .line 115
    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzgj;->zzh(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    return-object v0

    .line 118
    :cond_8
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    return-object v1

    .line 112
    :pswitch_7
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzi(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 8
    sget-object p0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhn:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzp;
    .locals 9

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 39
    instance-of v1, p0, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_0

    .line 40
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzp;

    return-object p0

    .line 41
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 42
    iput v2, v0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    .line 43
    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    goto/16 :goto_7

    .line 44
    :cond_1
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    .line 45
    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    .line 46
    check-cast p0, Ljava/util/List;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 49
    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzgj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v5

    .line 50
    sget-object v6, Lcom/google/android/gms/tagmanager/zzgj;->zzbhr:Lcom/google/android/gms/internal/measurement/zzp;

    if-ne v5, v6, :cond_2

    .line 51
    sget-object p0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhr:Lcom/google/android/gms/internal/measurement/zzp;

    return-object p0

    :cond_2
    if-nez v4, :cond_4

    .line 52
    iget-boolean v4, v5, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 53
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_5
    new-array p0, v3, [Lcom/google/android/gms/internal/measurement/zzp;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/gms/internal/measurement/zzp;

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    move v3, v4

    goto/16 :goto_7

    .line 56
    :cond_6
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    .line 57
    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    .line 58
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v5, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/tagmanager/zzgj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v7

    .line 63
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzgj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v6

    .line 64
    sget-object v8, Lcom/google/android/gms/tagmanager/zzgj;->zzbhr:Lcom/google/android/gms/internal/measurement/zzp;

    if-eq v7, v8, :cond_a

    sget-object v8, Lcom/google/android/gms/tagmanager/zzgj;->zzbhr:Lcom/google/android/gms/internal/measurement/zzp;

    if-ne v6, v8, :cond_7

    goto :goto_6

    :cond_7
    if-nez v5, :cond_9

    .line 66
    iget-boolean v5, v7, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    if-nez v5, :cond_9

    iget-boolean v5, v6, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v5, 0x1

    .line 67
    :goto_5
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 65
    :cond_a
    :goto_6
    sget-object p0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhr:Lcom/google/android/gms/internal/measurement/zzp;

    return-object p0

    .line 70
    :cond_b
    new-array p0, v3, [Lcom/google/android/gms/internal/measurement/zzp;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/gms/internal/measurement/zzp;

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 71
    new-array p0, v3, [Lcom/google/android/gms/internal/measurement/zzp;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/gms/internal/measurement/zzp;

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    move v3, v5

    goto :goto_7

    .line 72
    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzk(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 73
    iput v2, v0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    goto :goto_7

    .line 75
    :cond_d
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x6

    .line 76
    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgj;->zzm(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    goto :goto_7

    .line 78
    :cond_e
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    const/16 v1, 0x8

    .line 79
    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    .line 80
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    .line 85
    :goto_7
    iput-boolean v3, v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    return-object v0

    :cond_f
    const-string v0, "Converting to Value from unknown object type: "

    if-nez p0, :cond_10

    const-string p0, "null"

    goto :goto_8

    .line 82
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_11
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 83
    :goto_9
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 84
    sget-object p0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhr:Lcom/google/android/gms/internal/measurement/zzp;

    return-object p0
.end method

.method private static zzk(Ljava/lang/Object;)Z
    .locals 1

    .line 91
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzgi;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/tagmanager/zzgi;

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->zzqi()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzl(Ljava/lang/Object;)Z
    .locals 1

    .line 98
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzgi;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/tagmanager/zzgi;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->zzqj()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzm(Ljava/lang/Object;)J
    .locals 2

    .line 101
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 102
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p0, "getInt64 received non-Number"

    .line 103
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static zzqk()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzql()Ljava/lang/Long;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhk:Ljava/lang/Long;

    return-object v0
.end method

.method public static zzqm()Ljava/lang/Double;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhl:Ljava/lang/Double;

    return-object v0
.end method

.method public static zzqn()Ljava/lang/Boolean;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbho:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static zzqo()Lcom/google/android/gms/tagmanager/zzgi;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhm:Lcom/google/android/gms/tagmanager/zzgi;

    return-object v0
.end method

.method public static zzqp()Ljava/lang/String;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhn:Ljava/lang/String;

    return-object v0
.end method

.method public static zzqq()Lcom/google/android/gms/internal/measurement/zzp;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgj;->zzbhr:Lcom/google/android/gms/internal/measurement/zzp;

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/measurement/zzrv;
.super Ljava/lang/Object;


# direct methods
.method private static zza(ILcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzp;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/measurement/zzl;",
            "[",
            "Lcom/google/android/gms/internal/measurement/zzp;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzp;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzsd;
        }
    .end annotation

    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Value cycle detected.  Current value reference: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".  Previous value references: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzex(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzl;->zzou:[Lcom/google/android/gms/internal/measurement/zzp;

    const-string v1, "values"

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzrv;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzp;

    .line 70
    aget-object v1, p2, p0

    if-eqz v1, :cond_1

    .line 71
    aget-object p0, p2, p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget v2, v0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 108
    :pswitch_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzk(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v1

    .line 109
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzl(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzg$zza;

    move-result-object v2

    .line 110
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpz:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzp;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 112
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpz:[I

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v4, :cond_5

    aget v6, v2, v3

    .line 113
    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    add-int/lit8 v8, v5, 0x1

    .line 114
    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(ILcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzk(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v1

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzl(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzg$zza;

    move-result-object v2

    .line 103
    iget v2, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzqa:I

    .line 104
    invoke-static {v2, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(ILcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/String;

    move-result-object p1

    .line 106
    iput-object p1, v1, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    goto/16 :goto_4

    .line 84
    :pswitch_2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzk(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v1

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzl(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzg$zza;

    move-result-object v2

    .line 86
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpw:[I

    array-length v4, v4

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpx:[I

    array-length v5, v5

    if-eq v4, v5, :cond_2

    .line 87
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpw:[I

    array-length v4, v4

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpx:[I

    array-length v5, v5

    const/16 v6, 0x3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Uneven map keys ("

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and map values ("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzrv;->zzex(Ljava/lang/String;)V

    .line 88
    :cond_2
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpw:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzp;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 89
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpw:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzp;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 91
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpw:[I

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget v8, v4, v6

    .line 92
    iget-object v9, v1, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    add-int/lit8 v10, v7, 0x1

    .line 93
    invoke-static {v8, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(ILcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v10

    goto :goto_1

    .line 96
    :cond_3
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpx:[I

    array-length v4, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    aget v6, v2, v3

    .line 97
    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    add-int/lit8 v8, v5, 0x1

    .line 98
    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(ILcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_2

    .line 75
    :pswitch_3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzl(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzg$zza;

    move-result-object v1

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzk(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v2

    .line 77
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpv:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzp;

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 79
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpv:[I

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v3, v4, :cond_4

    aget v6, v1, v3

    .line 80
    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    add-int/lit8 v8, v5, 0x1

    .line 81
    :try_start_0
    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(ILcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aput-object v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_4

    :pswitch_4
    move-object v1, v0

    :cond_5
    :goto_4
    if-nez v1, :cond_6

    .line 119
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid value: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzrv;->zzex(Ljava/lang/String;)V

    .line 120
    :cond_6
    aput-object v1, p2, p0

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1

    :catch_0
    move-exception p0

    .line 81
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;I)Lcom/google/android/gms/internal/measurement/zzrx;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzsd;
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrx;->zzsz()Lcom/google/android/gms/internal/measurement/zzry;

    move-result-object p3

    .line 133
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzl;->zzov:[Lcom/google/android/gms/internal/measurement/zzk;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "properties"

    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/measurement/zzrv;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzk;

    .line 135
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzl;->zzot:[Ljava/lang/String;

    iget v4, v2, Lcom/google/android/gms/internal/measurement/zzk;->key:I

    const-string v5, "keys"

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzrv;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 136
    iget v2, v2, Lcom/google/android/gms/internal/measurement/zzk;->value:I

    const-string v4, "values"

    invoke-static {p2, v2, v4}, Lcom/google/android/gms/internal/measurement/zzrv;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzp;

    .line 137
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzb;->zzks:Lcom/google/android/gms/internal/measurement/zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzb;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/measurement/zzry;->zzm(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzry;

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {p3, v3, v2}, Lcom/google/android/gms/internal/measurement/zzry;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzry;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzry;->zzta()Lcom/google/android/gms/internal/measurement/zzrx;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzl;)Lcom/google/android/gms/internal/measurement/zzrz;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzsd;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzou:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzou:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v2, p0, v0, v3}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(ILcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzp;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrz;->zztb()Lcom/google/android/gms/internal/measurement/zzsa;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 7
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzox:[Lcom/google/android/gms/internal/measurement/zzh;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 8
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzox:[Lcom/google/android/gms/internal/measurement/zzh;

    aget-object v5, v5, v4

    invoke-static {v5, p0, v0, v4}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;I)Lcom/google/android/gms/internal/measurement/zzrx;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 11
    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzoy:[Lcom/google/android/gms/internal/measurement/zzh;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 12
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzoy:[Lcom/google/android/gms/internal/measurement/zzh;

    aget-object v6, v6, v5

    invoke-static {v6, p0, v0, v5}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;I)Lcom/google/android/gms/internal/measurement/zzrx;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 14
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 15
    :goto_3
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzow:[Lcom/google/android/gms/internal/measurement/zzh;

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 16
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzow:[Lcom/google/android/gms/internal/measurement/zzh;

    aget-object v7, v7, v6

    .line 17
    invoke-static {v7, p0, v0, v6}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzl;[Lcom/google/android/gms/internal/measurement/zzp;I)Lcom/google/android/gms/internal/measurement/zzrx;

    move-result-object v7

    .line 18
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzsa;->zzc(Lcom/google/android/gms/internal/measurement/zzrx;)Lcom/google/android/gms/internal/measurement/zzsa;

    .line 19
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzoz:[Lcom/google/android/gms/internal/measurement/zzm;

    array-length v6, v0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_e

    aget-object v8, v0, v7

    .line 23
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzsc;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/measurement/zzsc;-><init>(Lcom/google/android/gms/internal/measurement/zzrw;)V

    .line 25
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzpj:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_4

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 26
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzrx;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzsc;->zzd(Lcom/google/android/gms/internal/measurement/zzrx;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 28
    :cond_4
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzpk:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_5

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 29
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzrx;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzsc;->zze(Lcom/google/android/gms/internal/measurement/zzrx;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 31
    :cond_5
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzpl:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_6

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 32
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzrx;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzsc;->zzf(Lcom/google/android/gms/internal/measurement/zzrx;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 34
    :cond_6
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzpn:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v11, :cond_7

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 35
    iget-object v14, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzou:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v13, v14, v13

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzsc;->zzfl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 37
    :cond_7
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzpm:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_8

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 38
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzrx;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzsc;->zzg(Lcom/google/android/gms/internal/measurement/zzrx;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 40
    :cond_8
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzpo:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v11, :cond_9

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 41
    iget-object v14, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzou:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v13, v14, v13

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzsc;->zzfm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 43
    :cond_9
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzpp:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_a

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 44
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzrx;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzsc;->zzh(Lcom/google/android/gms/internal/measurement/zzrx;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 46
    :cond_a
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzpr:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v11, :cond_b

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 47
    iget-object v14, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzou:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v13, v14, v13

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzsc;->zzfn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 49
    :cond_b
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzpq:[I

    array-length v11, v10

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v11, :cond_c

    aget v13, v10, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 50
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzrx;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzsc;->zzi(Lcom/google/android/gms/internal/measurement/zzrx;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 52
    :cond_c
    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzm;->zzps:[I

    array-length v10, v8

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v10, :cond_d

    aget v12, v8, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 53
    iget-object v13, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzou:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v12, v13, v12

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/zzsc;->zzfo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsc;

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 55
    :cond_d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzsc;->zztg()Lcom/google/android/gms/internal/measurement/zzsb;

    move-result-object v8

    .line 56
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzsa;->zzb(Lcom/google/android/gms/internal/measurement/zzsb;)Lcom/google/android/gms/internal/measurement/zzsa;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 58
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzl;->version:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzsa;->zzfk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsa;

    .line 59
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzl;->zzph:I

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/measurement/zzsa;->zzag(I)Lcom/google/android/gms/internal/measurement/zzsa;

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzsa;->zztd()Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object p0

    return-object p0
.end method

.method private static zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzsd;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 129
    array-length v0, p0

    if-lt p1, v0, :cond_1

    .line 130
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Index out of bounds detected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzrv;->zzex(Ljava/lang/String;)V

    .line 131
    :cond_1
    aget-object p0, p0, p1

    return-object p0
.end method

.method public static zza(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 142
    new-array v0, v0, [B

    .line 143
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static zzex(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzsd;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzsd;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzp;
    .locals 2

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    .line 62
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    .line 64
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    if-eqz v1, :cond_0

    .line 65
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    iput-boolean p0, v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    :cond_0
    return-object v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzg$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzsd;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpt:Lcom/google/android/gms/internal/measurement/zzzm;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzg$zza;

    if-nez v0, :cond_0

    .line 125
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected a ServingValue and didn\'t get one. Value is: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrv;->zzex(Ljava/lang/String;)V

    .line 126
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzg$zza;->zzpt:Lcom/google/android/gms/internal/measurement/zzzm;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzm;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzg$zza;

    return-object p0
.end method

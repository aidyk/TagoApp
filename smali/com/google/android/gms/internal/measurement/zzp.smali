.class public final Lcom/google/android/gms/internal/measurement/zzp;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzqi:[Lcom/google/android/gms/internal/measurement/zzp;


# instance fields
.field public string:Ljava/lang/String;

.field public type:I

.field public zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

.field public zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

.field public zzql:[Lcom/google/android/gms/internal/measurement/zzp;

.field public zzqm:Ljava/lang/String;

.field public zzqn:Ljava/lang/String;

.field public zzqo:J

.field public zzqp:Z

.field public zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

.field public zzqr:[I

.field public zzqs:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzp;->zzk()[Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzp;->zzk()[Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzp;->zzk()[Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzp;->zzk()[Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcbs:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    .line 23
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzcgh:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzp;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    const/16 v1, 0x50

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 200
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 346
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x5a

    .line 332
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 334
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_2

    .line 336
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    :cond_2
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 338
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 339
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 340
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 342
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 343
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 344
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_0

    .line 299
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 300
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzar(I)I

    move-result v0

    .line 302
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    .line 303
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzzf()I

    move-result v5

    if-lez v5, :cond_4

    .line 305
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v5

    .line 306
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzp;->zzc(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_8

    .line 312
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzzi;->zzca(I)V

    .line 313
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    array-length v3, v3

    :goto_4
    add-int/2addr v4, v3

    .line 314
    new-array v4, v4, [I

    if-eqz v3, :cond_6

    .line 316
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    :cond_6
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzzf()I

    move-result v2

    if-lez v2, :cond_7

    .line 318
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v2

    .line 320
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v5

    .line 321
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzp;->zzc(I)I

    move-result v5

    aput v5, v4, v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 325
    :catch_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zzca(I)V

    .line 326
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    goto :goto_5

    .line 328
    :cond_7
    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    .line 329
    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzas(I)V

    goto/16 :goto_0

    .line 273
    :sswitch_3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v1

    .line 274
    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6
    if-ge v4, v1, :cond_a

    if-eqz v4, :cond_9

    .line 278
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 279
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v6

    .line 281
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v7

    .line 282
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzp;->zzc(I)I

    move-result v7

    aput v7, v3, v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 286
    :catch_2
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/measurement/zzzi;->zzca(I)V

    .line 287
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    if-eqz v5, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    array-length v0, v0

    :goto_8
    if-nez v0, :cond_c

    .line 291
    array-length v1, v3

    if-ne v5, v1, :cond_c

    .line 292
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    goto/16 :goto_0

    :cond_c
    add-int v1, v0, v5

    .line 293
    new-array v1, v1, [I

    if-eqz v0, :cond_d

    .line 295
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    :cond_d
    invoke-static {v3, v2, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    goto/16 :goto_0

    .line 270
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    goto/16 :goto_0

    .line 267
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 268
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    goto/16 :goto_0

    .line 264
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    goto/16 :goto_0

    .line 262
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x2a

    .line 248
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    :goto_9
    add-int/2addr v0, v1

    .line 250
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_f

    .line 252
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    :cond_f
    :goto_a
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_10

    .line 254
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 255
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 256
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 258
    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 259
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 260
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x22

    .line 233
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_b

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    :goto_b
    add-int/2addr v0, v1

    .line 235
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_12

    .line 237
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    :cond_12
    :goto_c
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_13

    .line 239
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 240
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 241
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 243
    :cond_13
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 244
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 245
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x1a

    .line 218
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_d

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    :goto_d
    add-int/2addr v0, v1

    .line 220
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_15

    .line 222
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    :cond_15
    :goto_e
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_16

    .line 224
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 225
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 226
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 228
    :cond_16
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 229
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 230
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    goto/16 :goto_0

    .line 215
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    goto/16 :goto_0

    .line 202
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v1

    .line 204
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v2

    if-lez v2, :cond_17

    const/16 v3, 0x8

    if-gt v2, v3, :cond_17

    .line 209
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    goto/16 :goto_0

    .line 208
    :cond_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum Type"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 212
    :catch_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzca(I)V

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    goto/16 :goto_0

    :sswitch_d
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x52 -> :sswitch_2
        0x5a -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method private static zzc(I)I
    .locals 3

    if-lez p0, :cond_0

    const/16 v0, 0x11

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Escaping"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzk()[Lcom/google/android/gms/internal/measurement/zzp;
    .locals 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqi:[Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzp;->zzqi:[Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzp;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzp;->zzqi:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzp;->zzqi:[Lcom/google/android/gms/internal/measurement/zzp;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 29
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 31
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzp;

    .line 32
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    if-eq v1, v3, :cond_2

    return v2

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 35
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    .line 37
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 39
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 41
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 43
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 45
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 46
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    if-eqz v1, :cond_9

    return v2

    .line 48
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 50
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 51
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    if-eqz v1, :cond_b

    return v2

    .line 53
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 55
    :cond_b
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    .line 57
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    if-eq v1, v3, :cond_d

    return v2

    .line 59
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 61
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 63
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    if-eq v1, v3, :cond_10

    return v2

    .line 65
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_0

    .line 67
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 66
    :cond_12
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_14

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1

    :cond_13
    return v2

    :cond_14
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 73
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 75
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 77
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v1, 0x4d5

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 85
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    .line 87
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    if-eqz v1, :cond_4

    const/16 v3, 0x4cf

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    :cond_6
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzp;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    .line 100
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 103
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 104
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 106
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 109
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 110
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 112
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    .line 115
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x7

    .line 117
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 118
    :cond_8
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    .line 119
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 120
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    .line 121
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 122
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    .line 123
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    array-length v2, v2

    if-ge v0, v2, :cond_b

    const/16 v2, 0xa

    .line 124
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 126
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v0, v0

    if-lez v0, :cond_d

    .line 127
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    .line 130
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 132
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    .line 133
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 134
    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    return-void
.end method

.method protected final zzf()I
    .locals 8

    .line 136
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 137
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->type:I

    const/4 v2, 0x1

    .line 138
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 140
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzp;->string:Ljava/lang/String;

    .line 141
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqj:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    const/4 v5, 0x3

    .line 147
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    const/4 v0, 0x0

    .line 150
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 151
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqk:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    const/4 v5, 0x4

    .line 154
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 156
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    const/4 v0, 0x0

    .line 157
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    .line 158
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzql:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v4, v4, v0

    if-eqz v4, :cond_7

    const/4 v5, 0x5

    .line 161
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    .line 163
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x6

    .line 164
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqm:Ljava/lang/String;

    .line 165
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x7

    .line 167
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqn:Ljava/lang/String;

    .line 168
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_b
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    .line 170
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqo:J

    .line 171
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqs:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x9

    .line 174
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 176
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    array-length v1, v1

    if-lez v1, :cond_f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 178
    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    array-length v5, v5

    if-ge v1, v5, :cond_e

    .line 179
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    aget v5, v5, v1

    .line 181
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbd(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    add-int/2addr v0, v4

    .line 184
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqr:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 185
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    if-lez v1, :cond_11

    .line 186
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    if-ge v3, v1, :cond_11

    .line 187
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqq:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v1, v1, v3

    if-eqz v1, :cond_10

    const/16 v4, 0xb

    .line 190
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 192
    :cond_11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzp;->zzqp:Z

    if-eqz v1, :cond_12

    const/16 v1, 0xc

    .line 194
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_12
    return v0
.end method

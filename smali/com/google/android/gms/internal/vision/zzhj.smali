.class final Lcom/google/android/gms/internal/vision/zzhj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzhw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/zzhw<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzzb:[I

.field private static final zzzc:Lsun/misc/Unsafe;


# instance fields
.field private final zzzd:[I

.field private final zzze:[Ljava/lang/Object;

.field private final zzzf:I

.field private final zzzg:I

.field private final zzzh:Lcom/google/android/gms/internal/vision/zzhf;

.field private final zzzi:Z

.field private final zzzj:Z

.field private final zzzk:Z

.field private final zzzl:Z

.field private final zzzm:[I

.field private final zzzn:I

.field private final zzzo:I

.field private final zzzp:Lcom/google/android/gms/internal/vision/zzhn;

.field private final zzzq:Lcom/google/android/gms/internal/vision/zzgp;

.field private final zzzr:Lcom/google/android/gms/internal/vision/zzio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzio<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzzs:Lcom/google/android/gms/internal/vision/zzfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzfl<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzzt:Lcom/google/android/gms/internal/vision/zzha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 4063
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzb:[I

    .line 4064
    invoke-static {}, Lcom/google/android/gms/internal/vision/zziu;->zzhj()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/zzhf;ZZ[IIILcom/google/android/gms/internal/vision/zzhn;Lcom/google/android/gms/internal/vision/zzgp;Lcom/google/android/gms/internal/vision/zzio;Lcom/google/android/gms/internal/vision/zzfl;Lcom/google/android/gms/internal/vision/zzha;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/vision/zzhf;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            "Lcom/google/android/gms/internal/vision/zzgp;",
            "Lcom/google/android/gms/internal/vision/zzio<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/zzfl<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzha;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzze:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzf:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzg:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/vision/zzfy;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzj:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/vision/zzfl;->zze(Lcom/google/android/gms/internal/vision/zzhf;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzn:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzo:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzp:Lcom/google/android/gms/internal/vision/zzhn;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzh:Lcom/google/android/gms/internal/vision/zzhf;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    return-void
.end method

.method private static zza(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzei;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3056
    invoke-static {p4}, Lcom/google/android/gms/internal/vision/zzhj;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzip;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    .line 3057
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzeh;->zza(I[BIILcom/google/android/gms/internal/vision/zzip;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result p0

    return p0
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzhw;I[BIILcom/google/android/gms/internal/vision/zzge;Lcom/google/android/gms/internal/vision/zzei;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzhw<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/vision/zzge<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzei;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3009
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIILcom/google/android/gms/internal/vision/zzei;)I

    move-result p3

    .line 3010
    iget-object v0, p6, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_0

    .line 3012
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3013
    iget v1, p6, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne p1, v1, :cond_0

    .line 3014
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIILcom/google/android/gms/internal/vision/zzei;)I

    move-result p3

    .line 3015
    iget-object v0, p6, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return p3
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzhw;[BIIILcom/google/android/gms/internal/vision/zzei;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3001
    check-cast p0, Lcom/google/android/gms/internal/vision/zzhj;

    .line 3002
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhj;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 3004
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzei;)I

    move-result p1

    .line 3005
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;)V

    .line 3006
    iput-object v7, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    return p1
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzhw;[BIILcom/google/android/gms/internal/vision/zzei;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 2990
    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    .line 2992
    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/vision/zzeh;->zza(I[BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 2993
    iget p2, p4, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 2996
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzhw;->newInstance()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 2997
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhw;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzei;)V

    .line 2998
    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/vision/zzhw;->zze(Ljava/lang/Object;)V

    .line 2999
    iput-object p3, p4, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    return p2

    .line 2995
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p0

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzio;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzio<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1195
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzio;->zzt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1196
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzio;->zzp(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzei;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/vision/zzei;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 3435
    sget-object v12, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    .line 3436
    iget-object v7, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 3517
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 3518
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIIILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3519
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 3520
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 3523
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    .line 3524
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    .line 3525
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3526
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    if-nez v5, :cond_a

    .line 3511
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3512
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzez;->zzd(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    if-nez v5, :cond_a

    .line 3507
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3508
    iget v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzez;->zzaq(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    if-nez v5, :cond_a

    .line 3498
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v3

    .line 3499
    iget v4, v11, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    .line 3500
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzbj(I)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3501
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/vision/zzgd;->zzh(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 3504
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzhj;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzip;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/vision/zzip;->zzb(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_9

    .line 3502
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_7

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 3494
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zze([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3495
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 3481
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v2

    move/from16 v5, p4

    .line 3482
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3483
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 3484
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    .line 3487
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 3488
    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    .line 3489
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3490
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3491
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 3467
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3468
    iget v4, v11, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 3470
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 3472
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/vision/zziw;->zzg([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 3473
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfp()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    .line 3474
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/vision/zzga;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3475
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 3477
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_7
    if-nez v5, :cond_a

    .line 3463
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3464
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 3459
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_7

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 3455
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    goto :goto_7

    :pswitch_a
    if-nez v5, :cond_a

    .line 3451
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3452
    iget v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_b
    if-nez v5, :cond_a

    .line 3447
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3448
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 3443
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_7

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 3439
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzeh;->zzc([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    .line 3527
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :cond_a
    :goto_8
    move v2, v4

    :goto_9
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzei;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/vision/zzei;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 3058
    sget-object v11, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/vision/zzge;

    .line 3059
    invoke-interface {v11}, Lcom/google/android/gms/internal/vision/zzge;->zzch()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 3060
    invoke-interface {v11}, Lcom/google/android/gms/internal/vision/zzge;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    .line 3063
    :goto_0
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/vision/zzge;->zzah(I)Lcom/google/android/gms/internal/vision/zzge;

    move-result-object v11

    .line 3064
    sget-object v12, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1b

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_32

    .line 3375
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 3379
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIIILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3380
    iget-object v8, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_32

    .line 3382
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v8

    .line 3383
    iget v9, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v9, :cond_32

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 3384
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIIILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3385
    iget-object v8, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v10, :cond_4

    .line 3350
    check-cast v11, Lcom/google/android/gms/internal/vision/zzgt;

    .line 3351
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3352
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    .line 3354
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3355
    iget-wide v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzez;->zzd(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_1c

    .line 3357
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_32

    .line 3362
    check-cast v11, Lcom/google/android/gms/internal/vision/zzgt;

    .line 3363
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3364
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/zzez;->zzd(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    :goto_3
    if-ge v1, v5, :cond_33

    .line 3366
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3367
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3368
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3369
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/zzez;->zzd(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    goto :goto_3

    :pswitch_2
    if-ne v6, v10, :cond_7

    .line 3325
    check-cast v11, Lcom/google/android/gms/internal/vision/zzfz;

    .line 3326
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3327
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_5

    .line 3329
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3330
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzez;->zzaq(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_6

    goto/16 :goto_1c

    .line 3332
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :cond_7
    if-nez v6, :cond_32

    .line 3337
    check-cast v11, Lcom/google/android/gms/internal/vision/zzfz;

    .line 3338
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3339
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzez;->zzaq(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    :goto_5
    if-ge v1, v5, :cond_33

    .line 3341
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3342
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3343
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3344
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzez;->zzaq(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    goto :goto_5

    :pswitch_3
    if-ne v6, v10, :cond_8

    .line 3312
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzge;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_32

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 3314
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza(I[BIILcom/google/android/gms/internal/vision/zzge;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3315
    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/vision/zzfy;

    iget-object v3, v1, Lcom/google/android/gms/internal/vision/zzfy;->zzwj:Lcom/google/android/gms/internal/vision/zzip;

    .line 3316
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzip;->zzhe()Lcom/google/android/gms/internal/vision/zzip;

    move-result-object v4

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    .line 3319
    :cond_9
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/vision/zzhj;->zzbj(I)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    move/from16 v6, p6

    .line 3320
    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzgd;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzip;

    if-eqz v3, :cond_a

    .line 3322
    iput-object v3, v1, Lcom/google/android/gms/internal/vision/zzfy;->zzwj:Lcom/google/android/gms/internal/vision/zzip;

    :cond_a
    :goto_7
    move v1, v2

    goto/16 :goto_1c

    :pswitch_4
    if-ne v6, v10, :cond_32

    .line 3285
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3286
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ltz v4, :cond_10

    .line 3289
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_f

    if-nez v4, :cond_b

    .line 3292
    sget-object v4, Lcom/google/android/gms/internal/vision/zzeo;->zzrx:Lcom/google/android/gms/internal/vision/zzeo;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3293
    :cond_b
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/zzeo;->zzb([BII)Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_8
    if-ge v1, v5, :cond_33

    .line 3296
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3297
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3298
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3299
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ltz v4, :cond_e

    .line 3302
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_d

    if-nez v4, :cond_c

    .line 3305
    sget-object v4, Lcom/google/android/gms/internal/vision/zzeo;->zzrx:Lcom/google/android/gms/internal/vision/zzeo;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3306
    :cond_c
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/zzeo;->zzb([BII)Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_8

    .line 3303
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    .line 3301
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfi()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    .line 3290
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    .line 3288
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfi()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v10, :cond_32

    .line 3280
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 3281
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;I[BIILcom/google/android/gms/internal/vision/zzge;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_6
    if-ne v6, v10, :cond_32

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    cmp-long v1, v8, v14

    if-nez v1, :cond_15

    .line 3224
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3225
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ltz v4, :cond_14

    if-nez v4, :cond_11

    const-string v4, ""

    .line 3229
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3230
    :cond_11
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/vision/zzga;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v1, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3231
    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_33

    .line 3234
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3235
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3236
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3237
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ltz v4, :cond_13

    if-nez v4, :cond_12

    const-string v4, ""

    .line 3241
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3242
    :cond_12
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/vision/zzga;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v1, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3243
    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_9

    .line 3239
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfi()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    .line 3227
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfi()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    .line 3250
    :cond_15
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3251
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ltz v4, :cond_1b

    if-nez v4, :cond_16

    const-string v4, ""

    .line 3255
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    add-int v6, v1, v4

    .line 3256
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/vision/zziw;->zzg([BII)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 3258
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzga;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3259
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    :goto_a
    move v1, v6

    :goto_b
    if-ge v1, v5, :cond_33

    .line 3262
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3263
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3264
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3265
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ltz v4, :cond_19

    if-nez v4, :cond_17

    const-string v4, ""

    .line 3269
    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_17
    add-int v6, v1, v4

    .line 3270
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/vision/zziw;->zzg([BII)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 3272
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzga;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3273
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/vision/zzge;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3271
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfp()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    .line 3267
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfi()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    .line 3257
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfp()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    .line 3253
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfi()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v10, :cond_1f

    .line 3197
    check-cast v11, Lcom/google/android/gms/internal/vision/zzem;

    .line 3198
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3199
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    add-int/2addr v4, v2

    :goto_c
    if-ge v2, v4, :cond_1d

    .line 3201
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v2

    .line 3202
    iget-wide v5, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_1c

    const/4 v5, 0x1

    goto :goto_d

    :cond_1c
    const/4 v5, 0x0

    :goto_d
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/vision/zzem;->addBoolean(Z)V

    goto :goto_c

    :cond_1d
    if-ne v2, v4, :cond_1e

    goto/16 :goto_7

    .line 3204
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :cond_1f
    if-nez v6, :cond_32

    .line 3209
    check-cast v11, Lcom/google/android/gms/internal/vision/zzem;

    .line 3210
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3211
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    goto :goto_e

    :cond_20
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/vision/zzem;->addBoolean(Z)V

    :goto_f
    if-ge v4, v5, :cond_32

    .line 3213
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v6

    .line 3214
    iget v8, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v8, :cond_32

    .line 3215
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3216
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    goto :goto_10

    :cond_21
    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/vision/zzem;->addBoolean(Z)V

    goto :goto_f

    :pswitch_8
    if-ne v6, v10, :cond_24

    .line 3172
    check-cast v11, Lcom/google/android/gms/internal/vision/zzfz;

    .line 3173
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3174
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    add-int/2addr v2, v1

    :goto_11
    if-ge v1, v2, :cond_22

    .line 3176
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_11

    :cond_22
    if-ne v1, v2, :cond_23

    goto/16 :goto_1c

    .line 3179
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :cond_24
    if-ne v6, v9, :cond_32

    .line 3184
    check-cast v11, Lcom/google/android/gms/internal/vision/zzfz;

    .line 3185
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    add-int/lit8 v1, v4, 0x4

    :goto_12
    if-ge v1, v5, :cond_33

    .line 3188
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3189
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3190
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_12

    :pswitch_9
    if-ne v6, v10, :cond_27

    .line 3147
    check-cast v11, Lcom/google/android/gms/internal/vision/zzgt;

    .line 3148
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3149
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_25

    .line 3151
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_13

    :cond_25
    if-ne v1, v2, :cond_26

    goto/16 :goto_1c

    .line 3154
    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :cond_27
    if-ne v6, v13, :cond_32

    .line 3159
    check-cast v11, Lcom/google/android/gms/internal/vision/zzgt;

    .line 3160
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    add-int/lit8 v1, v4, 0x8

    :goto_14
    if-ge v1, v5, :cond_33

    .line 3163
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3164
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3165
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_14

    :pswitch_a
    if-ne v6, v10, :cond_28

    .line 3142
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzge;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    goto/16 :goto_1c

    :cond_28
    if-nez v6, :cond_32

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 3144
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/vision/zzeh;->zza(I[BIILcom/google/android/gms/internal/vision/zzge;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    goto/16 :goto_1c

    :pswitch_b
    if-ne v6, v10, :cond_2b

    .line 3118
    check-cast v11, Lcom/google/android/gms/internal/vision/zzgt;

    .line 3119
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3120
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    add-int/2addr v2, v1

    :goto_15
    if-ge v1, v2, :cond_29

    .line 3122
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3123
    iget-wide v4, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    goto :goto_15

    :cond_29
    if-ne v1, v2, :cond_2a

    goto/16 :goto_1c

    .line 3125
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :cond_2b
    if-nez v6, :cond_32

    .line 3130
    check-cast v11, Lcom/google/android/gms/internal/vision/zzgt;

    .line 3131
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3132
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    :goto_16
    if-ge v1, v5, :cond_33

    .line 3134
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3135
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3136
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3137
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    goto :goto_16

    :pswitch_c
    if-ne v6, v10, :cond_2e

    .line 3093
    check-cast v11, Lcom/google/android/gms/internal/vision/zzfv;

    .line 3094
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3095
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_2c

    .line 3097
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzfv;->zzh(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_17

    :cond_2c
    if-ne v1, v2, :cond_2d

    goto :goto_1c

    .line 3100
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :cond_2e
    if-ne v6, v9, :cond_32

    .line 3105
    check-cast v11, Lcom/google/android/gms/internal/vision/zzfv;

    .line 3106
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zzfv;->zzh(F)V

    add-int/lit8 v1, v4, 0x4

    :goto_18
    if-ge v1, v5, :cond_33

    .line 3109
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3110
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3111
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zzfv;->zzh(F)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_18

    :pswitch_d
    if-ne v6, v10, :cond_31

    .line 3068
    check-cast v11, Lcom/google/android/gms/internal/vision/zzfh;

    .line 3069
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3070
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_2f

    .line 3072
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zzeh;->zzc([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/vision/zzfh;->zzc(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_19

    :cond_2f
    if-ne v1, v2, :cond_30

    goto :goto_1c

    .line 3075
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v1

    throw v1

    :cond_31
    if-ne v6, v13, :cond_32

    .line 3080
    check-cast v11, Lcom/google/android/gms/internal/vision/zzfh;

    .line 3081
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzeh;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzfh;->zzc(D)V

    add-int/lit8 v1, v4, 0x8

    :goto_1a
    if-ge v1, v5, :cond_33

    .line 3084
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v4

    .line 3085
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ne v2, v6, :cond_33

    .line 3086
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzeh;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzfh;->zzc(D)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_1a

    :cond_32
    :goto_1b
    move v1, v4

    :cond_33
    :goto_1c
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzei;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/vision/zzei;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3390
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    .line 3391
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/vision/zzhj;->zzbi(I)Ljava/lang/Object;

    move-result-object p5

    .line 3392
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 3393
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/vision/zzha;->zzl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3395
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/vision/zzha;->zzn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3396
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/vision/zzha;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3397
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 3398
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    .line 3399
    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/vision/zzha;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    .line 3400
    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/vision/zzha;->zzj(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 3402
    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result p3

    .line 3403
    iget p6, p8, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    if-ltz p6, :cond_5

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_5

    add-int/2addr p6, p3

    .line 3407
    iget-object p7, p1, Lcom/google/android/gms/internal/vision/zzgy;->zzyw:Ljava/lang/Object;

    .line 3408
    iget-object v0, p1, Lcom/google/android/gms/internal/vision/zzgy;->zzgq:Ljava/lang/Object;

    :goto_0
    if-ge p3, p6, :cond_3

    add-int/lit8 v1, p3, 0x1

    .line 3410
    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    .line 3412
    invoke-static {p3, p2, v1, p8}, Lcom/google/android/gms/internal/vision/zzeh;->zza(I[BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3413
    iget p3, p8, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    :cond_1
    move v2, v1

    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3422
    :pswitch_0
    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzgy;->zzyx:Lcom/google/android/gms/internal/vision/zzjd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzjd;->zzhp()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 3423
    iget-object v4, p1, Lcom/google/android/gms/internal/vision/zzgy;->zzyx:Lcom/google/android/gms/internal/vision/zzjd;

    iget-object p3, p1, Lcom/google/android/gms/internal/vision/zzgy;->zzgq:Ljava/lang/Object;

    .line 3424
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 3425
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/zzhj;->zza([BIILcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result p3

    .line 3426
    iget-object v0, p8, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    goto :goto_0

    .line 3417
    :pswitch_1
    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzgy;->zzyv:Lcom/google/android/gms/internal/vision/zzjd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzjd;->zzhp()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 3418
    iget-object v4, p1, Lcom/google/android/gms/internal/vision/zzgy;->zzyv:Lcom/google/android/gms/internal/vision/zzjd;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 3419
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/zzhj;->zza([BIILcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result p3

    .line 3420
    iget-object p7, p8, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    goto :goto_0

    .line 3428
    :cond_2
    :goto_1
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/android/gms/internal/vision/zzeh;->zza(I[BIILcom/google/android/gms/internal/vision/zzei;)I

    move-result p3

    goto :goto_0

    :cond_3
    if-ne p3, p6, :cond_4

    .line 3432
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 3431
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfo()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p1

    throw p1

    .line 3405
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzei;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/vision/zzei;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 3538
    sget-object v10, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    if-ge v0, v13, :cond_1d

    add-int/lit8 v3, v0, 0x1

    .line 3545
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3547
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zza(I[BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3548
    iget v3, v9, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 3552
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzr(II)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    goto :goto_3

    .line 3553
    :cond_1
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbn(I)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v2, v1, :cond_2

    move/from16 v17, v3

    move v2, v4

    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    move v6, v11

    const/16 v19, 0x0

    move v7, v5

    goto/16 :goto_1c

    .line 3557
    :cond_2
    iget-object v1, v15, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 v18, v2, 0x1

    aget v1, v1, v18

    const/high16 v18, 0xff00000

    and-int v18, v1, v18

    ushr-int/lit8 v8, v18, 0x14

    const v18, 0xfffff

    move/from16 v20, v5

    and-int v5, v1, v18

    int-to-long v11, v5

    const/16 v5, 0x11

    move/from16 v21, v1

    if-gt v8, v5, :cond_11

    .line 3565
    iget-object v5, v15, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 v22, v2, 0x2

    aget v5, v5, v22

    ushr-int/lit8 v22, v5, 0x14

    const/4 v1, 0x1

    shl-int v22, v1, v22

    and-int v5, v5, v18

    if-eq v5, v7, :cond_4

    const/4 v13, -0x1

    if-eq v7, v13, :cond_3

    move/from16 v24, v2

    int-to-long v1, v7

    .line 3570
    invoke-virtual {v10, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :cond_3
    move/from16 v24, v2

    :goto_4
    int-to-long v1, v5

    .line 3572
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    move v7, v5

    goto :goto_5

    :cond_4
    move/from16 v24, v2

    const/4 v13, -0x1

    :goto_5
    const/4 v1, 0x5

    packed-switch v8, :pswitch_data_0

    move/from16 v17, v3

    move v11, v4

    move/from16 v13, v20

    move/from16 v8, v24

    :goto_6
    move-object/from16 v12, p2

    :goto_7
    const/16 v18, -0x1

    goto/16 :goto_15

    :pswitch_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v5, v0, 0x4

    move/from16 v2, v24

    .line 3659
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    move-object/from16 v1, p2

    move v8, v2

    move v2, v4

    move/from16 v17, v3

    move/from16 v3, p4

    move v4, v5

    move/from16 v13, v20

    move-object/from16 v5, p6

    .line 3660
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIIILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_5

    .line 3662
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    .line 3664
    :cond_5
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    .line 3665
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3666
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    or-int v6, v6, v22

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move/from16 v11, p5

    move-object/from16 v12, p2

    goto/16 :goto_14

    :cond_6
    move/from16 v17, v3

    move/from16 v13, v20

    move/from16 v8, v24

    move v11, v4

    goto :goto_6

    :pswitch_1
    move/from16 v17, v3

    move/from16 v13, v20

    move/from16 v8, v24

    if-nez v0, :cond_7

    move-wide v2, v11

    move-object/from16 v12, p2

    .line 3650
    invoke-static {v12, v4, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v11

    .line 3651
    iget-wide v0, v9, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    .line 3652
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzez;->zzd(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    .line 3653
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    goto/16 :goto_10

    :cond_7
    move-object/from16 v12, p2

    goto/16 :goto_a

    :pswitch_2
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    move-object/from16 v12, p2

    if-nez v0, :cond_a

    .line 3643
    invoke-static {v12, v4, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3644
    iget v1, v9, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    .line 3645
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzaq(I)I

    move-result v1

    .line 3646
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v22

    goto/16 :goto_11

    :pswitch_3
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    move-object/from16 v12, p2

    if-nez v0, :cond_a

    .line 3634
    invoke-static {v12, v4, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3635
    iget v1, v9, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    .line 3636
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/vision/zzhj;->zzbj(I)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 3637
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/vision/zzgd;->zzh(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_9

    .line 3640
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzhj;->zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzip;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/google/android/gms/internal/vision/zzip;->zzb(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 3638
    :cond_9
    :goto_9
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v22

    goto/16 :goto_11

    :pswitch_4
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    const/4 v1, 0x2

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_a

    .line 3629
    invoke-static {v12, v4, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zze([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3630
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v22

    goto/16 :goto_11

    :cond_a
    :goto_a
    move v11, v4

    goto/16 :goto_7

    :pswitch_5
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    const/4 v1, 0x2

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_c

    .line 3618
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    move/from16 v11, p4

    const/16 v18, -0x1

    .line 3619
    invoke-static {v0, v12, v4, v11, v9}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_b

    .line 3621
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    .line 3623
    :cond_b
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v9, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    .line 3624
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3625
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_b
    or-int v6, v6, v22

    goto/16 :goto_e

    :cond_c
    move/from16 v11, p4

    const/16 v18, -0x1

    goto/16 :goto_f

    :pswitch_6
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    const/4 v1, 0x2

    move/from16 v11, p4

    move-object/from16 v12, p2

    const/16 v18, -0x1

    if-ne v0, v1, :cond_f

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_d

    .line 3611
    invoke-static {v12, v4, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zzc([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    goto :goto_c

    .line 3612
    :cond_d
    invoke-static {v12, v4, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3613
    :goto_c
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v22

    goto :goto_e

    :pswitch_7
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    move/from16 v11, p4

    move-object/from16 v12, p2

    const/16 v18, -0x1

    if-nez v0, :cond_f

    .line 3605
    invoke-static {v12, v4, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3606
    iget-wide v4, v9, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    const-wide/16 v19, 0x0

    cmp-long v1, v4, v19

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_d

    :cond_e
    const/4 v1, 0x0

    :goto_d
    invoke-static {v14, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JZ)V

    or-int v6, v6, v22

    goto :goto_e

    :pswitch_8
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    move/from16 v11, p4

    move-object/from16 v12, p2

    const/16 v18, -0x1

    if-ne v0, v1, :cond_f

    .line 3600
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v22

    :goto_e
    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move v13, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :pswitch_9
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    const/4 v1, 0x1

    move/from16 v11, p4

    move-object/from16 v12, p2

    const/16 v18, -0x1

    if-ne v0, v1, :cond_f

    .line 3595
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BI)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move v11, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v11, 0x8

    or-int v6, v6, v22

    goto/16 :goto_11

    :cond_f
    :goto_f
    move v11, v4

    goto/16 :goto_15

    :pswitch_a
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    move-object/from16 v12, p2

    const/16 v18, -0x1

    move v11, v4

    if-nez v0, :cond_10

    .line 3590
    invoke-static {v12, v11, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3591
    iget v1, v9, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v22

    goto :goto_11

    :pswitch_b
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    move-object/from16 v12, p2

    const/16 v18, -0x1

    move v11, v4

    if-nez v0, :cond_10

    .line 3585
    invoke-static {v12, v11, v9}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v11

    .line 3586
    iget-wide v4, v9, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    :goto_10
    move v2, v8

    move v0, v11

    goto :goto_12

    :pswitch_c
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    move-object/from16 v12, p2

    const/16 v18, -0x1

    move v11, v4

    if-ne v0, v1, :cond_10

    .line 3580
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v11, 0x4

    or-int v6, v6, v22

    goto :goto_11

    :pswitch_d
    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move/from16 v8, v24

    const/4 v1, 0x1

    move-object/from16 v12, p2

    const/16 v18, -0x1

    move v11, v4

    if-ne v0, v1, :cond_10

    .line 3575
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v11, 0x8

    or-int v6, v6, v22

    :goto_11
    move v2, v8

    :goto_12
    move v3, v13

    move/from16 v1, v17

    :goto_13
    move/from16 v11, p5

    :goto_14
    move/from16 v13, p4

    goto/16 :goto_0

    :cond_10
    :goto_15
    move/from16 v20, v6

    move/from16 v25, v7

    move/from16 v19, v8

    move-object/from16 v28, v10

    move v2, v11

    move v7, v13

    goto/16 :goto_1b

    :cond_11
    move v5, v2

    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v20

    move-object/from16 v12, p2

    const/16 v18, -0x1

    move v11, v4

    const/16 v1, 0x1b

    if-ne v8, v1, :cond_15

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 3671
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzge;

    .line 3672
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzge;->zzch()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3673
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzge;->size()I

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0xa

    goto :goto_16

    :cond_12
    shl-int/lit8 v1, v1, 0x1

    .line 3676
    :goto_16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzge;->zzah(I)Lcom/google/android/gms/internal/vision/zzge;

    move-result-object v0

    .line 3677
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_13
    move-object v8, v0

    .line 3679
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    move v1, v13

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v19, v5

    move-object v5, v8

    move/from16 v20, v6

    move-object/from16 v6, p6

    .line 3680
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;I[BIILcom/google/android/gms/internal/vision/zzge;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    move v3, v13

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v6, v20

    goto :goto_13

    :cond_14
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    move v15, v11

    move/from16 v29, v13

    goto/16 :goto_19

    :cond_15
    move/from16 v19, v5

    move/from16 v20, v6

    const/16 v1, 0x31

    if-gt v8, v1, :cond_17

    move/from16 v1, v21

    int-to-long v5, v1

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v26, v4

    move/from16 v4, p4

    move-wide/from16 v23, v5

    move v5, v13

    move/from16 v6, v17

    move/from16 v25, v7

    move/from16 v7, v26

    move/from16 v27, v8

    const/4 v15, -0x1

    move/from16 v8, v19

    move-object/from16 v28, v10

    move-wide/from16 v9, v23

    move v15, v11

    move/from16 v11, v27

    move/from16 v29, v13

    move-wide/from16 v12, v21

    move-object/from16 v14, p6

    .line 3685
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    if-ne v0, v15, :cond_16

    :goto_17
    move v2, v0

    goto :goto_1a

    :cond_16
    move-object/from16 v12, p2

    move-object/from16 v9, p6

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v6, v20

    move/from16 v7, v25

    move-object/from16 v10, v28

    move/from16 v3, v29

    :goto_18
    move/from16 v11, p5

    goto/16 :goto_1e

    :cond_17
    move/from16 v26, v0

    move/from16 v25, v7

    move/from16 v27, v8

    move-object/from16 v28, v10

    move v15, v11

    move/from16 v29, v13

    move/from16 v1, v21

    move-wide/from16 v21, v2

    const/16 v0, 0x32

    move/from16 v9, v27

    if-ne v9, v0, :cond_19

    move/from16 v7, v26

    const/4 v0, 0x2

    if-ne v7, v0, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v21

    move-object/from16 v8, p6

    .line 3690
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    if-ne v0, v15, :cond_16

    goto :goto_17

    :cond_18
    :goto_19
    move v2, v15

    :goto_1a
    move/from16 v7, v29

    :goto_1b
    move/from16 v6, p5

    goto :goto_1c

    :cond_19
    move/from16 v7, v26

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v29

    move/from16 v6, v17

    move-wide/from16 v10, v21

    move/from16 v12, v19

    move-object/from16 v13, p6

    .line 3695
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    if-ne v0, v15, :cond_1c

    goto :goto_17

    :goto_1c
    if-ne v7, v6, :cond_1b

    if-nez v6, :cond_1a

    goto :goto_1d

    :cond_1a
    move v3, v7

    goto :goto_1f

    :cond_1b
    :goto_1d
    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    .line 3698
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhj;->zza(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    move-object/from16 v12, p2

    move-object/from16 v9, p6

    move v11, v6

    move v3, v7

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v6, v20

    move/from16 v7, v25

    move-object/from16 v10, v28

    :goto_1e
    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1c
    move/from16 v7, v29

    move-object/from16 v12, p2

    move-object/from16 v9, p6

    move v3, v7

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v6, v20

    move/from16 v7, v25

    move-object/from16 v10, v28

    goto/16 :goto_18

    :cond_1d
    move/from16 v20, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    move v6, v11

    move v2, v0

    :goto_1f
    move/from16 v1, v20

    move/from16 v0, v25

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1e

    int-to-long v4, v0

    move-object/from16 v7, v28

    move-object/from16 v0, p1

    .line 3701
    invoke-virtual {v7, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_20

    :cond_1e
    move-object/from16 v0, p1

    :goto_20
    const/4 v1, 0x0

    move-object/from16 v4, p0

    .line 3703
    iget v5, v4, Lcom/google/android/gms/internal/vision/zzhj;->zzzn:I

    :goto_21
    iget v7, v4, Lcom/google/android/gms/internal/vision/zzhj;->zzzo:I

    if-ge v5, v7, :cond_1f

    .line 3704
    iget-object v7, v4, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    aget v7, v7, v5

    iget-object v8, v4, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    .line 3705
    invoke-direct {v4, v0, v7, v1, v8}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/zzip;

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_1f
    if-eqz v1, :cond_20

    .line 3708
    iget-object v5, v4, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    .line 3709
    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/vision/zzio;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    if-nez v6, :cond_22

    move/from16 v0, p4

    if-ne v2, v0, :cond_21

    goto :goto_22

    .line 3712
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfo()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v0

    throw v0

    :cond_22
    move/from16 v0, p4

    if-gt v2, v0, :cond_23

    if-ne v3, v6, :cond_23

    :goto_22
    return v2

    .line 3714
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfo()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zza([BIILcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzei;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/vision/zzjd;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzei;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3018
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhk;->zzrr:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/zzjd;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 3053
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3051
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result p0

    goto/16 :goto_1

    .line 3048
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result p0

    .line 3049
    iget-wide p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzez;->zzd(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    goto/16 :goto_1

    .line 3045
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result p0

    .line 3046
    iget p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzaq(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    goto/16 :goto_1

    .line 3042
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/vision/zzhs;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object p3

    .line 3043
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIILcom/google/android/gms/internal/vision/zzei;)I

    move-result p0

    goto :goto_1

    .line 3039
    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result p0

    .line 3040
    iget-wide p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    goto :goto_1

    .line 3036
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result p0

    .line 3037
    iget p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    goto :goto_1

    .line 3033
    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    .line 3030
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    goto :goto_1

    .line 3027
    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    .line 3024
    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzeh;->zzc([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    goto :goto_1

    .line 3022
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzeh;->zze([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result p0

    goto :goto_1

    .line 3019
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result p0

    .line 3020
    iget-wide p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzhd;Lcom/google/android/gms/internal/vision/zzhn;Lcom/google/android/gms/internal/vision/zzgp;Lcom/google/android/gms/internal/vision/zzio;Lcom/google/android/gms/internal/vision/zzfl;Lcom/google/android/gms/internal/vision/zzha;)Lcom/google/android/gms/internal/vision/zzhj;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzhd;",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            "Lcom/google/android/gms/internal/vision/zzgp;",
            "Lcom/google/android/gms/internal/vision/zzio<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/zzfl<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzha;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzhj<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/internal/vision/zzhu;

    if-eqz v1, :cond_34

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/vision/zzhu;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhu;->zzge()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzxg:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhu;->zzgn()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    move v8, v5

    const/4 v5, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v5, 0x1

    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_1

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v8, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_1

    :cond_1
    shl-int/2addr v5, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v8, v10, 0x1

    .line 35
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    .line 39
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    goto :goto_4

    :cond_4
    move v12, v8

    :goto_4
    if-nez v9, :cond_5

    .line 51
    sget-object v8, Lcom/google/android/gms/internal/vision/zzhj;->zzzb:[I

    move-object/from16 v16, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_12

    :cond_5
    add-int/lit8 v8, v12, 0x1

    .line 53
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v8, 0x1

    .line 57
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_6

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_5

    :cond_6
    shl-int/2addr v8, v10

    or-int/2addr v8, v9

    move v9, v8

    goto :goto_6

    :cond_7
    move v12, v8

    :goto_6
    add-int/lit8 v8, v12, 0x1

    .line 62
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_7
    add-int/lit8 v13, v8, 0x1

    .line 66
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    add-int/lit8 v12, v12, 0xd

    move v8, v13

    goto :goto_7

    :cond_8
    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    goto :goto_8

    :cond_9
    move v13, v8

    :goto_8
    add-int/lit8 v8, v13, 0x1

    .line 71
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_9
    add-int/lit8 v14, v8, 0x1

    .line 75
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_a

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v13

    or-int/2addr v12, v8

    add-int/lit8 v13, v13, 0xd

    move v8, v14

    goto :goto_9

    :cond_a
    shl-int/2addr v8, v13

    or-int/2addr v8, v12

    move v12, v8

    goto :goto_a

    :cond_b
    move v14, v8

    :goto_a
    add-int/lit8 v8, v14, 0x1

    .line 80
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_b
    add-int/lit8 v15, v8, 0x1

    .line 84
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_c

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v14

    or-int/2addr v13, v8

    add-int/lit8 v14, v14, 0xd

    move v8, v15

    goto :goto_b

    :cond_c
    shl-int/2addr v8, v14

    or-int/2addr v8, v13

    move v13, v8

    goto :goto_c

    :cond_d
    move v15, v8

    :goto_c
    add-int/lit8 v8, v15, 0x1

    .line 89
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_d
    add-int/lit8 v16, v8, 0x1

    .line 93
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_e

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v15

    or-int/2addr v14, v8

    add-int/lit8 v15, v15, 0xd

    move/from16 v8, v16

    goto :goto_d

    :cond_e
    shl-int/2addr v8, v15

    or-int/2addr v8, v14

    move v14, v8

    move/from16 v8, v16

    :cond_f
    add-int/lit8 v15, v8, 0x1

    .line 98
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_11

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_e
    add-int/lit8 v17, v15, 0x1

    .line 102
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v8, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_e

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v8, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    .line 107
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v36, v16

    move/from16 v16, v15

    move/from16 v15, v36

    :goto_f
    add-int/lit8 v18, v15, 0x1

    .line 111
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_f

    :cond_12
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v3, v18

    goto :goto_10

    :cond_13
    move/from16 v3, v16

    :goto_10
    add-int/lit8 v16, v3, 0x1

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    const/16 v17, 0xd

    move/from16 v36, v16

    move/from16 v16, v3

    move/from16 v3, v36

    :goto_11
    add-int/lit8 v18, v3, 0x1

    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int v16, v16, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v18

    goto :goto_11

    :cond_14
    shl-int v3, v3, v17

    or-int v3, v16, v3

    move/from16 v16, v18

    :cond_15
    add-int v17, v3, v8

    add-int v15, v17, v15

    .line 125
    new-array v15, v15, [I

    shl-int/lit8 v17, v9, 0x1

    add-int v10, v17, v10

    move-object/from16 v36, v15

    move v15, v10

    move v10, v12

    move/from16 v12, v16

    move-object/from16 v16, v36

    .line 127
    :goto_12
    sget-object v6, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhu;->zzgo()[Ljava/lang/Object;

    move-result-object v17

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhu;->zzgg()Lcom/google/android/gms/internal/vision/zzhf;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move/from16 v22, v12

    mul-int/lit8 v12, v14, 0x3

    .line 131
    new-array v12, v12, [I

    shl-int/2addr v14, v4

    .line 132
    new-array v14, v14, [Ljava/lang/Object;

    add-int v18, v3, v8

    move/from16 v20, v15

    move/from16 v23, v18

    move/from16 v8, v22

    const/4 v15, 0x0

    const/16 v19, 0x0

    move/from16 v22, v3

    :goto_13
    if-ge v8, v2, :cond_33

    add-int/lit8 v24, v8, 0x1

    .line 137
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v4, 0xd800

    if-lt v8, v4, :cond_17

    and-int/lit16 v8, v8, 0x1fff

    const/16 v25, 0xd

    move/from16 v36, v24

    move/from16 v24, v8

    move/from16 v8, v36

    :goto_14
    add-int/lit8 v26, v8, 0x1

    .line 141
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v4, :cond_16

    and-int/lit16 v4, v8, 0x1fff

    shl-int v4, v4, v25

    or-int v24, v24, v4

    add-int/lit8 v25, v25, 0xd

    move/from16 v8, v26

    const v4, 0xd800

    goto :goto_14

    :cond_16
    shl-int v4, v8, v25

    or-int v8, v24, v4

    move/from16 v4, v26

    goto :goto_15

    :cond_17
    move/from16 v4, v24

    :goto_15
    add-int/lit8 v24, v4, 0x1

    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_19

    and-int/lit16 v4, v4, 0x1fff

    const/16 v25, 0xd

    move/from16 v36, v24

    move/from16 v24, v4

    move/from16 v4, v36

    :goto_16
    add-int/lit8 v26, v4, 0x1

    .line 150
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_18

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v25

    or-int v24, v24, v2

    add-int/lit8 v25, v25, 0xd

    move/from16 v4, v26

    const v2, 0xd800

    goto :goto_16

    :cond_18
    shl-int v2, v4, v25

    or-int v4, v24, v2

    move/from16 v2, v26

    goto :goto_17

    :cond_19
    move/from16 v2, v24

    :goto_17
    move/from16 v28, v3

    and-int/lit16 v3, v4, 0xff

    move/from16 v29, v11

    and-int/lit16 v11, v4, 0x400

    if-eqz v11, :cond_1a

    add-int/lit8 v11, v15, 0x1

    .line 157
    aput v19, v16, v15

    move v15, v11

    :cond_1a
    const/16 v11, 0x33

    move/from16 v30, v15

    if-lt v3, v11, :cond_22

    add-int/lit8 v11, v2, 0x1

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v15, 0xd800

    if-lt v2, v15, :cond_1c

    and-int/lit16 v2, v2, 0x1fff

    const/16 v24, 0xd

    :goto_18
    add-int/lit8 v25, v11, 0x1

    .line 163
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v15, :cond_1b

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v24

    or-int/2addr v2, v11

    add-int/lit8 v24, v24, 0xd

    move/from16 v11, v25

    const v15, 0xd800

    goto :goto_18

    :cond_1b
    shl-int v11, v11, v24

    or-int/2addr v2, v11

    move/from16 v11, v25

    :cond_1c
    add-int/lit8 v15, v3, -0x33

    move/from16 v31, v11

    const/16 v11, 0x9

    if-eq v15, v11, :cond_1f

    const/16 v11, 0x11

    if-ne v15, v11, :cond_1d

    goto :goto_1a

    :cond_1d
    const/16 v11, 0xc

    if-ne v15, v11, :cond_1e

    and-int/lit8 v11, v5, 0x1

    const/4 v15, 0x1

    if-ne v11, v15, :cond_1e

    .line 173
    div-int/lit8 v11, v19, 0x3

    shl-int/2addr v11, v15

    add-int/2addr v11, v15

    add-int/lit8 v15, v20, 0x1

    aget-object v20, v17, v20

    aput-object v20, v14, v11

    move/from16 v24, v15

    goto :goto_19

    :cond_1e
    move/from16 v24, v20

    :goto_19
    const/4 v15, 0x1

    goto :goto_1b

    .line 170
    :cond_1f
    :goto_1a
    div-int/lit8 v11, v19, 0x3

    const/4 v15, 0x1

    shl-int/2addr v11, v15

    add-int/2addr v11, v15

    add-int/lit8 v24, v20, 0x1

    aget-object v20, v17, v20

    aput-object v20, v14, v11

    :goto_1b
    shl-int/2addr v2, v15

    .line 175
    aget-object v11, v17, v2

    .line 176
    instance-of v15, v11, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_20

    .line 177
    check-cast v11, Ljava/lang/reflect/Field;

    :goto_1c
    move/from16 v32, v10

    goto :goto_1d

    .line 178
    :cond_20
    check-cast v11, Ljava/lang/String;

    invoke-static {v7, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 179
    aput-object v11, v17, v2

    goto :goto_1c

    .line 180
    :goto_1d
    invoke-virtual {v6, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/lit8 v2, v2, 0x1

    .line 182
    aget-object v11, v17, v2

    .line 183
    instance-of v15, v11, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_21

    .line 184
    check-cast v11, Ljava/lang/reflect/Field;

    :goto_1e
    move/from16 v33, v10

    goto :goto_1f

    .line 185
    :cond_21
    check-cast v11, Ljava/lang/String;

    invoke-static {v7, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 186
    aput-object v11, v17, v2

    goto :goto_1e

    .line 187
    :goto_1f
    invoke-virtual {v6, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v2, v10

    move/from16 v34, v13

    move-object/from16 v35, v14

    move/from16 v20, v24

    move/from16 v13, v31

    move/from16 v11, v33

    move v14, v2

    const/4 v2, 0x0

    goto/16 :goto_2a

    :cond_22
    move/from16 v32, v10

    add-int/lit8 v10, v20, 0x1

    .line 190
    aget-object v11, v17, v20

    check-cast v11, Ljava/lang/String;

    invoke-static {v7, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    const/16 v15, 0x9

    if-eq v3, v15, :cond_2a

    const/16 v15, 0x11

    if-ne v3, v15, :cond_23

    goto/16 :goto_24

    :cond_23
    const/16 v15, 0x1b

    if-eq v3, v15, :cond_29

    const/16 v15, 0x31

    if-ne v3, v15, :cond_24

    goto :goto_22

    :cond_24
    const/16 v15, 0xc

    if-eq v3, v15, :cond_28

    const/16 v15, 0x1e

    if-eq v3, v15, :cond_28

    const/16 v15, 0x2c

    if-ne v3, v15, :cond_25

    goto :goto_21

    :cond_25
    const/16 v15, 0x32

    if-ne v3, v15, :cond_27

    add-int/lit8 v15, v22, 0x1

    .line 199
    aput v19, v16, v22

    .line 200
    div-int/lit8 v20, v19, 0x3

    const/16 v22, 0x1

    shl-int/lit8 v20, v20, 0x1

    add-int/lit8 v22, v10, 0x1

    aget-object v10, v17, v10

    aput-object v10, v14, v20

    and-int/lit16 v10, v4, 0x800

    if-eqz v10, :cond_26

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v10, v22, 0x1

    .line 202
    aget-object v22, v17, v22

    aput-object v22, v14, v20

    move/from16 v34, v13

    move-object/from16 v35, v14

    goto :goto_20

    :cond_26
    move/from16 v34, v13

    move-object/from16 v35, v14

    move/from16 v10, v22

    :goto_20
    move/from16 v22, v15

    goto :goto_26

    :cond_27
    move/from16 v34, v13

    const/4 v13, 0x1

    goto :goto_25

    :cond_28
    :goto_21
    and-int/lit8 v15, v5, 0x1

    move/from16 v34, v13

    const/4 v13, 0x1

    if-ne v15, v13, :cond_2b

    .line 197
    div-int/lit8 v15, v19, 0x3

    shl-int/2addr v15, v13

    add-int/2addr v15, v13

    add-int/lit8 v20, v10, 0x1

    aget-object v10, v17, v10

    aput-object v10, v14, v15

    goto :goto_23

    :cond_29
    :goto_22
    move/from16 v34, v13

    const/4 v13, 0x1

    .line 194
    div-int/lit8 v15, v19, 0x3

    shl-int/2addr v15, v13

    add-int/2addr v15, v13

    add-int/lit8 v20, v10, 0x1

    aget-object v10, v17, v10

    aput-object v10, v14, v15

    :goto_23
    move-object/from16 v35, v14

    move/from16 v10, v20

    goto :goto_26

    :cond_2a
    :goto_24
    move/from16 v34, v13

    const/4 v13, 0x1

    .line 192
    div-int/lit8 v15, v19, 0x3

    shl-int/2addr v15, v13

    add-int/2addr v15, v13

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v14, v15

    :cond_2b
    :goto_25
    move-object/from16 v35, v14

    .line 203
    :goto_26
    invoke-virtual {v6, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v11, v13

    and-int/lit8 v13, v5, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2f

    const/16 v13, 0x11

    if-gt v3, v13, :cond_2f

    add-int/lit8 v13, v2, 0x1

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v14, 0xd800

    if-lt v2, v14, :cond_2d

    and-int/lit16 v2, v2, 0x1fff

    const/16 v15, 0xd

    :goto_27
    add-int/lit8 v20, v13, 0x1

    .line 209
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_2c

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v15

    or-int/2addr v2, v13

    add-int/lit8 v15, v15, 0xd

    move/from16 v13, v20

    goto :goto_27

    :cond_2c
    shl-int/2addr v13, v15

    or-int/2addr v2, v13

    move/from16 v13, v20

    :cond_2d
    const/4 v15, 0x1

    shl-int/lit8 v20, v9, 0x1

    .line 214
    div-int/lit8 v21, v2, 0x20

    add-int v20, v20, v21

    .line 215
    aget-object v14, v17, v20

    .line 216
    instance-of v15, v14, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_2e

    .line 217
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_28

    .line 218
    :cond_2e
    check-cast v14, Ljava/lang/String;

    invoke-static {v7, v14}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 219
    aput-object v14, v17, v20

    .line 220
    :goto_28
    invoke-virtual {v6, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v14, v14

    .line 221
    rem-int/lit8 v2, v2, 0x20

    goto :goto_29

    :cond_2f
    move v13, v2

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_29
    const/16 v15, 0x12

    if-lt v3, v15, :cond_30

    const/16 v15, 0x31

    if-gt v3, v15, :cond_30

    add-int/lit8 v15, v23, 0x1

    .line 226
    aput v11, v16, v23

    move/from16 v20, v10

    move/from16 v23, v15

    goto :goto_2a

    :cond_30
    move/from16 v20, v10

    :goto_2a
    add-int/lit8 v10, v19, 0x1

    .line 227
    aput v8, v12, v19

    add-int/lit8 v8, v10, 0x1

    and-int/lit16 v15, v4, 0x200

    if-eqz v15, :cond_31

    const/high16 v15, 0x20000000

    goto :goto_2b

    :cond_31
    const/4 v15, 0x0

    :goto_2b
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_32

    const/high16 v4, 0x10000000

    goto :goto_2c

    :cond_32
    const/4 v4, 0x0

    :goto_2c
    or-int/2addr v4, v15

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v4

    or-int/2addr v3, v11

    .line 230
    aput v3, v12, v10

    add-int/lit8 v19, v8, 0x1

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v14

    .line 231
    aput v2, v12, v8

    move v8, v13

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v11, v29

    move/from16 v15, v30

    move/from16 v10, v32

    move/from16 v13, v34

    move-object/from16 v14, v35

    const/4 v4, 0x1

    goto/16 :goto_13

    :cond_33
    move/from16 v28, v3

    move/from16 v32, v10

    move/from16 v29, v11

    move/from16 v34, v13

    move-object/from16 v35, v14

    .line 233
    new-instance v1, Lcom/google/android/gms/internal/vision/zzhj;

    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhu;->zzgg()Lcom/google/android/gms/internal/vision/zzhf;

    move-result-object v10

    const/4 v0, 0x0

    move-object v5, v1

    move-object v6, v12

    move-object/from16 v7, v35

    move/from16 v8, v32

    move/from16 v9, v34

    move v12, v0

    move-object/from16 v13, v16

    move/from16 v14, v28

    move/from16 v15, v18

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/vision/zzhj;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/zzhf;ZZ[IIILcom/google/android/gms/internal/vision/zzhn;Lcom/google/android/gms/internal/vision/zzgp;Lcom/google/android/gms/internal/vision/zzio;Lcom/google/android/gms/internal/vision/zzfl;Lcom/google/android/gms/internal/vision/zzha;)V

    return-object v1

    .line 236
    :cond_34
    check-cast v0, Lcom/google/android/gms/internal/vision/zzij;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzij;->zzge()I

    .line 238
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/vision/zzgd;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            "TUB;",
            "Lcom/google/android/gms/internal/vision/zzio<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3876
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    .line 3877
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbi(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzha;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object p1

    .line 3878
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3879
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3880
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/vision/zzgd;->zzh(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 3882
    invoke-virtual {p6}, Lcom/google/android/gms/internal/vision/zzio;->zzhd()Ljava/lang/Object;

    move-result-object p5

    .line 3884
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzgx;->zza(Lcom/google/android/gms/internal/vision/zzgy;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3885
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzeo;->zzaj(I)Lcom/google/android/gms/internal/vision/zzev;

    move-result-object v1

    .line 3886
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzev;->zzdp()Lcom/google/android/gms/internal/vision/zzfe;

    move-result-object v2

    .line 3887
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/vision/zzgx;->zza(Lcom/google/android/gms/internal/vision/zzfe;Lcom/google/android/gms/internal/vision/zzgy;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3891
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzev;->zzdo()Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/vision/zzio;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzeo;)V

    .line 3892
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3890
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/vision/zzio<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3861
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v3, v0, p2

    .line 3863
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 3866
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 3869
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbj(I)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    .line 3872
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzha;->zzj(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 3874
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/vision/zzgd;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 239
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 241
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 242
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 243
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3966
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3967
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILjava/lang/String;)V

    return-void

    .line 3968
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILcom/google/android/gms/internal/vision/zzeo;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzio;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzio<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/vision/zzjj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2471
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzio;->zzt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzio;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzjj;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzjj;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2466
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    .line 2467
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/vision/zzhj;->zzbi(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/vision/zzha;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    .line 2468
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/vision/zzha;->zzk(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2469
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILcom/google/android/gms/internal/vision/zzgy;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzhv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3970
    invoke-static {p2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbm(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3973
    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzhv;->zzcv()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 3974
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzj:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3977
    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzhv;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3980
    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzhv;->zzcw()Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 541
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 544
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 546
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 547
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 549
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 550
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 551
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 553
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 554
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 3994
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 3995
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 4025
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4024
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 4023
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 4022
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 4021
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 4020
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 4019
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 4018
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 4017
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/vision/zzeo;->zzrx:Lcom/google/android/gms/internal/vision/zzeo;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/zzeo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 4016
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 4010
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 4011
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 4012
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 4013
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/vision/zzeo;

    if-eqz p2, :cond_c

    .line 4014
    sget-object p2, Lcom/google/android/gms/internal/vision/zzeo;->zzrx:Lcom/google/android/gms/internal/vision/zzeo;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/zzeo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 4015
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4009
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzm(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 4008
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 4007
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    .line 4006
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 4005
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    .line 4004
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    .line 4003
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzn(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 4002
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzo(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    .line 4026
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbl(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 4028
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private final zza(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 4038
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbl(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 4039
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 3991
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    if-eqz v0, :cond_0

    .line 3992
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzhw;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 3964
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 3965
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/vision/zzhw;->zzr(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 4029
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    if-eqz v0, :cond_0

    return-void

    .line 4031
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbl(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 4035
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 4036
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 4040
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbl(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 4041
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/zzjj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2143
    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-eqz v3, :cond_0

    .line 2144
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/zzfl;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object v3

    .line 2145
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zzfp;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2146
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zzfp;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2147
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    .line 2150
    iget-object v7, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    array-length v7, v7

    .line 2151
    sget-object v8, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v5, v7, :cond_7

    .line 2153
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v12

    .line 2155
    iget-object v13, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v13, v13, v5

    const/high16 v14, 0xff00000

    and-int/2addr v14, v12

    ushr-int/lit8 v14, v14, 0x14

    .line 2161
    iget-boolean v15, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    const v16, 0xfffff

    if-nez v15, :cond_2

    const/16 v15, 0x11

    if-gt v14, v15, :cond_2

    .line 2162
    iget-object v15, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 v17, v5, 0x2

    aget v15, v15, v17

    and-int v9, v15, v16

    if-eq v9, v6, :cond_1

    move/from16 v18, v5

    int-to-long v4, v9

    .line 2166
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v9

    goto :goto_2

    :cond_1
    move/from16 v18, v5

    :goto_2
    ushr-int/lit8 v4, v15, 0x14

    const/4 v5, 0x1

    shl-int v9, v5, v4

    goto :goto_3

    :cond_2
    move/from16 v18, v5

    const/4 v9, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 2168
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v13, :cond_4

    .line 2169
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/util/Map$Entry;)V

    .line 2170
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    and-int v4, v12, v16

    int-to-long v4, v4

    packed-switch v14, :pswitch_data_0

    move/from16 v12, v18

    :cond_5
    :goto_4
    const/4 v14, 0x0

    goto/16 :goto_5

    :pswitch_0
    move/from16 v12, v18

    .line 2455
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2457
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v5

    .line 2458
    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto :goto_4

    :pswitch_1
    move/from16 v12, v18

    .line 2453
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2454
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IJ)V

    goto :goto_4

    :pswitch_2
    move/from16 v12, v18

    .line 2451
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2452
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(II)V

    goto :goto_4

    :pswitch_3
    move/from16 v12, v18

    .line 2449
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2450
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzj(IJ)V

    goto :goto_4

    :pswitch_4
    move/from16 v12, v18

    .line 2447
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2448
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzo(II)V

    goto :goto_4

    :pswitch_5
    move/from16 v12, v18

    .line 2445
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2446
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzp(II)V

    goto :goto_4

    :pswitch_6
    move/from16 v12, v18

    .line 2443
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2444
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzf(II)V

    goto :goto_4

    :pswitch_7
    move/from16 v12, v18

    .line 2441
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2442
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILcom/google/android/gms/internal/vision/zzeo;)V

    goto/16 :goto_4

    :pswitch_8
    move/from16 v12, v18

    .line 2437
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2438
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2439
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_4

    :pswitch_9
    move/from16 v12, v18

    .line 2435
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2436
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_4

    :pswitch_a
    move/from16 v12, v18

    .line 2433
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2434
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzj(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IZ)V

    goto/16 :goto_4

    :pswitch_b
    move/from16 v12, v18

    .line 2431
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2432
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzh(II)V

    goto/16 :goto_4

    :pswitch_c
    move/from16 v12, v18

    .line 2429
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2430
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzc(IJ)V

    goto/16 :goto_4

    :pswitch_d
    move/from16 v12, v18

    .line 2427
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2428
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zze(II)V

    goto/16 :goto_4

    :pswitch_e
    move/from16 v12, v18

    .line 2425
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2426
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IJ)V

    goto/16 :goto_4

    :pswitch_f
    move/from16 v12, v18

    .line 2423
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2424
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzi(IJ)V

    goto/16 :goto_4

    :pswitch_10
    move/from16 v12, v18

    .line 2421
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2422
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzg(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IF)V

    goto/16 :goto_4

    :pswitch_11
    move/from16 v12, v18

    .line 2419
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2420
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzhj;->zzf(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ID)V

    goto/16 :goto_4

    :pswitch_12
    move/from16 v12, v18

    .line 2417
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v13, v4, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzjj;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    move/from16 v12, v18

    .line 2411
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2413
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2414
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v5

    .line 2415
    invoke-static {v9, v4, v2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_4

    :pswitch_14
    move/from16 v12, v18

    .line 2405
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2406
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x1

    .line 2407
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_15
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2399
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2400
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2401
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_16
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2393
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2394
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2395
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_17
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2387
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2388
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2389
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_18
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2381
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2382
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2383
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_19
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2375
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2376
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2377
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_1a
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2369
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2370
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2371
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_1b
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2363
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2364
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2365
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_1c
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2357
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2358
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2359
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_1d
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2351
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2352
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2353
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_1e
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2345
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2346
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2347
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_1f
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2339
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2340
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2341
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_20
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2333
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2334
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2335
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_21
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2327
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2328
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2329
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_22
    move/from16 v12, v18

    .line 2321
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2322
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x0

    .line 2323
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_23
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2315
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2316
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2317
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_24
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2309
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2310
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2311
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_25
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2303
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2304
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2305
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_26
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2297
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2298
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2299
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_27
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2291
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2292
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2293
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/gms/internal/vision/zzhy;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_4

    :pswitch_28
    move/from16 v12, v18

    .line 2285
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2286
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2287
    invoke-static {v9, v4, v2}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_4

    :pswitch_29
    move/from16 v12, v18

    .line 2277
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2279
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2280
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v5

    .line 2281
    invoke-static {v9, v4, v2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_4

    :pswitch_2a
    move/from16 v12, v18

    .line 2271
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2272
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2273
    invoke-static {v9, v4, v2}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_4

    :pswitch_2b
    move/from16 v12, v18

    .line 2265
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2266
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v14, 0x0

    .line 2267
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/vision/zzhy;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_5

    :pswitch_2c
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2259
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2260
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2261
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/vision/zzhy;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_5

    :pswitch_2d
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2253
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2254
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2255
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/vision/zzhy;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_5

    :pswitch_2e
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2247
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2248
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2249
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/vision/zzhy;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_5

    :pswitch_2f
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2241
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2242
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2243
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_5

    :pswitch_30
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2235
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2236
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2237
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_5

    :pswitch_31
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2229
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2230
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2231
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_5

    :pswitch_32
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2223
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v12

    .line 2224
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2225
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_5

    :pswitch_33
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2219
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v5

    .line 2220
    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_5

    :pswitch_34
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2216
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IJ)V

    goto/16 :goto_5

    :pswitch_35
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2214
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(II)V

    goto/16 :goto_5

    :pswitch_36
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2212
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzj(IJ)V

    goto/16 :goto_5

    :pswitch_37
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2210
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzo(II)V

    goto/16 :goto_5

    :pswitch_38
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2208
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzp(II)V

    goto/16 :goto_5

    :pswitch_39
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2206
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzf(II)V

    goto/16 :goto_5

    :pswitch_3a
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2204
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILcom/google/android/gms/internal/vision/zzeo;)V

    goto/16 :goto_5

    :pswitch_3b
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2200
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2201
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_5

    :pswitch_3c
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2198
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_5

    :pswitch_3d
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2195
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zzm(Ljava/lang/Object;J)Z

    move-result v4

    .line 2196
    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IZ)V

    goto :goto_5

    :pswitch_3e
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2192
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zzh(II)V

    goto :goto_5

    :pswitch_3f
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2190
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzc(IJ)V

    goto :goto_5

    :pswitch_40
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2188
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zze(II)V

    goto :goto_5

    :pswitch_41
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2186
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IJ)V

    goto :goto_5

    :pswitch_42
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2184
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zzi(IJ)V

    goto :goto_5

    :pswitch_43
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2181
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zzn(Ljava/lang/Object;J)F

    move-result v4

    .line 2182
    invoke-interface {v2, v13, v4}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IF)V

    goto :goto_5

    :pswitch_44
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_6

    .line 2177
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    .line 2178
    invoke-interface {v2, v13, v4, v5}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ID)V

    :cond_6
    :goto_5
    add-int/lit8 v5, v12, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_6
    if-eqz v10, :cond_9

    .line 2461
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/util/Map$Entry;)V

    .line 2462
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .line 2463
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzio;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 556
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 563
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 566
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 568
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 569
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 572
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 573
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private final zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;
    .locals 3

    .line 3529
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 3530
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzze:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhw;

    if-eqz v0, :cond_0

    return-object v0

    .line 3533
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzze:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzhs;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    .line 3534
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzze:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzbi(I)Ljava/lang/Object;
    .locals 1

    .line 3536
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzze:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzbj(I)Lcom/google/android/gms/internal/vision/zzgd;
    .locals 1

    .line 3537
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzze:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzgd;

    return-object p1
.end method

.method private final zzbk(I)I
    .locals 1

    .line 3982
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzbl(I)I
    .locals 1

    .line 3983
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzbm(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzbn(I)I
    .locals 1

    .line 4043
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzf:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzg:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 4044
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzs(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 3990
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zze(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1197
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zzf(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 3985
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzg(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 3986
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 3987
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzi(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 3988
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzj(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 3989
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzip;
    .locals 2

    .line 2985
    check-cast p0, Lcom/google/android/gms/internal/vision/zzfy;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzwj:Lcom/google/android/gms/internal/vision/zzip;

    .line 2986
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzip;->zzhe()Lcom/google/android/gms/internal/vision/zzip;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2987
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzip;->zzhf()Lcom/google/android/gms/internal/vision/zzip;

    move-result-object v0

    .line 2988
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzwj:Lcom/google/android/gms/internal/vision/zzip;

    :cond_0
    return-object v0
.end method

.method private final zzr(II)I
    .locals 1

    .line 4046
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzf:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzg:I

    if-gt p1, v0, :cond_0

    .line 4047
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zzs(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzs(II)I
    .locals 4

    .line 4049
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 4054
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 253
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 327
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbl(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 328
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 329
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 331
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 332
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 324
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 325
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 321
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 322
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 316
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 318
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 313
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 310
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 307
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 304
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 301
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 298
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 294
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 296
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 290
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 292
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 286
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 288
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 283
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzm(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzm(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 280
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 277
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 274
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 271
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 268
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 264
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzn(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 266
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzn(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 260
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 262
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzo(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzio;->zzt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/zzio;->zzt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 342
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfl;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/zzfl;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object p2

    .line 345
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 350
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v3

    .line 352
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 448
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 450
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 446
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 447
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 444
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 445
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 442
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 443
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 440
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 441
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 438
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 439
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 436
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 437
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 434
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 435
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 430
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 432
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 427
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 429
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 425
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 426
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzj(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzj(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 423
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 424
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 421
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 422
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 419
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 420
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 417
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 418
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 415
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 416
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 413
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 414
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzg(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 410
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 412
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzf(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 408
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 406
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 401
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 398
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 396
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 394
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 392
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 390
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 388
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 386
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 381
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 383
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_1

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 378
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 376
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzm(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzga;->zzj(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 374
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 372
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 370
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 368
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 366
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 364
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzn(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 361
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzo(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 362
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzga;->zzo(J)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x35

    .line 452
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzio;->zzt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 453
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-eqz v0, :cond_4

    mul-int/lit8 v2, v2, 0x35

    .line 454
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfl;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzfp;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzp:Lcom/google/android/gms/internal/vision/zzhn;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzh:Lcom/google/android/gms/internal/vision/zzhf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzhn;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzhv;Lcom/google/android/gms/internal/vision/zzfk;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/zzhv;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1d

    .line 2475
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    iget-object v8, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    const/4 v9, 0x0

    move-object v0, v9

    move-object v10, v0

    .line 2478
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcn()I

    move-result v1

    .line 2479
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbn(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_a

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 2482
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzn:I

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzo:I

    if-ge p2, p3, :cond_1

    .line 2483
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    aget p3, p3, p2

    .line 2484
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    .line 2487
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzio;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 2489
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-nez v2, :cond_4

    move-object v2, v9

    goto :goto_2

    .line 2491
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzh:Lcom/google/android/gms/internal/vision/zzhf;

    invoke-virtual {v8, p3, v2, v1}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Lcom/google/android/gms/internal/vision/zzfk;Lcom/google/android/gms/internal/vision/zzhf;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    .line 2494
    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/vision/zzfl;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object v0

    :cond_5
    move-object v11, v0

    move-object v0, v8

    move-object v1, p2

    move-object v3, p3

    move-object v4, v11

    move-object v5, v10

    move-object v6, v7

    .line 2496
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Lcom/google/android/gms/internal/vision/zzhv;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzfk;Lcom/google/android/gms/internal/vision/zzfp;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    move-object v0, v11

    goto :goto_0

    .line 2498
    :cond_6
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/vision/zzio;->zza(Lcom/google/android/gms/internal/vision/zzhv;)Z

    if-nez v10, :cond_7

    .line 2500
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/vision/zzio;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    .line 2501
    :cond_7
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/vision/zzio;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzhv;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 2502
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzn:I

    :goto_3
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzo:I

    if-ge p2, p3, :cond_8

    .line 2503
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    aget p3, p3, p2

    .line 2504
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    if-eqz v10, :cond_9

    .line 2507
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzio;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void

    .line 2509
    :cond_a
    :try_start_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    const v5, 0xfffff

    packed-switch v4, :pswitch_data_0

    if-nez v10, :cond_15

    .line 2956
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/vision/zzio;->zzhd()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_9

    :pswitch_0
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2951
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zzc(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v5

    .line 2952
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2953
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2944
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzdc()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2945
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2946
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2938
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzdb()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2939
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2940
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2932
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzda()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2933
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2934
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2926
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcz()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2927
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2928
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2914
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcy()I

    move-result v4

    .line 2915
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbj(I)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 2916
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/vision/zzgd;->zzh(I)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_4

    .line 2922
    :cond_b
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/vision/zzhy;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    :cond_c
    :goto_4
    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 2919
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v5, v6, v3}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2920
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2910
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcx()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2911
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2912
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2905
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcw()Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2906
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2883
    :pswitch_8
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2886
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2887
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v6

    .line 2888
    invoke-interface {p2, v6, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zza(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v6

    .line 2889
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2892
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2897
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v5

    .line 2898
    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zza(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v5

    .line 2899
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2900
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    .line 2901
    :goto_5
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2880
    :pswitch_9
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzhv;)V

    .line 2881
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2876
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcu()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2877
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2878
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2870
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzct()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2871
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2872
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2864
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2865
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2866
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2858
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcr()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2859
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2860
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2852
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2853
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2854
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2846
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcq()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2847
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2848
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2840
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 2841
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2842
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2834
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 2835
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2836
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2814
    :pswitch_12
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbi(I)Ljava/lang/Object;

    move-result-object v1

    .line 2815
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    .line 2818
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    .line 2820
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/vision/zzha;->zzn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2821
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 2822
    :cond_e
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/vision/zzha;->zzl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2824
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/vision/zzha;->zzn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2825
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v6, v5, v4}, Lcom/google/android/gms/internal/vision/zzha;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2826
    invoke-static {p1, v2, v3, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    .line 2827
    :cond_f
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    .line 2828
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/vision/zzha;->zzj(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    .line 2829
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/vision/zzha;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v1

    .line 2830
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/vision/zzgy;Lcom/google/android/gms/internal/vision/zzfk;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2808
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v1

    .line 2810
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    .line 2811
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2812
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)V

    goto/16 :goto_0

    .line 2800
    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2802
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2803
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2795
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2797
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2798
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2790
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2792
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2793
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzn(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2785
    :pswitch_17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2787
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2788
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzm(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2777
    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 2779
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2780
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/vision/zzhv;->zzl(Ljava/util/List;)V

    .line 2782
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbj(I)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v2

    .line 2783
    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzgd;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    .line 2772
    :pswitch_19
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2774
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2775
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzk(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2767
    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2769
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2770
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2762
    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2764
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2765
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzg(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2757
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2759
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2760
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzf(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2752
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2754
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2755
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zze(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2747
    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2749
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2750
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzc(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2742
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2744
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2745
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzd(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2737
    :pswitch_20
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2739
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2740
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzb(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2732
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2734
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2735
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zza(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2727
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2729
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2730
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2722
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2724
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2725
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2717
    :pswitch_24
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2719
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2720
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzn(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2712
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2714
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2715
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzm(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2704
    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 2706
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2707
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/vision/zzhv;->zzl(Ljava/util/List;)V

    .line 2709
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbj(I)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v2

    .line 2710
    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzgd;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    :goto_7
    move-object v10, v1

    goto/16 :goto_0

    .line 2699
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2701
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2702
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzk(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2694
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2696
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2697
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzj(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2685
    :pswitch_29
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v1

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2690
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    .line 2691
    invoke-virtual {v4, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2692
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)V

    goto/16 :goto_0

    .line 2675
    :pswitch_2a
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbm(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2676
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2678
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2679
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzi(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2680
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2682
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->readStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2669
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2671
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2672
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2664
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2666
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2667
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzg(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2659
    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2661
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2662
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzf(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2654
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2656
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2657
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zze(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2649
    :pswitch_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2651
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2652
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzc(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2644
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2646
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2647
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzd(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2639
    :pswitch_31
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2641
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2642
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zzb(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2634
    :pswitch_32
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2636
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2637
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzhv;->zza(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2615
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_11

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2618
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2619
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v2

    .line 2620
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zzc(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v2

    .line 2621
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2624
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2629
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v1

    .line 2630
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zzc(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v1

    .line 2631
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2632
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2612
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzdc()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 2613
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2607
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzdb()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 2608
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2602
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzda()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 2603
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2597
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcz()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 2598
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2585
    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcy()I

    move-result v4

    .line 2586
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbj(I)Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 2587
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/vision/zzgd;->zzh(I)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_8

    .line 2593
    :cond_12
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/vision/zzhy;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    :cond_13
    :goto_8
    and-int v1, v3, v5

    int-to-long v5, v1

    .line 2590
    invoke-static {p1, v5, v6, v4}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 2591
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2582
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcx()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 2583
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2577
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcw()Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2578
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2556
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_14

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2559
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2560
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v2

    .line 2561
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zza(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v2

    .line 2562
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2565
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2570
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v1

    .line 2571
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/vision/zzhv;->zza(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v1

    .line 2572
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2573
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2553
    :pswitch_3c
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzhv;)V

    .line 2554
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2550
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcu()Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JZ)V

    .line 2551
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2545
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzct()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 2546
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2540
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcs()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 2541
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2535
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcr()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 2536
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2530
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcp()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 2531
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2525
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->zzcq()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 2526
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2520
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->readFloat()F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JF)V

    .line 2521
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2515
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzhv;->readDouble()D

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JD)V

    .line 2516
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :goto_9
    move-object v10, v1

    .line 2957
    :cond_15
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/vision/zzio;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzhv;)Z

    move-result v1
    :try_end_3
    .catch Lcom/google/android/gms/internal/vision/zzgg; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_0

    .line 2958
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzn:I

    :goto_a
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzo:I

    if-ge p2, p3, :cond_16

    .line 2959
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    aget p3, p3, p2

    .line 2960
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_16
    if-eqz v10, :cond_17

    .line 2963
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzio;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    return-void

    .line 2967
    :catch_0
    :try_start_4
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/vision/zzio;->zza(Lcom/google/android/gms/internal/vision/zzhv;)Z

    if-nez v10, :cond_18

    .line 2969
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/vision/zzio;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    .line 2970
    :cond_18
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/vision/zzio;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzhv;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_0

    .line 2971
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzn:I

    :goto_b
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzo:I

    if-ge p2, p3, :cond_19

    .line 2972
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    aget p3, p3, p2

    .line 2973
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_19
    if-eqz v10, :cond_1a

    .line 2976
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzio;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception p2

    .line 2979
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzn:I

    :goto_c
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzo:I

    if-ge p3, v0, :cond_1b

    .line 2980
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    aget v0, v0, p3

    .line 2981
    invoke-direct {p0, p1, v0, v10, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_1b
    if-eqz v10, :cond_1c

    .line 2984
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzio;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw p2

    .line 2474
    :cond_1d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/zzjj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1198
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzjj;->zzed()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzxj:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    .line 1200
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzio;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    .line 1203
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfl;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object v0

    .line 1205
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzfp;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1206
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzfp;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    .line 1208
    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    .line 1209
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v8

    .line 1211
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    .line 1213
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    .line 1214
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/util/Map$Entry;)V

    .line 1215
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 1657
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1660
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1661
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v10

    .line 1662
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_3

    .line 1653
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1656
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IJ)V

    goto/16 :goto_3

    .line 1649
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1652
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(II)V

    goto/16 :goto_3

    .line 1645
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1648
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzj(IJ)V

    goto/16 :goto_3

    .line 1641
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1644
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzo(II)V

    goto/16 :goto_3

    .line 1637
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1640
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzp(II)V

    goto/16 :goto_3

    .line 1633
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1636
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzf(II)V

    goto/16 :goto_3

    .line 1628
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1631
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzeo;

    .line 1632
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILcom/google/android/gms/internal/vision/zzeo;)V

    goto/16 :goto_3

    .line 1622
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1625
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1626
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_3

    .line 1618
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1621
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_3

    .line 1614
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1617
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzj(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IZ)V

    goto/16 :goto_3

    .line 1610
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1613
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzh(II)V

    goto/16 :goto_3

    .line 1606
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1609
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzc(IJ)V

    goto/16 :goto_3

    .line 1602
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1605
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zze(II)V

    goto/16 :goto_3

    .line 1598
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1601
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IJ)V

    goto/16 :goto_3

    .line 1594
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1597
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzi(IJ)V

    goto/16 :goto_3

    .line 1590
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1593
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzg(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IF)V

    goto/16 :goto_3

    .line 1586
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1589
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zzf(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1584
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzjj;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 1575
    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1578
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1579
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v10

    .line 1580
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_3

    .line 1567
    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1570
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1571
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1559
    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1562
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1563
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1551
    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1554
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1555
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1543
    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1546
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1547
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1535
    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1538
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1539
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1527
    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1530
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1531
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1519
    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1522
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1523
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1511
    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1514
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1515
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1503
    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1506
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1507
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1495
    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1498
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1499
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1487
    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1490
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1491
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1479
    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1482
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1483
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1471
    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1474
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1475
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1463
    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1466
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1467
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1455
    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1458
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1459
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1447
    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1450
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1451
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1439
    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1442
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1443
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1431
    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1434
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1435
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1423
    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1426
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1427
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1415
    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1418
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1419
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1407
    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1410
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1411
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_3

    .line 1398
    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1401
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1402
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v10

    .line 1403
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_3

    .line 1390
    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1393
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1394
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_3

    .line 1382
    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1385
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1386
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1374
    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1377
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1378
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1366
    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1369
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1370
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1358
    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1361
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1362
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1350
    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1353
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1354
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1342
    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1345
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1346
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1334
    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1337
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1338
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1326
    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1329
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1330
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_3

    .line 1318
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1321
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1322
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v10

    .line 1323
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_3

    .line 1312
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1316
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1317
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IJ)V

    goto/16 :goto_3

    .line 1306
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1310
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1311
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(II)V

    goto/16 :goto_3

    .line 1300
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1304
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1305
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzj(IJ)V

    goto/16 :goto_3

    .line 1294
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1298
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1299
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzo(II)V

    goto/16 :goto_3

    .line 1288
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1292
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1293
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzp(II)V

    goto/16 :goto_3

    .line 1282
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1286
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1287
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzf(II)V

    goto/16 :goto_3

    .line 1277
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1280
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzeo;

    .line 1281
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILcom/google/android/gms/internal/vision/zzeo;)V

    goto/16 :goto_3

    .line 1271
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1274
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1275
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_3

    .line 1267
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1270
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_3

    .line 1261
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1265
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzm(Ljava/lang/Object;J)Z

    move-result v8

    .line 1266
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IZ)V

    goto/16 :goto_3

    .line 1255
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1259
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1260
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zzh(II)V

    goto :goto_3

    .line 1249
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1253
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1254
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzc(IJ)V

    goto :goto_3

    .line 1243
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1247
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v8

    .line 1248
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zze(II)V

    goto :goto_3

    .line 1237
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1241
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1242
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IJ)V

    goto :goto_3

    .line 1231
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1235
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1236
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzi(IJ)V

    goto :goto_3

    .line 1225
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1229
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzn(Ljava/lang/Object;J)F

    move-result v8

    .line 1230
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IF)V

    goto :goto_3

    .line 1219
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1223
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zziu;->zzo(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1224
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 1665
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/util/Map$Entry;)V

    .line 1666
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    .line 1668
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    if-eqz v0, :cond_f

    .line 1672
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-eqz v0, :cond_8

    .line 1673
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfl;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object v0

    .line 1674
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzfp;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1675
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzfp;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1676
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    .line 1677
    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    array-length v7, v7

    move-object v8, v1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v7, :cond_c

    .line 1679
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v9

    .line 1681
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    :goto_7
    if-eqz v8, :cond_a

    .line 1683
    iget-object v11, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    .line 1684
    iget-object v11, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/util/Map$Entry;)V

    .line 1685
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v8, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    .line 2127
    :pswitch_45
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2130
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2131
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v11

    .line 2132
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_8

    .line 2123
    :pswitch_46
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2126
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IJ)V

    goto/16 :goto_8

    .line 2119
    :pswitch_47
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2122
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(II)V

    goto/16 :goto_8

    .line 2115
    :pswitch_48
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2118
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zzj(IJ)V

    goto/16 :goto_8

    .line 2111
    :pswitch_49
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2114
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzo(II)V

    goto/16 :goto_8

    .line 2107
    :pswitch_4a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2110
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzp(II)V

    goto/16 :goto_8

    .line 2103
    :pswitch_4b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2106
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzf(II)V

    goto/16 :goto_8

    .line 2098
    :pswitch_4c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2101
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/zzeo;

    .line 2102
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILcom/google/android/gms/internal/vision/zzeo;)V

    goto/16 :goto_8

    .line 2092
    :pswitch_4d
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2095
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2096
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_8

    .line 2088
    :pswitch_4e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2091
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_8

    .line 2084
    :pswitch_4f
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2087
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzj(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IZ)V

    goto/16 :goto_8

    .line 2080
    :pswitch_50
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2083
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzh(II)V

    goto/16 :goto_8

    .line 2076
    :pswitch_51
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2079
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zzc(IJ)V

    goto/16 :goto_8

    .line 2072
    :pswitch_52
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2075
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zze(II)V

    goto/16 :goto_8

    .line 2068
    :pswitch_53
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2071
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IJ)V

    goto/16 :goto_8

    .line 2064
    :pswitch_54
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2067
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zzi(IJ)V

    goto/16 :goto_8

    .line 2060
    :pswitch_55
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2063
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzg(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IF)V

    goto/16 :goto_8

    .line 2056
    :pswitch_56
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2059
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzf(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2054
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzjj;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 2045
    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2048
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2049
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v11

    .line 2050
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_8

    .line 2037
    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2040
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2041
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 2029
    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2032
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2033
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 2021
    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2024
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2025
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 2013
    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2016
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2017
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 2005
    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2008
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2009
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1997
    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2000
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2001
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1989
    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1992
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1993
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1981
    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1984
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1985
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1973
    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1976
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1977
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1965
    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1968
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1969
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1957
    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1960
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1961
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1949
    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1952
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1953
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1941
    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1944
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1945
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1933
    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1936
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1937
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1925
    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1928
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1929
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1917
    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1920
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1921
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1909
    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1912
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1913
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1901
    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1904
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1905
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1893
    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1896
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1897
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1885
    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1888
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1889
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1877
    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1880
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1881
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_8

    .line 1868
    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1871
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1872
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v11

    .line 1873
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_8

    .line 1860
    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1863
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1864
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_8

    .line 1852
    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1855
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1856
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1844
    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1847
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1848
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1836
    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1839
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1840
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1828
    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1831
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1832
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1820
    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1823
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1824
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1812
    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1815
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1816
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1804
    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1807
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1808
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1796
    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1799
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1800
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjj;Z)V

    goto/16 :goto_8

    .line 1788
    :pswitch_78
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1791
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1792
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v11

    .line 1793
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_8

    .line 1782
    :pswitch_79
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1786
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1787
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IJ)V

    goto/16 :goto_8

    .line 1776
    :pswitch_7a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1780
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1781
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzg(II)V

    goto/16 :goto_8

    .line 1770
    :pswitch_7b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1774
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1775
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zzj(IJ)V

    goto/16 :goto_8

    .line 1764
    :pswitch_7c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1768
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1769
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzo(II)V

    goto/16 :goto_8

    .line 1758
    :pswitch_7d
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1762
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1763
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzp(II)V

    goto/16 :goto_8

    .line 1752
    :pswitch_7e
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1756
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1757
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzf(II)V

    goto/16 :goto_8

    .line 1747
    :pswitch_7f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1750
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/zzeo;

    .line 1751
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILcom/google/android/gms/internal/vision/zzeo;)V

    goto/16 :goto_8

    .line 1741
    :pswitch_80
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1744
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1745
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)V

    goto/16 :goto_8

    .line 1737
    :pswitch_81
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1740
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    goto/16 :goto_8

    .line 1731
    :pswitch_82
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1735
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzm(Ljava/lang/Object;J)Z

    move-result v9

    .line 1736
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzb(IZ)V

    goto/16 :goto_8

    .line 1725
    :pswitch_83
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1729
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1730
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zzh(II)V

    goto :goto_8

    .line 1719
    :pswitch_84
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1723
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1724
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zzc(IJ)V

    goto :goto_8

    .line 1713
    :pswitch_85
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1717
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v9

    .line 1718
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zze(II)V

    goto :goto_8

    .line 1707
    :pswitch_86
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1711
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1712
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IJ)V

    goto :goto_8

    .line 1701
    :pswitch_87
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1705
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1706
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zzi(IJ)V

    goto :goto_8

    .line 1695
    :pswitch_88
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1699
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzn(Ljava/lang/Object;J)F

    move-result v9

    .line 1700
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzjj;->zza(IF)V

    goto :goto_8

    .line 1689
    :pswitch_89
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1693
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zziu;->zzo(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1694
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzjj;->zza(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v8, :cond_e

    .line 2135
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/gms/internal/vision/zzfl;->zza(Lcom/google/android/gms/internal/vision/zzjj;Ljava/util/Map$Entry;)V

    .line 2136
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_9

    :cond_d
    move-object v8, v3

    goto :goto_9

    .line 2137
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzio;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    return-void

    .line 2139
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzei;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/vision/zzei;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 3716
    iget-boolean v0, v15, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    if-eqz v0, :cond_12

    .line 3718
    sget-object v9, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 3722
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3724
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zza(I[BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3725
    iget v3, v11, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 3729
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/android/gms/internal/vision/zzhj;->zzr(II)I

    move-result v0

    :goto_2
    move v4, v0

    goto :goto_3

    .line 3730
    :cond_1
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/vision/zzhj;->zzbn(I)I

    move-result v0

    goto :goto_2

    :goto_3
    if-ne v4, v10, :cond_2

    move/from16 v25, v7

    move v2, v8

    move-object/from16 v18, v9

    const/16 v19, 0x0

    const/16 v27, -0x1

    goto/16 :goto_e

    .line 3734
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v3, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_8

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    :cond_3
    move/from16 v19, v4

    move/from16 v25, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_4
    const/16 v27, -0x1

    goto/16 :goto_d

    :pswitch_0
    if-nez v6, :cond_3

    .line 3803
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v6

    move-wide/from16 v20, v1

    .line 3804
    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    .line 3805
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzez;->zzd(J)J

    move-result-wide v22

    move-object v0, v9

    move-wide/from16 v2, v20

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v22

    .line 3806
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_8

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_7

    .line 3797
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3798
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    .line 3799
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzaq(I)I

    move-result v1

    .line 3800
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_7

    .line 3793
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3794
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_3

    .line 3789
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zze([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3790
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_3

    .line 3779
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    .line 3780
    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;[BIILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3781
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 3783
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 3784
    :cond_4
    iget-object v5, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    .line 3785
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3786
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_3

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_5

    .line 3773
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzc([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    goto :goto_5

    .line 3774
    :cond_5
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3775
    :goto_5
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrq:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_3

    .line 3768
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v1

    .line 3769
    iget-wide v5, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_7

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_3

    .line 3764
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_7
    move v2, v4

    move v1, v7

    goto/16 :goto_a

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_3

    .line 3760
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto :goto_9

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_7

    .line 3756
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zza([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    .line 3757
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzei;->zzro:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_7

    .line 3752
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/vision/zzeh;->zzb([BILcom/google/android/gms/internal/vision/zzei;)I

    move-result v6

    .line 3753
    iget-wide v4, v11, Lcom/google/android/gms/internal/vision/zzei;->zzrp:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_8
    move v0, v6

    goto :goto_9

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_7

    .line 3748
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/zzeh;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_9

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_7

    .line 3744
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/vision/zzeh;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v8, 0x8

    :goto_9
    move v1, v7

    move v2, v10

    :goto_a
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_7
    move/from16 v25, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto/16 :goto_4

    :cond_8
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_b

    if-ne v6, v10, :cond_3

    .line 3811
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzge;

    .line 3812
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzge;->zzch()Z

    move-result v3

    if-nez v3, :cond_a

    .line 3813
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzge;->size()I

    move-result v3

    if-nez v3, :cond_9

    const/16 v3, 0xa

    goto :goto_b

    :cond_9
    shl-int/lit8 v3, v3, 0x1

    .line 3816
    :goto_b
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/vision/zzge;->zzah(I)Lcom/google/android/gms/internal/vision/zzge;

    move-result-object v0

    .line 3817
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_a
    move-object v5, v0

    .line 3819
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3820
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzhw;I[BIILcom/google/android/gms/internal/vision/zzge;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto :goto_a

    :cond_b
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_c

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v24, v6

    move v6, v7

    move/from16 v25, v7

    move/from16 v7, v24

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v26, v10

    const/16 v27, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v26

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 3825
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    if-ne v0, v15, :cond_f

    :goto_c
    move v2, v0

    goto :goto_e

    :cond_c
    move-wide/from16 v20, v1

    move/from16 v26, v3

    move/from16 v24, v6

    move/from16 v25, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v27, -0x1

    const/16 v0, 0x32

    move/from16 v9, v26

    if-ne v9, v0, :cond_e

    move/from16 v7, v24

    if-ne v7, v10, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 3830
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_c

    :cond_d
    :goto_d
    move v2, v15

    goto :goto_e

    :cond_e
    move/from16 v7, v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v25

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 3835
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_c

    :goto_e
    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    .line 3837
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhj;->zza(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzei;)I

    move-result v0

    :cond_f
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v25

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_10
    move v4, v13

    if-ne v0, v4, :cond_11

    return-void

    .line 3840
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfo()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object v0

    throw v0

    :cond_12
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3842
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzei;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 458
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 460
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 465
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 534
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 531
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 533
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 529
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 526
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 528
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 524
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzhy;->zza(Lcom/google/android/gms/internal/vision/zzha;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 522
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzgp;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 520
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 517
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 519
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 514
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 511
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 513
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 508
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 505
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 507
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 502
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 504
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 499
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 501
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 497
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 494
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 496
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 491
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzm(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JZ)V

    .line 493
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 488
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 485
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 487
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 482
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Ljava/lang/Object;JI)V

    .line 484
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 479
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 476
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JJ)V

    .line 478
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 473
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzn(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JF)V

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 470
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JD)V

    .line 472
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 536
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    if-nez v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhy;->zza(Lcom/google/android/gms/internal/vision/zzio;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhy;->zza(Lcom/google/android/gms/internal/vision/zzfl;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 457
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3844
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzn:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzo:I

    if-ge v0, v1, :cond_1

    .line 3845
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3848
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3850
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/vision/zzha;->zzm(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3852
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    array-length v0, v0

    .line 3853
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzo:I

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3854
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzq:Lcom/google/android/gms/internal/vision/zzgp;

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzgp;->zzb(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3856
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzio;->zze(Ljava/lang/Object;)V

    .line 3857
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-eqz v0, :cond_3

    .line 3858
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfl;->zze(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final zzp(Ljava/lang/Object;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 575
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const/4 v7, 0x1

    const v8, 0xfffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_13

    .line 576
    sget-object v2, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 578
    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    array-length v14, v14

    if-ge v12, v14, :cond_12

    .line 579
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 584
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v3, v3, v12

    and-int/2addr v14, v8

    int-to-long v5, v14

    .line 589
    sget-object v14, Lcom/google/android/gms/internal/vision/zzfs;->zzva:Lcom/google/android/gms/internal/vision/zzfs;

    .line 590
    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/zzfs;->id()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/vision/zzfs;->zzvn:Lcom/google/android/gms/internal/vision/zzfs;

    .line 591
    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/zzfs;->id()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 592
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v8

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_2

    .line 856
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 858
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzhf;

    .line 859
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v6

    .line 860
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzhf;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 854
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 855
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zzf(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 852
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 853
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzk(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 850
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 851
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzh(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 848
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 849
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/zzfe;->zzm(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 846
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 847
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzn(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 844
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 845
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzj(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 840
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 842
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzeo;

    .line 843
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzeo;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 836
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 837
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 838
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 830
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 831
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 832
    instance-of v6, v5, Lcom/google/android/gms/internal/vision/zzeo;

    if-eqz v6, :cond_1

    .line 833
    check-cast v5, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzeo;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 834
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 828
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 829
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 826
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 827
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/zzfe;->zzl(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 824
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 825
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzg(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 822
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 823
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzi(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 820
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 821
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zze(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 818
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 819
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 816
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 817
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 814
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 815
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(ID)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 810
    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    .line 811
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbi(I)Ljava/lang/Object;

    move-result-object v6

    .line 812
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzha;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 807
    :pswitch_13
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v6

    .line 808
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 798
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 799
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzs(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 801
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_2

    int-to-long v14, v14

    .line 802
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 804
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 805
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 789
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 790
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzw(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 792
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_3

    int-to-long v14, v14

    .line 793
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 795
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 796
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 780
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 781
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzy(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 783
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_4

    int-to-long v14, v14

    .line 784
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 786
    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 787
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 771
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 772
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 774
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_5

    int-to-long v14, v14

    .line 775
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 777
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 778
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 762
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 763
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzt(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 765
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_6

    int-to-long v14, v14

    .line 766
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 768
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 769
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 753
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 754
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzv(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 756
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_7

    int-to-long v14, v14

    .line 757
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 759
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 760
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 744
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 745
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzz(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 747
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_8

    int-to-long v14, v14

    .line 748
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 750
    :cond_8
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 751
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 735
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 736
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 738
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_9

    int-to-long v14, v14

    .line 739
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 741
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 742
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 726
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 727
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzy(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 729
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_a

    int-to-long v14, v14

    .line 730
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 732
    :cond_a
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 733
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 717
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 718
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzu(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 720
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_b

    int-to-long v14, v14

    .line 721
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 723
    :cond_b
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 724
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 708
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 709
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzr(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 711
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_c

    int-to-long v14, v14

    .line 712
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 714
    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 715
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 699
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 700
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzq(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 702
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_d

    int-to-long v14, v14

    .line 703
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 705
    :cond_d
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 706
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 690
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 691
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzx(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 693
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_e

    int-to-long v14, v14

    .line 694
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 696
    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 697
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 681
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 682
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzy(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 684
    iget-boolean v6, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v6, :cond_f

    int-to-long v14, v14

    .line 685
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 687
    :cond_f
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v3

    .line 688
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 678
    :pswitch_22
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzq(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 676
    :pswitch_23
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzu(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 674
    :pswitch_24
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzw(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 672
    :pswitch_25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzv(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 670
    :pswitch_26
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzr(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 668
    :pswitch_27
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzt(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 666
    :pswitch_28
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 663
    :pswitch_29
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v6

    .line 664
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 660
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 658
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzx(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 656
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzv(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 654
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzw(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 652
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzs(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 650
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzp(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 648
    :pswitch_30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzo(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 646
    :pswitch_31
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzv(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 644
    :pswitch_32
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzhj;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzw(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 639
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 641
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzhf;

    .line 642
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v6

    .line 643
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzhf;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 636
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 638
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zzf(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 634
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 635
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzk(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 632
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 633
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzh(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 630
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 631
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/zzfe;->zzm(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 628
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 629
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzn(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 626
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 627
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzj(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 622
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 623
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzeo;

    .line 624
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzeo;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 618
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 619
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 620
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 612
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 613
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 614
    instance-of v6, v5, Lcom/google/android/gms/internal/vision/zzeo;

    if-eqz v6, :cond_10

    .line 615
    check-cast v5, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzeo;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 616
    :cond_10
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 610
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 611
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 608
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 609
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/zzfe;->zzl(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 606
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 607
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzg(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 604
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 605
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzk(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzfe;->zzi(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 601
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 603
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zze(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 599
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 600
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zziu;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 597
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 598
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 595
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 596
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(ID)I

    move-result v3

    add-int/2addr v13, v3

    :cond_11
    :goto_2
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 862
    :cond_12
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzio;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 865
    :cond_13
    sget-object v2, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v12, 0x0

    .line 868
    :goto_3
    iget-object v13, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    array-length v13, v13

    if-ge v3, v13, :cond_2b

    .line 869
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v13

    .line 871
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v14, v14, v3

    const/high16 v15, 0xff00000

    and-int v16, v13, v15

    ushr-int/lit8 v15, v16, 0x14

    const/16 v4, 0x11

    if-gt v15, v4, :cond_14

    .line 879
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 v16, v3, 0x2

    aget v4, v4, v16

    and-int v11, v4, v8

    ushr-int/lit8 v16, v4, 0x14

    shl-int v16, v7, v16

    if-eq v11, v6, :cond_16

    int-to-long v9, v11

    .line 884
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v6, v11

    goto :goto_5

    .line 885
    :cond_14
    iget-boolean v4, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v4, :cond_15

    sget-object v4, Lcom/google/android/gms/internal/vision/zzfs;->zzva:Lcom/google/android/gms/internal/vision/zzfs;

    .line 886
    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/zzfs;->id()I

    move-result v4

    if-lt v15, v4, :cond_15

    sget-object v4, Lcom/google/android/gms/internal/vision/zzfs;->zzvn:Lcom/google/android/gms/internal/vision/zzfs;

    .line 887
    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/zzfs;->id()I

    move-result v4

    if-gt v15, v4, :cond_15

    .line 888
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 v9, v3, 0x2

    aget v4, v4, v9

    and-int v11, v4, v8

    move v4, v11

    goto :goto_4

    :cond_15
    const/4 v4, 0x0

    :goto_4
    const/16 v16, 0x0

    :cond_16
    :goto_5
    and-int v9, v13, v8

    int-to-long v9, v9

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_6

    .line 1184
    :pswitch_45
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1186
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzhf;

    .line 1187
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v9

    .line 1188
    invoke-static {v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzhf;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1182
    :pswitch_46
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1183
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzf(IJ)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1180
    :pswitch_47
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1181
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzk(II)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1178
    :pswitch_48
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 1179
    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzh(IJ)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1176
    :pswitch_49
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1177
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzm(II)I

    move-result v9

    add-int/2addr v5, v9

    goto/16 :goto_6

    .line 1174
    :pswitch_4a
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1175
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzn(II)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1172
    :pswitch_4b
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1173
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzj(II)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1168
    :pswitch_4c
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1170
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzeo;

    .line 1171
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzeo;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1164
    :pswitch_4d
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1165
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1166
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v9

    invoke-static {v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1158
    :pswitch_4e
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1159
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1160
    instance-of v9, v4, Lcom/google/android/gms/internal/vision/zzeo;

    if-eqz v9, :cond_17

    .line 1161
    check-cast v4, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzeo;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1162
    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1156
    :pswitch_4f
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1157
    invoke-static {v14, v7}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(IZ)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1154
    :pswitch_50
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1155
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzl(II)I

    move-result v9

    add-int/2addr v5, v9

    goto/16 :goto_6

    .line 1152
    :pswitch_51
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 1153
    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzg(IJ)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1150
    :pswitch_52
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1151
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzhj;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzi(II)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1148
    :pswitch_53
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1149
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zze(IJ)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1146
    :pswitch_54
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1147
    invoke-static {v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzhj;->zzi(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(IJ)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1144
    :pswitch_55
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1145
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(IF)I

    move-result v9

    add-int/2addr v5, v9

    goto/16 :goto_6

    .line 1142
    :pswitch_56
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 1143
    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(ID)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1138
    :pswitch_57
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    .line 1139
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbi(I)Ljava/lang/Object;

    move-result-object v10

    .line 1140
    invoke-interface {v4, v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzha;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1134
    :pswitch_58
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1135
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v9

    .line 1136
    invoke-static {v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1125
    :pswitch_59
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1126
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzs(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1128
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_18

    int-to-long v10, v4

    .line 1129
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1131
    :cond_18
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1132
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1116
    :pswitch_5a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1117
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzw(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1119
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_19

    int-to-long v10, v4

    .line 1120
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1122
    :cond_19
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1123
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1107
    :pswitch_5b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1108
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzy(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1110
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_1a

    int-to-long v10, v4

    .line 1111
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1113
    :cond_1a
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1114
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1098
    :pswitch_5c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1099
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzx(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1101
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_1b

    int-to-long v10, v4

    .line 1102
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1104
    :cond_1b
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1105
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1089
    :pswitch_5d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1090
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzt(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1092
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_1c

    int-to-long v10, v4

    .line 1093
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1095
    :cond_1c
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1096
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1080
    :pswitch_5e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1081
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzv(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1083
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_1d

    int-to-long v10, v4

    .line 1084
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1086
    :cond_1d
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1087
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1071
    :pswitch_5f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1072
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzz(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1074
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_1e

    int-to-long v10, v4

    .line 1075
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1077
    :cond_1e
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1078
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1062
    :pswitch_60
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1063
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzx(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1065
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_1f

    int-to-long v10, v4

    .line 1066
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1068
    :cond_1f
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1069
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1053
    :pswitch_61
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1054
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzy(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1056
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_20

    int-to-long v10, v4

    .line 1057
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1059
    :cond_20
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1060
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1044
    :pswitch_62
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1045
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzu(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1047
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_21

    int-to-long v10, v4

    .line 1048
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1050
    :cond_21
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1051
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1035
    :pswitch_63
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1036
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzr(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1038
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_22

    int-to-long v10, v4

    .line 1039
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1041
    :cond_22
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1042
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1026
    :pswitch_64
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1027
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzq(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1029
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_23

    int-to-long v10, v4

    .line 1030
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1032
    :cond_23
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1033
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1017
    :pswitch_65
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1018
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzx(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1020
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_24

    int-to-long v10, v4

    .line 1021
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1023
    :cond_24
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1024
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1008
    :pswitch_66
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1009
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzy(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_26

    .line 1011
    iget-boolean v10, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzl:Z

    if-eqz v10, :cond_25

    int-to-long v10, v4

    .line 1012
    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1014
    :cond_25
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result v4

    .line 1015
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 1004
    :pswitch_67
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v11, 0x0

    .line 1005
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzq(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    :pswitch_68
    const/4 v11, 0x0

    .line 1000
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1001
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzu(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    :pswitch_69
    const/4 v11, 0x0

    .line 996
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 997
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzw(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    :pswitch_6a
    const/4 v11, 0x0

    .line 992
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 993
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzv(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    :pswitch_6b
    const/4 v11, 0x0

    .line 988
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 989
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzr(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    :pswitch_6c
    const/4 v11, 0x0

    .line 984
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 985
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzt(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 980
    :pswitch_6d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 981
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzd(ILjava/util/List;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 976
    :pswitch_6e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v9

    .line 977
    invoke-static {v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 973
    :pswitch_6f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/util/List;)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    .line 969
    :pswitch_70
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v11, 0x0

    .line 970
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzx(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_71
    const/4 v11, 0x0

    .line 965
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 966
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzv(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_72
    const/4 v11, 0x0

    .line 961
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 962
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzw(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_73
    const/4 v11, 0x0

    .line 957
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 958
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzs(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_74
    const/4 v11, 0x0

    .line 953
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 954
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzp(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_75
    const/4 v11, 0x0

    .line 949
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 950
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzo(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_76
    const/4 v11, 0x0

    .line 945
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 946
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzv(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_77
    const/4 v11, 0x0

    .line 941
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 942
    invoke-static {v14, v4, v11}, Lcom/google/android/gms/internal/vision/zzhy;->zzw(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    :cond_26
    :goto_6
    const/4 v4, 0x0

    :cond_27
    :goto_7
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_a

    :pswitch_78
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    .line 937
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzhf;

    .line 938
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v9

    .line 939
    invoke-static {v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzhf;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_79
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    .line 934
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzf(IJ)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_7a
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    .line 932
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzk(II)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_7b
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 930
    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzh(IJ)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_7c
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 928
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzm(II)I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_6

    :pswitch_7d
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    .line 926
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzn(II)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_7e
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    .line 924
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzj(II)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_7f
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    .line 920
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzeo;

    .line 921
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzeo;)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_6

    :pswitch_80
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    .line 916
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 917
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v9

    invoke-static {v14, v4, v9}, Lcom/google/android/gms/internal/vision/zzhy;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzhw;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    :pswitch_81
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    .line 910
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 911
    instance-of v9, v4, Lcom/google/android/gms/internal/vision/zzeo;

    if-eqz v9, :cond_28

    .line 912
    check-cast v4, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(ILcom/google/android/gms/internal/vision/zzeo;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    .line 913
    :cond_28
    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    :pswitch_82
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    .line 908
    invoke-static {v14, v7}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(IZ)I

    move-result v4

    add-int/2addr v5, v4

    goto/16 :goto_6

    :pswitch_83
    and-int v4, v12, v16

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 906
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzfe;->zzl(II)I

    move-result v9

    add-int/2addr v5, v9

    goto/16 :goto_7

    :pswitch_84
    const/4 v4, 0x0

    and-int v9, v12, v16

    if-eqz v9, :cond_27

    const-wide/16 v9, 0x0

    .line 904
    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzg(IJ)I

    move-result v11

    add-int/2addr v5, v11

    move-wide/from16 v18, v9

    goto :goto_8

    :pswitch_85
    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_29

    .line 902
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v14, v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzi(II)I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_8

    :pswitch_86
    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_29

    .line 900
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zze(IJ)I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_8

    :pswitch_87
    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_29

    .line 898
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v14, v9, v10}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(IJ)I

    move-result v9

    add-int/2addr v5, v9

    :cond_29
    :goto_8
    const/4 v9, 0x0

    goto :goto_9

    :pswitch_88
    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    and-int v9, v12, v16

    if-eqz v9, :cond_29

    const/4 v9, 0x0

    .line 896
    invoke-static {v14, v9}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(IF)I

    move-result v10

    add-int/2addr v5, v10

    :cond_2a
    :goto_9
    const-wide/16 v10, 0x0

    goto :goto_a

    :pswitch_89
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v18, 0x0

    and-int v10, v12, v16

    if-eqz v10, :cond_2a

    const-wide/16 v10, 0x0

    .line 894
    invoke-static {v14, v10, v11}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(ID)I

    move-result v13

    add-int/2addr v5, v13

    :goto_a
    add-int/lit8 v3, v3, 0x3

    move-wide/from16 v9, v18

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1190
    :cond_2b
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzr:Lcom/google/android/gms/internal/vision/zzio;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Lcom/google/android/gms/internal/vision/zzio;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1191
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-eqz v2, :cond_2c

    .line 1192
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzfl;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzfp;->zzeq()I

    move-result v1

    add-int/2addr v5, v1

    :cond_2c
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzr(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 3897
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzn:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_d

    .line 3898
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzm:[I

    aget v4, v4, v1

    .line 3900
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    aget v6, v6, v4

    .line 3902
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zzbk(I)I

    move-result v7

    .line 3904
    iget-boolean v8, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzk:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    .line 3905
    iget-object v8, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzd:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v2, :cond_1

    .line 3910
    sget-object v2, Lcom/google/android/gms/internal/vision/zzhj;->zzzc:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v2, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v2

    move v2, v10

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    .line 3914
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_3

    return v0

    :cond_3
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b

    const/16 v11, 0x11

    if-eq v10, v11, :cond_b

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_8

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_7

    const/16 v8, 0x44

    if-eq v10, v8, :cond_7

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_5

    .line 3940
    :pswitch_0
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    and-int/2addr v7, v9

    int-to-long v7, v7

    .line 3942
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/vision/zzha;->zzk(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 3943
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3944
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zzbi(I)Ljava/lang/Object;

    move-result-object v4

    .line 3945
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzt:Lcom/google/android/gms/internal/vision/zzha;

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/vision/zzha;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object v4

    .line 3946
    iget-object v4, v4, Lcom/google/android/gms/internal/vision/zzgy;->zzyx:Lcom/google/android/gms/internal/vision/zzjd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/zzjd;->zzho()Lcom/google/android/gms/internal/vision/zzji;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/vision/zzji;->zzacx:Lcom/google/android/gms/internal/vision/zzji;

    if-ne v4, v7, :cond_6

    const/4 v4, 0x0

    .line 3948
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_5

    .line 3950
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/vision/zzhs;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v4

    .line 3951
    :cond_5
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/vision/zzhw;->zzr(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v5, 0x0

    :cond_6
    if-nez v5, :cond_c

    return v0

    .line 3936
    :cond_7
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3937
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzhw;)Z

    move-result v4

    if-nez v4, :cond_c

    return v0

    :cond_8
    :pswitch_1
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 3925
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zziu;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3926
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3927
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v4

    const/4 v7, 0x0

    .line 3928
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 3929
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3930
    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/vision/zzhw;->zzr(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    if-nez v5, :cond_c

    return v0

    .line 3919
    :cond_b
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3920
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zzbh(I)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/vision/zzhj;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzhw;)Z

    move-result v4

    if-nez v4, :cond_c

    return v0

    :cond_c
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3958
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzi:Z

    if-eqz v1, :cond_e

    .line 3959
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzhj;->zzzs:Lcom/google/android/gms/internal/vision/zzfl;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vision/zzfl;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzfp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzfp;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_e

    return v0

    :cond_e
    return v5

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

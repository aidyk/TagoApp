.class final Lcom/google/android/gms/internal/vision/zzfp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/google/android/gms/internal/vision/zzfr<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zztp:Lcom/google/android/gms/internal/vision/zzfp;


# instance fields
.field private final zztm:Lcom/google/android/gms/internal/vision/zzhz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzhz<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zztn:Z

.field private zzto:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 307
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzfp;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfp;->zztp:Lcom/google/android/gms/internal/vision/zzfp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zzto:Z

    const/16 v0, 0x10

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzhz;->zzbo(I)Lcom/google/android/gms/internal/vision/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zzto:Z

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhz;->zzbo(I)Lcom/google/android/gms/internal/vision/zzhz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfp;->zzci()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/vision/zzjd;ILjava/lang/Object;)I
    .locals 1

    .line 241
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result p1

    .line 242
    sget-object v0, Lcom/google/android/gms/internal/vision/zzjd;->zzacd:Lcom/google/android/gms/internal/vision/zzjd;

    if-ne p0, v0, :cond_0

    .line 243
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzga;->zzf(Lcom/google/android/gms/internal/vision/zzhf;)Z

    shl-int/lit8 p1, p1, 0x1

    .line 245
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/vision/zzfp;->zzb(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static zza(Lcom/google/android/gms/internal/vision/zzfe;Lcom/google/android/gms/internal/vision/zzjd;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/google/android/gms/internal/vision/zzjd;->zzacd:Lcom/google/android/gms/internal/vision/zzjd;

    if-ne p1, v0, :cond_0

    .line 149
    check-cast p3, Lcom/google/android/gms/internal/vision/zzhf;

    invoke-static {p3}, Lcom/google/android/gms/internal/vision/zzga;->zzf(Lcom/google/android/gms/internal/vision/zzhf;)Z

    const/4 p1, 0x3

    .line 151
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 153
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/vision/zzhf;->zzb(Lcom/google/android/gms/internal/vision/zzfe;)V

    const/4 p1, 0x4

    .line 154
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    return-void

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjd;->zzhp()I

    move-result v0

    .line 158
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 160
    sget-object p2, Lcom/google/android/gms/internal/vision/zzfq;->zzrr:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjd;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 204
    :pswitch_0
    instance-of p1, p3, Lcom/google/android/gms/internal/vision/zzgb;

    if-eqz p1, :cond_1

    .line 205
    check-cast p3, Lcom/google/android/gms/internal/vision/zzgb;

    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzgb;->zzr()I

    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzar(I)V

    return-void

    .line 208
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 209
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzar(I)V

    goto/16 :goto_0

    .line 202
    :pswitch_1
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zzf(J)V

    return-void

    .line 200
    :pswitch_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzat(I)V

    return-void

    .line 197
    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zzg(J)V

    return-void

    .line 194
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 195
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzau(I)V

    return-void

    .line 192
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    return-void

    .line 187
    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/vision/zzeo;

    if-eqz p1, :cond_2

    .line 188
    check-cast p3, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzfe;->zza(Lcom/google/android/gms/internal/vision/zzeo;)V

    return-void

    .line 189
    :cond_2
    check-cast p3, [B

    const/4 p1, 0x0

    .line 190
    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zzf([BII)V

    return-void

    .line 183
    :pswitch_7
    instance-of p1, p3, Lcom/google/android/gms/internal/vision/zzeo;

    if-eqz p1, :cond_3

    .line 184
    check-cast p3, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzfe;->zza(Lcom/google/android/gms/internal/vision/zzeo;)V

    return-void

    .line 185
    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzfe;->zzm(Ljava/lang/String;)V

    return-void

    .line 181
    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/vision/zzhf;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(Lcom/google/android/gms/internal/vision/zzhf;)V

    return-void

    .line 178
    :pswitch_9
    check-cast p3, Lcom/google/android/gms/internal/vision/zzhf;

    .line 179
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/vision/zzhf;->zzb(Lcom/google/android/gms/internal/vision/zzfe;)V

    return-void

    .line 176
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzh(Z)V

    return-void

    .line 174
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzau(I)V

    return-void

    .line 172
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zzg(J)V

    return-void

    .line 170
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzar(I)V

    return-void

    .line 168
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zze(J)V

    return-void

    .line 165
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zze(J)V

    return-void

    .line 163
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzf(F)V

    return-void

    .line 161
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zza(D)V

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static zza(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Object;)V
    .locals 2

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfq;->zztq:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjd;->zzho()Lcom/google/android/gms/internal/vision/zzji;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzji;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 79
    :pswitch_0
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/zzhf;

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/google/android/gms/internal/vision/zzgi;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 77
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/google/android/gms/internal/vision/zzgb;

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 75
    :pswitch_2
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/zzeo;

    if-nez p0, :cond_0

    instance-of p0, p1, [B

    if-eqz p0, :cond_1

    goto :goto_0

    .line 73
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_1

    .line 71
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_1

    .line 69
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_1

    .line 67
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_1

    .line 65
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_1

    .line 63
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_1
    move v1, v0

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    return-void

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static zzb(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Object;)I
    .locals 1

    .line 246
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfq;->zzrr:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjd;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 273
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :pswitch_0
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/zzgb;

    if-eqz p0, :cond_0

    .line 271
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzgb;->zzr()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzbb(I)I

    move-result p0

    return p0

    .line 272
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzbb(I)I

    move-result p0

    return p0

    .line 266
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzj(J)I

    move-result p0

    return p0

    .line 265
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzay(I)I

    move-result p0

    return p0

    .line 264
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzl(J)I

    move-result p0

    return p0

    .line 263
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzba(I)I

    move-result p0

    return p0

    .line 262
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzax(I)I

    move-result p0

    return p0

    .line 256
    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/zzeo;

    if-eqz p0, :cond_1

    .line 257
    check-cast p1, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(Lcom/google/android/gms/internal/vision/zzeo;)I

    move-result p0

    return p0

    .line 258
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzh([B)I

    move-result p0

    return p0

    .line 259
    :pswitch_7
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/zzeo;

    if-eqz p0, :cond_2

    .line 260
    check-cast p1, Lcom/google/android/gms/internal/vision/zzeo;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(Lcom/google/android/gms/internal/vision/zzeo;)I

    move-result p0

    return p0

    .line 261
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzn(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 267
    :pswitch_8
    instance-of p0, p1, Lcom/google/android/gms/internal/vision/zzgi;

    if-eqz p0, :cond_3

    .line 268
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgi;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfe;->zza(Lcom/google/android/gms/internal/vision/zzgm;)I

    move-result p0

    return p0

    .line 269
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/vision/zzhf;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(Lcom/google/android/gms/internal/vision/zzhf;)I

    move-result p0

    return p0

    .line 255
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/vision/zzhf;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(Lcom/google/android/gms/internal/vision/zzhf;)I

    move-result p0

    return p0

    .line 254
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzi(Z)I

    move-result p0

    return p0

    .line 253
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzaz(I)I

    move-result p0

    return p0

    .line 252
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzk(J)I

    move-result p0

    return p0

    .line 251
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzaw(I)I

    move-result p0

    return p0

    .line 250
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzi(J)I

    move-result p0

    return p0

    .line 249
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzh(J)I

    move-result p0

    return p0

    .line 248
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzg(F)I

    move-result p0

    return p0

    .line 247
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static zzb(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 92
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfr;

    .line 93
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzfr;->zzet()Lcom/google/android/gms/internal/vision/zzji;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/vision/zzji;->zzacx:Lcom/google/android/gms/internal/vision/zzji;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 94
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzfr;->zzeu()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhf;

    .line 96
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzhf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 99
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 100
    instance-of v0, p0, Lcom/google/android/gms/internal/vision/zzhf;

    if-eqz v0, :cond_2

    .line 101
    check-cast p0, Lcom/google/android/gms/internal/vision/zzhf;

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzhf;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 103
    :cond_2
    instance-of p0, p0, Lcom/google/android/gms/internal/vision/zzgi;

    if-eqz p0, :cond_3

    return v3

    .line 105
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method private static zzc(Lcom/google/android/gms/internal/vision/zzfr;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzfr<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 274
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzfr;->zzes()Lcom/google/android/gms/internal/vision/zzjd;

    move-result-object v0

    .line 275
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzfr;->zzr()I

    move-result v1

    .line 276
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzfr;->zzeu()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzfr;->zzev()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 279
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 280
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/zzfp;->zzb(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 283
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzfe;->zzav(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 284
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzfe;->zzbd(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 287
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 288
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzjd;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    .line 291
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzjd;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zzc(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfr;

    .line 123
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 124
    instance-of v1, p1, Lcom/google/android/gms/internal/vision/zzgi;

    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgi;->zzfr()Lcom/google/android/gms/internal/vision/zzhf;

    move-result-object p1

    .line 126
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzfr;->zzeu()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzfr;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 131
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzfp;->zzf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzhz;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 134
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzfr;->zzet()Lcom/google/android/gms/internal/vision/zzji;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/vision/zzji;->zzacx:Lcom/google/android/gms/internal/vision/zzji;

    if-ne v1, v2, :cond_6

    .line 135
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzfr;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfp;->zzf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/vision/zzhz;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 138
    :cond_4
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/zzhm;

    if-eqz v2, :cond_5

    .line 139
    check-cast v1, Lcom/google/android/gms/internal/vision/zzhm;

    check-cast p1, Lcom/google/android/gms/internal/vision/zzhm;

    .line 140
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzfr;->zza(Lcom/google/android/gms/internal/vision/zzhm;Lcom/google/android/gms/internal/vision/zzhm;)Lcom/google/android/gms/internal/vision/zzhm;

    move-result-object p1

    goto :goto_1

    .line 141
    :cond_5
    check-cast v1, Lcom/google/android/gms/internal/vision/zzhf;

    .line 142
    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/zzhf;->zzez()Lcom/google/android/gms/internal/vision/zzhg;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzhf;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzfr;->zza(Lcom/google/android/gms/internal/vision/zzhg;Lcom/google/android/gms/internal/vision/zzhf;)Lcom/google/android/gms/internal/vision/zzhg;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzhg;->zzfg()Lcom/google/android/gms/internal/vision/zzhf;

    move-result-object p1

    .line 144
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/vision/zzhz;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfp;->zzf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/vision/zzhz;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzd(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 228
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfr;

    .line 229
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 230
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzfr;->zzet()Lcom/google/android/gms/internal/vision/zzji;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/vision/zzji;->zzacx:Lcom/google/android/gms/internal/vision/zzji;

    if-ne v2, v3, :cond_1

    .line 231
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzfr;->zzeu()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzfr;->zzev()Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    instance-of v0, v1, Lcom/google/android/gms/internal/vision/zzgi;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzfr;

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzfr;->zzr()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/vision/zzgi;

    .line 236
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(ILcom/google/android/gms/internal/vision/zzgm;)I

    move-result p0

    return p0

    .line 238
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzfr;

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzfr;->zzr()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/vision/zzhf;

    .line 239
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(ILcom/google/android/gms/internal/vision/zzhf;)I

    move-result p0

    return p0

    .line 240
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzfp;->zzc(Lcom/google/android/gms/internal/vision/zzfr;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static zzep()Lcom/google/android/gms/internal/vision/zzfp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/vision/zzfr<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/vision/zzfp<",
            "TT;>;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfp;->zztp:Lcom/google/android/gms/internal/vision/zzfp;

    return-object v0
.end method

.method private static zzf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 114
    instance-of v0, p0, Lcom/google/android/gms/internal/vision/zzhm;

    if-eqz v0, :cond_0

    .line 115
    check-cast p0, Lcom/google/android/gms/internal/vision/zzhm;

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzhm;->zzgh()Lcom/google/android/gms/internal/vision/zzhm;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 117
    check-cast p0, [B

    .line 118
    array-length v0, p0

    new-array v0, v0, [B

    .line 119
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzfp;-><init>()V

    const/4 v1, 0x0

    .line 295
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzhz;->zzgu()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzhz;->zzbp(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzfr;

    .line 298
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzfr;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzhz;->zzgv()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzfr;

    .line 302
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzfr;Ljava/lang/Object;)V

    goto :goto_1

    .line 304
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zzto:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/vision/zzfp;->zzto:Z

    return-object v0
.end method

.method final descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zzto:Z

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzhz;->zzgw()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzgl;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhz;->zzgw()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 20
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzfp;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/vision/zzfp;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzhz;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhz;->hashCode()I

    move-result v0

    return v0
.end method

.method final isEmpty()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhz;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isImmutable()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztn:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzhz;->zzgu()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzhz;->zzbp(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzfp;->zzb(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzhz;->zzgv()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 88
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzfp;->zzb(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zzto:Z

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzhz;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzgl;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhz;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzfr;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzhz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgi;

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgi;->zzfr()Lcom/google/android/gms/internal/vision/zzhf;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzfp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzfp<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzhz;->zzgu()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzhz;->zzbp(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfp;->zzc(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzhz;->zzgv()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfp;->zzc(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzfr;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzfr;->zzeu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    move-object p2, v0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 41
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzfr;->zzes()Lcom/google/android/gms/internal/vision/zzjd;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzfr;->zzes()Lcom/google/android/gms/internal/vision/zzjd;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Object;)V

    .line 46
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/vision/zzgi;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zzto:Z

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhz;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/vision/zzfr;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzfr;->zzeu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzfr;->zzes()Lcom/google/android/gms/internal/vision/zzjd;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfp;->zza(Lcom/google/android/gms/internal/vision/zzfr;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/vision/zzhz;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 58
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzci()V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztn:Z

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhz;->zzci()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztn:Z

    return-void
.end method

.method public final zzeq()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 212
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzhz;->zzgu()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/vision/zzhz;->zzbp(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 214
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzfr;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vision/zzfp;->zzc(Lcom/google/android/gms/internal/vision/zzfr;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhz;->zzgv()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzfr;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vision/zzfp;->zzc(Lcom/google/android/gms/internal/vision/zzfr;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final zzer()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzhz;->zzgu()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/vision/zzhz;->zzbp(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzfp;->zzd(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfp;->zztm:Lcom/google/android/gms/internal/vision/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhz;->zzgv()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 225
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzfp;->zzd(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

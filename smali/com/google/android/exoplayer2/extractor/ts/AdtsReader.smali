.class public final Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x2

.field private static final STATE_READING_ID3_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AdtsReader"


# instance fields
.field private final adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private bytesRead:I

.field private currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private final exposeId3:Z

.field private formatId:Ljava/lang/String;

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final language:Ljava/lang/String;

.field private matchState:I

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 100
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 101
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    .line 102
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 170
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 172
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 173
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findNextSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 7

    .line 228
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 229
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 230
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_7

    add-int/lit8 v3, v1, 0x1

    .line 232
    aget-byte v1, v0, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    .line 233
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    const/16 v6, 0x200

    if-ne v5, v6, :cond_1

    const/16 v5, 0xf0

    if-lt v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    .line 235
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 236
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void

    .line 239
    :cond_1
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v1, v4

    const/16 v4, 0x149

    if-eq v1, v4, :cond_5

    const/16 v4, 0x1ff

    if-eq v1, v4, :cond_4

    const/16 v4, 0x344

    if-eq v1, v4, :cond_3

    const/16 v4, 0x433

    if-eq v1, v4, :cond_2

    .line 254
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    const/16 v4, 0x100

    if-eq v1, v4, :cond_6

    .line 257
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 251
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void

    :cond_3
    const/16 v1, 0x400

    .line 247
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_2

    .line 241
    :cond_4
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_2

    :cond_5
    const/16 v1, 0x300

    .line 244
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    :cond_6
    :goto_2
    move v1, v3

    goto :goto_0

    .line 263
    :cond_7
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private parseAdtsHeader()V
    .locals 18

    move-object/from16 v6, p0

    .line 280
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 282
    iget-boolean v0, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 283
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-eq v0, v2, :cond_0

    const-string v4, "AdtsReader"

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detected audio object type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 298
    :cond_0
    iget-object v4, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 299
    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 300
    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 302
    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v0

    .line 304
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v4

    .line 307
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    const-string v8, "audio/mp4a-latm"

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 308
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 309
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 307
    invoke-static/range {v7 .. v17}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    .line 312
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v7, v7

    div-long/2addr v4, v7

    iput-wide v4, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 313
    iget-object v4, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 314
    iput-boolean v3, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 319
    :goto_0
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 320
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x5

    .line 321
    iget-boolean v1, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    :cond_2
    move v5, v0

    .line 325
    iget-object v1, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, v6, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lcom/google/android/exoplayer2/extractor/TrackOutput;JII)V

    return-void
.end method

.method private parseId3Header()V
    .locals 9

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 272
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 273
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    .line 272
    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lcom/google/android/exoplayer2/extractor/TrackOutput;JII)V

    return-void
.end method

.method private readSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 332
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 334
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 335
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    if-ne p1, v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 337
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 338
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    :cond_0
    return-void
.end method

.method private setFindingSampleState()V
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 181
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    const/16 v0, 0x100

    .line 182
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .locals 1

    const/4 v0, 0x2

    .line 217
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method private setReadingId3HeaderState()V
    .locals 2

    const/4 v0, 0x1

    .line 190
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 191
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 193
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private setReadingSampleState(Lcom/google/android/exoplayer2/extractor/TrackOutput;JII)V
    .locals 1

    const/4 v0, 0x3

    .line 206
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 207
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 209
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 210
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 2

    .line 132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->readSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    .line 144
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_0

    .line 135
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->findNextSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 3

    .line 112
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 113
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 115
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 117
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 118
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/id3"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p2, v0, v2, v1, v2}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    :goto_0
    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    return-void
.end method

.method public seek()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    return-void
.end method

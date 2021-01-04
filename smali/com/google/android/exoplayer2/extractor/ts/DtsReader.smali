.class public final Lcom/google/android/exoplayer2/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0xf

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final SYNC_VALUE:I = 0x7ffe8001

.field private static final SYNC_VALUE_SIZE:I = 0x4


# instance fields
.field private bytesRead:I

.field private format:Lcom/google/android/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private final headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private syncBytes:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xf

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x1

    const/4 v3, -0x2

    aput-byte v3, v0, v2

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x2

    const/16 v4, -0x80

    aput-byte v4, v0, v3

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 70
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 140
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 142
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 143
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private parseHeader()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 170
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DtsUtil;->parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 174
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DtsUtil;->getDtsFrameSize([B)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    const-wide/32 v1, 0xf4240

    .line 178
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    return-void
.end method

.method private skipToNextSync(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 155
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 157
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    const v2, 0x7ffe8001

    if-ne v0, v2, :cond_0

    .line 158
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 10

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 113
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 114
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    if-ne v0, v2, :cond_0

    .line 116
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 117
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    .line 118
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0xf

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->parseHeader()V

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v0, 0x2

    .line 108
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->skipToNextSync(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 99
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    const/4 v0, 0x1

    .line 100
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 83
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 84
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    .line 77
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    return-void
.end method

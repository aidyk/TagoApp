.class public final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_INPUT_SIZE:I = 0x8000


# instance fields
.field private bytesPerFrame:I

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private pendingBytes:I

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getPosition(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    .line 65
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    if-nez p2, :cond_1

    .line 82
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    .line 83
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, "audio/raw"

    const/4 v2, 0x0

    .line 87
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    .line 88
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getBitrate()I

    move-result v3

    const v4, 0x8000

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getNumChannels()I

    move-result v5

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    .line 89
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getSampleRateHz()I

    move-result v6

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getEncoding()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 87
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 91
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getBytesPerFrame()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->hasDataBounds()Z

    move-result p2

    if-nez p2, :cond_2

    .line 95
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->skipToData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/wav/WavHeader;)V

    .line 96
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 99
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const v0, 0x8000

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 101
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 105
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    div-int/2addr v1, v2

    if-lez v1, :cond_4

    .line 107
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v6

    .line 108
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    mul-int v9, v1, p1

    .line 109
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr p1, v9

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 110
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v8, 0x1

    iget v10, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_4
    if-ne p2, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

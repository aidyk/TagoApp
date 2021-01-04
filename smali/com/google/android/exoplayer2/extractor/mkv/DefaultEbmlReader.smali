.class final Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

.field private final scratch:[B

.field private final varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 42
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    return-void
.end method

.method private maybeResyncToNextLevel1Element(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 155
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->isLevel1Element(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 160
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readFloat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    long-to-int p1, v0

    .line 197
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private readInteger(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 178
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private readString(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 218
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 219
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 220
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 67
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 69
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->endMasterElement(I)V

    return v2

    .line 73
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v3

    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    return v1

    :cond_3
    long-to-int v0, v3

    .line 82
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 83
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 86
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-ne v0, v2, :cond_5

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const/4 v0, 0x2

    .line 88
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->getElementType(I)I

    move-result v0

    const-wide/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid element type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :pswitch_0
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v7, 0x4

    cmp-long v0, v5, v7

    if-eqz v0, :cond_7

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_6

    goto :goto_2

    .line 110
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid float size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readFloat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->floatElement(ID)V

    .line 113
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-interface {v0, v3, v4, p1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->binaryElement(IILcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 124
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 116
    :pswitch_2
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_8

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readString(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->stringElement(ILjava/lang/String;)V

    .line 120
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 117
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String element size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :pswitch_3
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->integerElement(IJ)V

    .line 105
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 102
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid integer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :pswitch_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 95
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v3, v5

    .line 96
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/mkv/EbmlReaderOutput;->startMasterElement(IJJ)V

    .line 98
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 127
    :pswitch_5
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 128
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->reset()V

    return-void
.end method

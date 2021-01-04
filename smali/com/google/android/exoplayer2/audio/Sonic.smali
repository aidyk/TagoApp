.class final Lcom/google/android/exoplayer2/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41

.field private static final USE_CHORD_PITCH:Z = false


# instance fields
.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputBufferSize:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequired:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private final numChannels:I

.field private numInputSamples:I

.field private numOutputSamples:I

.field private numPitchSamples:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputBufferSize:I

.field private pitch:F

.field private pitchBuffer:[S

.field private pitchBufferSize:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private remainingInputToCopy:I

.field private final sampleRate:I

.field private speed:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->sampleRate:I

    .line 69
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    .line 70
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    .line 71
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 72
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    .line 73
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    .line 74
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    .line 75
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int p1, p1, p2

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 76
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    .line 77
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int p1, p1, p2

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 78
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    .line 79
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int p1, p1, p2

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 81
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 82
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 83
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    .line 84
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    return-void
.end method

.method private adjustPitch(I)V
    .locals 12

    .line 353
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    if-ne v0, p1, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    const/4 p1, 0x0

    const/4 v9, 0x0

    .line 358
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v0, v9

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    if-lt v0, v1, :cond_2

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    invoke-direct {p0, v0, v9, p1}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriod([SIZ)I

    move-result v10

    int-to-float v0, v10

    .line 360
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v0, v1

    float-to-int v11, v0

    .line 361
    invoke-direct {p0, v11}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 362
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 363
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    add-int v0, v9, v10

    sub-int v7, v0, v11

    move v0, v11

    move v5, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    goto :goto_1

    :cond_1
    sub-int v2, v11, v10

    .line 367
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    move v0, v10

    move v6, v9

    move v8, v9

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAddWithSeparation(III[SI[SI[SI)V

    .line 370
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v0, v11

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v9, v10

    goto :goto_0

    .line 373
    :cond_2
    invoke-direct {p0, v9}, Lcom/google/android/exoplayer2/audio/Sonic;->removePitchSamples(I)V

    return-void
.end method

.method private adjustRate(FI)V
    .locals 8

    .line 388
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    if-ne v0, p2, :cond_0

    return-void

    .line 391
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->sampleRate:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 392
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->sampleRate:I

    :goto_0
    const/16 v1, 0x4000

    if-gt p1, v1, :cond_7

    if-le v0, v1, :cond_1

    goto :goto_5

    .line 398
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 400
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_6

    .line 401
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/2addr v2, v3

    mul-int v2, v2, p1

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int v4, v4, v0

    if-le v2, v4, :cond_3

    .line 402
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    const/4 v2, 0x0

    .line 403
    :goto_3
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    if-ge v2, v4, :cond_2

    .line 404
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v5, v5, v6

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v7, v7, v1

    add-int/2addr v7, v2

    .line 405
    invoke-direct {p0, v6, v7, v0, p1}, Lcom/google/android/exoplayer2/audio/Sonic;->interpolate([SIII)S

    move-result v6

    aput-short v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 407
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 408
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    goto :goto_2

    .line 410
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 411
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    if-ne v2, v0, :cond_5

    .line 412
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 413
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    if-ne v2, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 414
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_6
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr p1, v3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/Sonic;->removePitchSamples(I)V

    return-void

    .line 395
    :cond_7
    :goto_5
    div-int/lit8 p1, p1, 0x2

    .line 396
    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private changeSpeed(F)V
    .locals 8

    .line 455
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    if-ge v0, v1, :cond_0

    return-void

    .line 458
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    const/4 v1, 0x0

    .line 461
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    if-lez v2, :cond_2

    .line 462
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->copyInputToOutput(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 464
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriod([SIZ)I

    move-result v2

    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    .line 466
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    .line 468
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->insertPitchPeriod([SIFI)I

    move-result v2

    add-int/2addr v1, v2

    .line 471
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    .line 472
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->removeProcessedInputSamples(I)V

    return-void
.end method

.method private copyInputToOutput(I)I
    .locals 2

    .line 209
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 211
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    return v0
.end method

.method private copyToOutput([SII)V
    .locals 3

    .line 202
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 203
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int p2, p2, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, p3

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    return-void
.end method

.method private downSampleInput([SII)V
    .locals 6

    .line 218
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    div-int/2addr v0, p3

    .line 219
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v1, v1, p3

    .line 220
    iget p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int p2, p2, p3

    const/4 p3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    mul-int v5, v2, v1

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 224
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 226
    :cond_0
    div-int/2addr v4, v1

    .line 227
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enlargeInputBufferIfNeeded(I)V
    .locals 2

    .line 188
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    if-le v0, v1, :cond_0

    .line 189
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    .line 190
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    :cond_0
    return-void
.end method

.method private enlargeOutputBufferIfNeeded(I)V
    .locals 2

    .line 181
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    if-le v0, v1, :cond_0

    .line 182
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    .line 183
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    :cond_0
    return-void
.end method

.method private findPitchPeriod([SIZ)I
    .locals 6

    .line 295
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->sampleRate:I

    const/16 v1, 0xfa0

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->sampleRate:I

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 296
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 297
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    .line 299
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 300
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    div-int/2addr v3, v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    if-eq v0, v2, :cond_5

    mul-int v1, v1, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int v3, v1, v0

    add-int/2addr v1, v0

    .line 305
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    if-ge v3, v0, :cond_2

    .line 306
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    .line 308
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    if-le v1, v0, :cond_3

    .line 309
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 311
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    if-ne v0, v2, :cond_4

    .line 312
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    .line 314
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 315
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, p1, v5, v3, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v1

    .line 319
    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->previousPeriodBetter(IIZ)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 320
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    goto :goto_2

    :cond_6
    move p2, p1

    .line 324
    :goto_2
    iget p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    .line 325
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    return p2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 9

    .line 238
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xff

    :goto_0
    if-gt p3, p4, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, p3, :cond_1

    add-int v7, p2, v5

    .line 242
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 243
    aget-short v8, p1, v8

    if-lt v7, v8, :cond_0

    sub-int/2addr v7, v8

    goto :goto_2

    :cond_0
    sub-int v7, v8, v7

    :goto_2
    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    mul-int v5, v6, v2

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_2

    move v2, p3

    move v0, v6

    :cond_2
    mul-int v5, v6, v4

    mul-int v7, v3, p3

    if-le v5, v7, :cond_3

    move v4, p3

    move v3, v6

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 258
    :cond_4
    div-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    .line 259
    div-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    return v2
.end method

.method private insertPitchPeriod([SIFI)I
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    int-to-float v1, p4

    mul-float v1, v1, p3

    sub-float/2addr v0, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    goto :goto_0

    :cond_0
    int-to-float v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, p3

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    sub-float/2addr v0, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 443
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    move p3, p4

    :goto_0
    add-int v8, p4, p3

    .line 445
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 446
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v0, v0, p2

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, v3

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v3, v3, p4

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int v3, v0, p4

    add-int v5, p2, p4

    move v0, p3

    move-object v4, p1

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 450
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    return p3
.end method

.method private interpolate([SIII)S
    .locals 2

    .line 377
    aget-short v0, p1, p2

    .line 378
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    add-int/2addr p2, v1

    aget-short p1, p1, p2

    .line 379
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int p2, p2, p3

    .line 380
    iget p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    mul-int p3, p3, p4

    .line 381
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, p4

    sub-int p2, v1, p2

    sub-int/2addr v1, p3

    mul-int v0, v0, p2

    sub-int p2, v1, p2

    mul-int p2, p2, p1

    add-int/2addr v0, p2

    .line 384
    div-int/2addr v0, v1

    int-to-short p1, v0

    return p1
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6

    .line 330
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    sub-int/2addr v0, p1

    .line 331
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    if-le v1, v2, :cond_0

    .line 332
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    .line 333
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v5, v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 338
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    move v5, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_0

    .line 501
    aget-short v6, p4, v4

    sub-int v7, p0, v2

    mul-int v6, v6, v7

    aget-short v7, p6, v5

    mul-int v7, v7, v2

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v3

    add-int/2addr v3, p1

    add-int/2addr v4, p1

    add-int/2addr v5, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static overlapAddWithSeparation(III[SI[SI[SI)V
    .locals 12

    move v0, p0

    move v1, p1

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    mul-int v5, p4, v1

    add-int/2addr v5, v4

    mul-int v6, p8, v1

    add-int/2addr v6, v4

    mul-int v7, p6, v1

    add-int/2addr v7, v4

    move v8, v6

    move v6, v5

    const/4 v5, 0x0

    :goto_1
    add-int v9, v0, v2

    if-ge v5, v9, :cond_2

    if-ge v5, v2, :cond_0

    .line 517
    aget-short v9, p5, v7

    sub-int v10, v0, v5

    mul-int v9, v9, v10

    div-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p3, v6

    add-int/2addr v7, v1

    goto :goto_2

    :cond_0
    if-ge v5, v0, :cond_1

    .line 520
    aget-short v9, p5, v7

    sub-int v10, v0, v5

    mul-int v9, v9, v10

    aget-short v10, p7, v8

    sub-int v11, v5, v2

    mul-int v10, v10, v11

    add-int/2addr v9, v10

    div-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p3, v6

    add-int/2addr v7, v1

    add-int/2addr v8, v1

    goto :goto_2

    .line 526
    :cond_1
    aget-short v9, p7, v8

    sub-int v10, v5, v2

    mul-int v9, v9, v10

    div-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p3, v6

    add-int/2addr v8, v1

    :goto_2
    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private previousPeriodBetter(IIZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 268
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    mul-int/lit8 p3, p1, 0x3

    if-le p2, p3, :cond_1

    return v0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    .line 276
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 p2, p2, 0x3

    if-gt p1, p2, :cond_3

    return v0

    .line 281
    :cond_2
    iget p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    if-gt p1, p2, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private processStreamInput()V
    .locals 7

    .line 477
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 478
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    const-wide v4, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v6, v2, v4

    if-gtz v6, :cond_1

    const-wide v4, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 483
    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    goto :goto_1

    .line 480
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->changeSpeed(F)V

    .line 489
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 490
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->adjustRate(FI)V

    :cond_2
    return-void
.end method

.method private removePitchSamples(I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v1, v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v4, p1

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v4, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    return-void
.end method

.method private removeProcessedInputSamples(I)V
    .locals 5

    .line 195
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    sub-int/2addr v0, p1

    .line 196
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int p1, p1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v3, v3, v0

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p3, v1

    if-ltz v2, :cond_0

    int-to-float v1, p4

    sub-float/2addr p3, v0

    div-float/2addr v1, p3

    float-to-int p3, v1

    goto :goto_0

    :cond_0
    int-to-float v2, p4

    sub-float/2addr v1, p3

    mul-float v2, v2, v1

    sub-float/2addr p3, v0

    div-float/2addr v2, p3

    float-to-int p3, v2

    .line 427
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    move p3, p4

    .line 429
    :goto_0
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 430
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int v7, p2, p4

    move v0, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 432
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    return p3
.end method


# virtual methods
.method public getOutput(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 137
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 139
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 140
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v2, v2, v4

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getPitch()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    return v0
.end method

.method public getSamplesAvailable()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    return v0
.end method

.method public queueEndOfStream()V
    .locals 6

    .line 149
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 150
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 151
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    int-to-float v3, v0

    div-float/2addr v3, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    int-to-float v1, v1

    add-float/2addr v3, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v3, v1

    float-to-int v1, v3

    add-int/2addr v2, v1

    .line 155
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeInputBufferIfNeeded(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 156
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v4, v4, v5

    if-ge v3, v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v5, v5, v0

    add-int/2addr v5, v3

    aput-short v1, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 160
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 162
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    if-le v0, v2, :cond_1

    .line 163
    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 166
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 167
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    .line 168
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 122
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    div-int/2addr v0, v1

    .line 123
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeInputBufferIfNeeded(I)V

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v3, v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 126
    iget p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 127
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    return-void
.end method

.method public setPitch(F)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    return-void
.end method

.class public final Lcom/google/android/exoplayer2/util/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# static fields
.field public static final APPLICATION_CAMERA_MOTION:Ljava/lang/String; = "application/x-camera-motion"

.field public static final APPLICATION_CEA608:Ljava/lang/String; = "application/cea-608"

.field public static final APPLICATION_CEA708:Ljava/lang/String; = "application/cea-708"

.field public static final APPLICATION_DVBSUBS:Ljava/lang/String; = "application/dvbsubs"

.field public static final APPLICATION_EMSG:Ljava/lang/String; = "application/x-emsg"

.field public static final APPLICATION_ID3:Ljava/lang/String; = "application/id3"

.field public static final APPLICATION_M3U8:Ljava/lang/String; = "application/x-mpegURL"

.field public static final APPLICATION_MP4:Ljava/lang/String; = "application/mp4"

.field public static final APPLICATION_MP4CEA608:Ljava/lang/String; = "application/x-mp4-cea-608"

.field public static final APPLICATION_MP4VTT:Ljava/lang/String; = "application/x-mp4-vtt"

.field public static final APPLICATION_PGS:Ljava/lang/String; = "application/pgs"

.field public static final APPLICATION_RAWCC:Ljava/lang/String; = "application/x-rawcc"

.field public static final APPLICATION_SCTE35:Ljava/lang/String; = "application/x-scte35"

.field public static final APPLICATION_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final APPLICATION_TTML:Ljava/lang/String; = "application/ttml+xml"

.field public static final APPLICATION_TX3G:Ljava/lang/String; = "application/x-quicktime-tx3g"

.field public static final APPLICATION_VOBSUB:Ljava/lang/String; = "application/vobsub"

.field public static final APPLICATION_WEBM:Ljava/lang/String; = "application/webm"

.field public static final AUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final AUDIO_AC3:Ljava/lang/String; = "audio/ac3"

.field public static final AUDIO_ALAC:Ljava/lang/String; = "audio/alac"

.field public static final AUDIO_ALAW:Ljava/lang/String; = "audio/g711-alaw"

.field public static final AUDIO_AMR_NB:Ljava/lang/String; = "audio/3gpp"

.field public static final AUDIO_AMR_WB:Ljava/lang/String; = "audio/amr-wb"

.field public static final AUDIO_DTS:Ljava/lang/String; = "audio/vnd.dts"

.field public static final AUDIO_DTS_EXPRESS:Ljava/lang/String; = "audio/vnd.dts.hd;profile=lbr"

.field public static final AUDIO_DTS_HD:Ljava/lang/String; = "audio/vnd.dts.hd"

.field public static final AUDIO_E_AC3:Ljava/lang/String; = "audio/eac3"

.field public static final AUDIO_FLAC:Ljava/lang/String; = "audio/flac"

.field public static final AUDIO_MLAW:Ljava/lang/String; = "audio/g711-mlaw"

.field public static final AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final AUDIO_MPEG_L1:Ljava/lang/String; = "audio/mpeg-L1"

.field public static final AUDIO_MPEG_L2:Ljava/lang/String; = "audio/mpeg-L2"

.field public static final AUDIO_MSGSM:Ljava/lang/String; = "audio/gsm"

.field public static final AUDIO_OPUS:Ljava/lang/String; = "audio/opus"

.field public static final AUDIO_RAW:Ljava/lang/String; = "audio/raw"

.field public static final AUDIO_TRUEHD:Ljava/lang/String; = "audio/true-hd"

.field public static final AUDIO_UNKNOWN:Ljava/lang/String; = "audio/x-unknown"

.field public static final AUDIO_VORBIS:Ljava/lang/String; = "audio/vorbis"

.field public static final AUDIO_WEBM:Ljava/lang/String; = "audio/webm"

.field public static final BASE_TYPE_APPLICATION:Ljava/lang/String; = "application"

.field public static final BASE_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final BASE_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final BASE_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final TEXT_SSA:Ljava/lang/String; = "text/x-ssa"

.field public static final TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field public static final VIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static final VIDEO_H264:Ljava/lang/String; = "video/avc"

.field public static final VIDEO_H265:Ljava/lang/String; = "video/hevc"

.field public static final VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final VIDEO_MP4V:Ljava/lang/String; = "video/mp4v-es"

.field public static final VIDEO_MPEG2:Ljava/lang/String; = "video/mpeg2"

.field public static final VIDEO_UNKNOWN:Ljava/lang/String; = "video/x-unknown"

.field public static final VIDEO_VC1:Ljava/lang/String; = "video/wvc1"

.field public static final VIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static final VIDEO_VP9:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static final VIDEO_WEBM:Ljava/lang/String; = "video/webm"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 163
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 164
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 165
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "avc1"

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "avc3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v1, "hev1"

    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "hvc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string/jumbo v1, "vp9"

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_3
    const-string/jumbo v1, "vp8"

    .line 189
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "video/x-vnd.on2.vp8"

    return-object p0

    :cond_4
    const-string v1, "mp4a"

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_5
    const-string v1, "ac-3"

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "dac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "ec-3"

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "dec3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, "dtsc"

    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "dtse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "dtsh"

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "dtsl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    const-string v1, "opus"

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, "audio/opus"

    return-object p0

    :cond_a
    const-string/jumbo v1, "vorbis"

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "audio/vorbis"

    return-object p0

    :cond_b
    return-object v0

    :cond_c
    :goto_0
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :cond_d
    :goto_1
    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_e
    :goto_2
    const-string p0, "audio/eac3"

    return-object p0

    :cond_f
    :goto_3
    const-string p0, "audio/ac3"

    return-object p0

    :cond_10
    :goto_4
    const-string p0, "video/hevc"

    return-object p0

    :cond_11
    :goto_5
    const-string p0, "video/avc"

    return-object p0
.end method

.method private static getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 261
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mime type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTrackType(Ljava/lang/String;)I
    .locals 2

    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 220
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 222
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 224
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/cea-708"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-subrip"

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-quicktime-tx3g"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-rawcc"

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/vobsub"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/pgs"

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/dvbsubs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "application/id3"

    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "application/x-emsg"

    .line 232
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "application/x-scte35"

    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "application/x-camera-motion"

    .line 234
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x3

    return p0
.end method

.method public static getTrackTypeOfCodec(Ljava/lang/String;)I
    .locals 0

    .line 248
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 143
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 144
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 145
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static isApplication(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application"

    .line 128
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audio"

    .line 98
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isText(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "text"

    .line 118
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video"

    .line 108
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

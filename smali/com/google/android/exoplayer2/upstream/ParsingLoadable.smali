.class public final Lcom/google/android/exoplayer2/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field private volatile bytesLoaded:J

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private volatile isCanceled:Z

.field private final parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 76
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 77
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 78
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->isCanceled:Z

    return-void
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->isCanceled:Z

    return v0
.end method

.method public final load()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 114
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->open()V

    .line 115
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->bytesRead()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    .line 118
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 117
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->bytesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded:J

    .line 118
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

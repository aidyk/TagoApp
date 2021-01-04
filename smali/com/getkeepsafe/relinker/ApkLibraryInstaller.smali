.class public Lcom/getkeepsafe/relinker/ApkLibraryInstaller;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"

# interfaces
.implements Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x1000

.field private static final MAX_TRIES:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 150
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 152
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 159
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-wide v1

    :cond_0
    const/4 v4, 0x0

    .line 156
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0
.end method


# virtual methods
.method public installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/ReLinkerInstance;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    .line 51
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, v8, 0x1

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-ge v8, v10, :cond_0

    .line 55
    :try_start_1
    new-instance v8, Ljava/util/zip/ZipFile;

    new-instance v12, Ljava/io/File;

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v12, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_1

    :catch_0
    move v8, v9

    goto :goto_0

    :cond_0
    move-object v8, v5

    :goto_1
    if-nez v8, :cond_2

    :try_start_2
    const-string v0, "FATAL! Couldn\'t find application APK!"

    .line 61
    invoke-virtual {v4, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_1

    .line 134
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v9, v6, 0x1

    if-ge v6, v10, :cond_b

    .line 70
    :try_start_4
    array-length v6, v0

    move-object v13, v5

    move-object v14, v13

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v6, :cond_4

    aget-object v13, v0, v12

    .line 71
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v15, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 73
    invoke-virtual {v8, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    if-eqz v14, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v13, :cond_5

    const-string v6, "Looking for %s in APK..."

    .line 80
    new-array v12, v11, [Ljava/lang/Object;

    aput-object v13, v12, v7

    invoke-virtual {v4, v6, v12}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-nez v14, :cond_7

    if-eqz v13, :cond_6

    .line 85
    new-instance v0, Lcom/getkeepsafe/relinker/MissingLibraryException;

    invoke-direct {v0, v13}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_6
    new-instance v0, Lcom/getkeepsafe/relinker/MissingLibraryException;

    invoke-direct {v0, v2}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v6, "Found %s! Extracting..."

    .line 91
    new-array v12, v11, [Ljava/lang/Object;

    aput-object v13, v12, v7

    invoke-virtual {v4, v6, v12}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    :try_start_5
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->createNewFile()Z

    move-result v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_8

    goto :goto_9

    .line 104
    :cond_8
    :try_start_6
    invoke-virtual {v8, v14}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 105
    :try_start_7
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 106
    :try_start_8
    invoke-direct {v1, v6, v12}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v13

    .line 107
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/FileDescriptor;->sync()V

    .line 108
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v15
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    cmp-long v17, v13, v15

    if-eqz v17, :cond_9

    .line 119
    :try_start_9
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    :goto_5
    invoke-direct {v1, v12}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_9

    .line 119
    :cond_9
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {v1, v12}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 124
    invoke-virtual {v3, v11, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 125
    invoke-virtual {v3, v11, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 126
    invoke-virtual {v3, v11}, Ljava/io/File;->setWritable(Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v8, :cond_a

    .line 134
    :try_start_a
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    :cond_a
    return-void

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v12, v5

    goto :goto_6

    :catch_3
    move-object v12, v5

    goto :goto_7

    :catch_4
    move-object v12, v5

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v6, v5

    move-object v12, v6

    .line 119
    :goto_6
    :try_start_b
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {v1, v12}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_5
    move-object v6, v5

    move-object v12, v6

    .line 119
    :catch_6
    :goto_7
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catch_7
    move-object v6, v5

    move-object v12, v6

    :catch_8
    :goto_8
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catch_9
    :goto_9
    move v6, v9

    goto/16 :goto_2

    :cond_b
    const-string v0, "FATAL! Couldn\'t extract the library from the APK!"

    .line 130
    invoke-virtual {v4, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v8, :cond_c

    .line 134
    :try_start_c
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_c
    return-void

    :catchall_4
    move-exception v0

    move-object v8, v5

    :goto_a
    if-eqz v8, :cond_d

    :try_start_d
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 136
    :catch_b
    :cond_d
    throw v0
.end method

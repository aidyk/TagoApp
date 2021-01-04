.class public Lcom/polidea/rxandroidble2/internal/RxBleLog;
.super Ljava/lang/Object;
.source "RxBleLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;,
        Lcom/polidea/rxandroidble2/internal/RxBleLog$LogLevel;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final NEXT_TAG:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:I = 0x7fffffff

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static logLevel:I

.field private static logcatLogger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;

.field private static logger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\$\\d+$"

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->NEXT_TAG:Ljava/lang/ThreadLocal;

    .line 32
    new-instance v0, Lcom/polidea/rxandroidble2/internal/RxBleLog$1;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog$1;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logcatLogger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;

    const v0, 0x7fffffff

    .line 39
    sput v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logLevel:I

    .line 41
    sget-object v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logcatLogger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;

    sput-object v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTag()Ljava/lang/String;
    .locals 3

    .line 92
    sget-object v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->NEXT_TAG:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    sget-object v1, Lcom/polidea/rxandroidble2/internal/RxBleLog;->NEXT_TAG:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 99
    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    const/4 v1, 0x4

    .line 103
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/polidea/rxandroidble2/internal/RxBleLog;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    .line 106
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "Impl"

    const-string v2, ""

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RxBle"

    const-string v2, ""

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RxBle#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Synthetic stacktrace didn\'t have enough elements: are you using proguard?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 127
    invoke-static {v0, v1, p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 131
    invoke-static {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 151
    invoke-static {v0, v1, p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 155
    invoke-static {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 115
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 135
    invoke-static {v0, v1, p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 139
    invoke-static {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static isAtLeast(I)Z
    .locals 1

    .line 198
    sget v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logLevel:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 184
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-ge v0, v1, :cond_0

    .line 185
    sget-object v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;

    invoke-interface {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "\n"

    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 191
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 192
    sget-object v3, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;

    invoke-interface {v3, p0, p1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 88
    sput p0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logLevel:I

    return-void
.end method

.method public static setLogger(Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;)V
    .locals 0
    .param p0    # Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 81
    sget-object p0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logcatLogger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;

    sput-object p0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;

    goto :goto_0

    .line 83
    :cond_0
    sput-object p0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logger:Lcom/polidea/rxandroidble2/internal/RxBleLog$Logger;

    :goto_0
    return-void
.end method

.method private static varargs throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 159
    sget v0, Lcom/polidea/rxandroidble2/internal/RxBleLog;->logLevel:I

    if-ge p0, v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-static {p2, p3}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 174
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 168
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 179
    :cond_3
    :goto_1
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->createTag()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->println(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 119
    invoke-static {v0, v1, p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 123
    invoke-static {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 143
    invoke-static {v0, v1, p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 147
    invoke-static {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->throwShade(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

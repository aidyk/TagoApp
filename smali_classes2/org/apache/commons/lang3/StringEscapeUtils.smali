.class public Lorg/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;,
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;
    }
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 54
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v1, 0x2

    new-array v2, v1, [[Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "\""

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "\\\""

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "\\"

    aput-object v4, v3, v5

    const-string v4, "\\\\"

    aput-object v4, v3, v6

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v2, v6, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    new-array v2, v6, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    const/16 v3, 0x20

    const/16 v4, 0x7f

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 74
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v2, 0x3

    new-array v7, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v9, 0x4

    new-array v10, v9, [[Ljava/lang/String;

    new-array v11, v1, [Ljava/lang/String;

    const-string v12, "\'"

    aput-object v12, v11, v5

    const-string v12, "\\\'"

    aput-object v12, v11, v6

    aput-object v11, v10, v5

    new-array v11, v1, [Ljava/lang/String;

    const-string v12, "\""

    aput-object v12, v11, v5

    const-string v12, "\\\""

    aput-object v12, v11, v6

    aput-object v11, v10, v6

    new-array v11, v1, [Ljava/lang/String;

    const-string v12, "\\"

    aput-object v12, v11, v5

    const-string v12, "\\\\"

    aput-object v12, v11, v6

    aput-object v11, v10, v1

    new-array v11, v1, [Ljava/lang/String;

    const-string v12, "/"

    aput-object v12, v11, v5

    const-string v12, "\\/"

    aput-object v12, v11, v6

    aput-object v11, v10, v2

    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v7, v5

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v7, v6

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-direct {v0, v7}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 96
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v7, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v10, v2, [[Ljava/lang/String;

    new-array v11, v1, [Ljava/lang/String;

    const-string v12, "\""

    aput-object v12, v11, v5

    const-string v12, "\\\""

    aput-object v12, v11, v6

    aput-object v11, v10, v5

    new-array v11, v1, [Ljava/lang/String;

    const-string v12, "\\"

    aput-object v12, v11, v5

    const-string v12, "\\\\"

    aput-object v12, v11, v6

    aput-object v11, v10, v6

    new-array v11, v1, [Ljava/lang/String;

    const-string v12, "/"

    aput-object v12, v11, v5

    const-string v12, "\\/"

    aput-object v12, v11, v6

    aput-object v11, v10, v1

    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v7, v5

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v7, v6

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-direct {v0, v7}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 119
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v7, v3, v5

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v7, v3, v6

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 134
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v3, 0x6

    new-array v7, v3, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v7, v5

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v7, v6

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/16 v10, 0x1f

    new-array v11, v10, [[Ljava/lang/String;

    new-array v12, v1, [Ljava/lang/String;

    const-string v13, "\u0000"

    aput-object v13, v12, v5

    const-string v13, ""

    aput-object v13, v12, v6

    aput-object v12, v11, v5

    new-array v12, v1, [Ljava/lang/String;

    const-string v13, "\u0001"

    aput-object v13, v12, v5

    const-string v13, ""

    aput-object v13, v12, v6

    aput-object v12, v11, v6

    new-array v12, v1, [Ljava/lang/String;

    const-string v13, "\u0002"

    aput-object v13, v12, v5

    const-string v13, ""

    aput-object v13, v12, v6

    aput-object v12, v11, v1

    new-array v12, v1, [Ljava/lang/String;

    const-string v13, "\u0003"

    aput-object v13, v12, v5

    const-string v13, ""

    aput-object v13, v12, v6

    aput-object v12, v11, v2

    new-array v12, v1, [Ljava/lang/String;

    const-string v13, "\u0004"

    aput-object v13, v12, v5

    const-string v13, ""

    aput-object v13, v12, v6

    aput-object v12, v11, v9

    new-array v12, v1, [Ljava/lang/String;

    const-string v13, "\u0005"

    aput-object v13, v12, v5

    const-string v13, ""

    aput-object v13, v12, v6

    const/4 v13, 0x5

    aput-object v12, v11, v13

    new-array v12, v1, [Ljava/lang/String;

    const-string v14, "\u0006"

    aput-object v14, v12, v5

    const-string v14, ""

    aput-object v14, v12, v6

    aput-object v12, v11, v3

    new-array v12, v1, [Ljava/lang/String;

    const-string v14, "\u0007"

    aput-object v14, v12, v5

    const-string v14, ""

    aput-object v14, v12, v6

    const/4 v14, 0x7

    aput-object v12, v11, v14

    new-array v12, v1, [Ljava/lang/String;

    const-string v15, "\u0008"

    aput-object v15, v12, v5

    const-string v15, ""

    aput-object v15, v12, v6

    const/16 v15, 0x8

    aput-object v12, v11, v15

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u000b"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x9

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u000c"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0xa

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u000e"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0xb

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u000f"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0xc

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0010"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0xd

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0011"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v14, 0xe

    aput-object v12, v11, v14

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0012"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0xf

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0013"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x10

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0014"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x11

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0015"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x12

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0016"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x13

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0017"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x14

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0018"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x15

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u0019"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x16

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u001a"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x17

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u001b"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x18

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u001c"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x19

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u001d"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x1a

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u001e"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x1b

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\u001f"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x1c

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\ufffe"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x1d

    aput-object v12, v11, v16

    new-array v12, v1, [Ljava/lang/String;

    const-string v16, "\uffff"

    aput-object v16, v12, v5

    const-string v16, ""

    aput-object v16, v12, v6

    const/16 v16, 0x1e

    aput-object v12, v11, v16

    invoke-direct {v8, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v7, v1

    const/16 v8, 0x84

    invoke-static {v4, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v11

    aput-object v11, v7, v2

    const/16 v11, 0x86

    const/16 v12, 0x9f

    invoke-static {v11, v12}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v12

    aput-object v12, v7, v9

    new-instance v12, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v12}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v12, v7, v13

    invoke-direct {v0, v7}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 186
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v7, v15, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v12, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v7, v5

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v7, v6

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v12, v13, [[Ljava/lang/String;

    new-array v11, v1, [Ljava/lang/String;

    const-string v16, "\u0000"

    aput-object v16, v11, v5

    const-string v16, ""

    aput-object v16, v11, v6

    aput-object v11, v12, v5

    new-array v11, v1, [Ljava/lang/String;

    const-string v16, "\u000b"

    aput-object v16, v11, v5

    const-string v16, "&#11;"

    aput-object v16, v11, v6

    aput-object v11, v12, v6

    new-array v11, v1, [Ljava/lang/String;

    const-string v16, "\u000c"

    aput-object v16, v11, v5

    const-string v16, "&#12;"

    aput-object v16, v11, v6

    aput-object v11, v12, v1

    new-array v11, v1, [Ljava/lang/String;

    const-string v16, "\ufffe"

    aput-object v16, v11, v5

    const-string v16, ""

    aput-object v16, v11, v6

    aput-object v11, v12, v2

    new-array v11, v1, [Ljava/lang/String;

    const-string v16, "\uffff"

    aput-object v16, v11, v5

    const-string v16, ""

    aput-object v16, v11, v6

    aput-object v11, v12, v9

    invoke-direct {v3, v12}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v7, v1

    invoke-static {v6, v15}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v14, v10}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-static {v4, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v3

    aput-object v3, v7, v13

    const/16 v3, 0x9f

    const/16 v4, 0x86

    invoke-static {v4, v3}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v7, v4

    new-instance v3, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v3}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    const/4 v4, 0x7

    aput-object v3, v7, v4

    invoke-direct {v0, v7}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 214
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v6

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 229
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v6

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v1

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 245
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 288
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v4, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;

    invoke-direct {v4}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;-><init>()V

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;

    invoke-direct {v4}, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;-><init>()V

    aput-object v4, v3, v6

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v1

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v7, v9, [[Ljava/lang/String;

    new-array v8, v1, [Ljava/lang/String;

    const-string v10, "\\\\"

    aput-object v10, v8, v5

    const-string v10, "\\"

    aput-object v10, v8, v6

    aput-object v8, v7, v5

    new-array v8, v1, [Ljava/lang/String;

    const-string v10, "\\\""

    aput-object v10, v8, v5

    const-string v10, "\""

    aput-object v10, v8, v6

    aput-object v8, v7, v6

    new-array v8, v1, [Ljava/lang/String;

    const-string v10, "\\\'"

    aput-object v10, v8, v5

    const-string v10, "\'"

    aput-object v10, v8, v6

    aput-object v8, v7, v1

    new-array v8, v1, [Ljava/lang/String;

    const-string v10, "\\"

    aput-object v10, v8, v5

    const-string v10, ""

    aput-object v10, v8, v6

    aput-object v8, v7, v2

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v2

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 311
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 322
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 333
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v6

    new-instance v4, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v7, v5, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v4, v3, v1

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 349
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v3, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v6

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v1

    new-instance v4, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v7, v5, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v4, v7}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v4, v3, v2

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 366
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v2, v2, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v4, v5, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 382
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 777
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 484
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 605
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 592
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 456
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 512
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 699
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 729
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 802
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 542
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 641
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 627
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 525
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 559
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 751
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

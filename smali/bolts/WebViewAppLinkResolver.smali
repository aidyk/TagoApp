.class public Lbolts/WebViewAppLinkResolver;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"

# interfaces
.implements Lbolts/AppLinkResolver;


# static fields
.field private static final KEY_AL_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_ANDROID:Ljava/lang/String; = "android"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_SHOULD_FALLBACK:Ljava/lang/String; = "should_fallback"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final KEY_WEB:Ljava/lang/String; = "web"

.field private static final KEY_WEB_URL:Ljava/lang/String; = "url"

.field private static final META_TAG_PREFIX:Ljava/lang/String; = "al"

.field private static final PREFER_HEADER:Ljava/lang/String; = "Prefer-Html-Meta-Tags"

.field private static final TAG_EXTRACTION_JAVASCRIPT:Ljava/lang/String; = "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName(\'meta\');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute(\'property\');    if (property && property.substring(0, \'al:\'.length) === \'al:\') {      var tag = { \"property\": metaTags[i].getAttribute(\'property\') };      if (metaTags[i].hasAttribute(\'content\')) {        tag[\'content\'] = metaTags[i].getAttribute(\'content\');      }      results.push(tag);    }  }  return JSON.stringify(results);})())"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lbolts/WebViewAppLinkResolver;->parseAlData(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lbolts/WebViewAppLinkResolver;->makeAppLinkFromAlData(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lbolts/WebViewAppLinkResolver;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lbolts/WebViewAppLinkResolver;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lbolts/WebViewAppLinkResolver;->readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 231
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method private static makeAppLinkFromAlData(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/AppLink;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android"

    .line 241
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 246
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "url"

    .line 249
    invoke-static {v2, v5}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v6, "package"

    .line 250
    invoke-static {v2, v6}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v7, "class"

    .line 251
    invoke-static {v2, v7}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "app_name"

    .line 252
    invoke-static {v2, v8}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 254
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_0
    if-ge v4, v8, :cond_1

    .line 257
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v4, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "value"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v3

    :goto_1
    check-cast v9, Ljava/lang/String;

    .line 259
    invoke-static {v9}, Lbolts/WebViewAppLinkResolver;->tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 260
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v4, :cond_3

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    const-string v11, "value"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    :cond_3
    move-object v10, v3

    :goto_2
    check-cast v10, Ljava/lang/String;

    .line 262
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v4, :cond_4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v12, "value"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_3

    :cond_4
    move-object v11, v3

    :goto_3
    check-cast v11, Ljava/lang/String;

    .line 264
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v4, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    const-string v13, "value"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_4

    :cond_5
    move-object v12, v3

    :goto_4
    check-cast v12, Ljava/lang/String;

    .line 266
    new-instance v13, Lbolts/AppLink$Target;

    invoke-direct {v13, v10, v11, v9, v12}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 267
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "web"

    .line 272
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_9

    .line 273
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 274
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v1, "url"

    .line 275
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "should_fallback"

    .line 276
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_7

    .line 278
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 279
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v2, "value"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x3

    .line 280
    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "no"

    aput-object v5, v2, v4

    const-string v5, "false"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    const-string v6, "0"

    aput-object v6, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, p1

    :goto_5
    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    .line 284
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8

    .line 285
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v1, "value"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 286
    invoke-static {p0}, Lbolts/WebViewAppLinkResolver;->tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_6

    :cond_8
    move-object p0, v3

    goto :goto_6

    :cond_9
    move-object p0, p1

    .line 289
    :goto_6
    new-instance v1, Lbolts/AppLink;

    invoke-direct {v1, p1, v0, p0}, Lbolts/AppLink;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    return-object v1
.end method

.method private static parseAlData(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 195
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 196
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "property"

    .line 197
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 199
    aget-object v5, v4, v1

    const-string v6, "al"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_4

    :cond_0
    const/4 v5, 0x1

    move-object v7, v0

    const/4 v6, 0x1

    .line 203
    :goto_1
    array-length v8, v4

    const/4 v9, 0x0

    if-ge v6, v8, :cond_5

    .line 205
    aget-object v8, v4, v6

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_1

    .line 208
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 209
    aget-object v10, v4, v6

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/util/Map;

    :cond_2
    if-eqz v9, :cond_4

    .line 212
    array-length v7, v4

    sub-int/2addr v7, v5

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v9

    goto :goto_3

    .line 213
    :cond_4
    :goto_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const-string v4, "content"

    .line 218
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "content"

    .line 219
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "value"

    .line 220
    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const-string v4, "value"

    const-string v5, "content"

    .line 222
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method private static readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 306
    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 308
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 316
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 317
    new-array v2, v2, [B

    .line 319
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    .line 320
    invoke-virtual {v0, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 324
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v3, ";"

    .line 325
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 326
    array-length v3, p0

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v4, p0, v5

    .line 327
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, "charset="

    .line 328
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p0, "charset="

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    const-string v2, "UTF-8"

    .line 337
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method private static tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 296
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lbolts/Capture;

    invoke-direct {v0}, Lbolts/Capture;-><init>()V

    .line 84
    new-instance v1, Lbolts/Capture;

    invoke-direct {v1}, Lbolts/Capture;-><init>()V

    .line 85
    new-instance v2, Lbolts/WebViewAppLinkResolver$3;

    invoke-direct {v2, p0, p1, v0, v1}, Lbolts/WebViewAppLinkResolver$3;-><init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;Lbolts/Capture;Lbolts/Capture;)V

    invoke-static {v2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lbolts/WebViewAppLinkResolver$2;

    invoke-direct {v3, p0, v1, p1, v0}, Lbolts/WebViewAppLinkResolver$2;-><init>(Lbolts/WebViewAppLinkResolver;Lbolts/Capture;Landroid/net/Uri;Lbolts/Capture;)V

    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lbolts/WebViewAppLinkResolver$1;

    invoke-direct {v1, p0, p1}, Lbolts/WebViewAppLinkResolver$1;-><init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

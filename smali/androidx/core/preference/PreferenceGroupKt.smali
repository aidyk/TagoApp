.class public final Landroidx/core/preference/PreferenceGroupKt;
.super Ljava/lang/Object;
.source "PreferenceGroup.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferenceGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceGroup.kt\nandroidx/core/preference/PreferenceGroupKt\n*L\n1#1,91:1\n60#1:92\n60#1:93\n60#1:94\n60#1:95\n60#1:96\n*E\n*S KotlinDebug\n*F\n+ 1 PreferenceGroup.kt\nandroidx/core/preference/PreferenceGroupKt\n*L\n41#1:92\n63#1:93\n66#1:94\n70#1:95\n77#1:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0010)\n\u0002\u0008\u0003\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0086\u0002\u001a0\u0010\t\u001a\u00020\n*\u00020\u00022!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\n0\u000cH\u0086\u0008\u001aE\u0010\u000f\u001a\u00020\n*\u00020\u000226\u0010\u000b\u001a2\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\n0\u0010H\u0086\u0008\u001a\u0015\u0010\u0012\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0086\n\u001a\u0015\u0010\u0012\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0001H\u0086\u0002\u001a\r\u0010\u0015\u001a\u00020\u0006*\u00020\u0002H\u0086\u0008\u001a\r\u0010\u0016\u001a\u00020\u0006*\u00020\u0002H\u0086\u0008\u001a\u0013\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0018*\u00020\u0002H\u0086\u0002\u001a\u0015\u0010\u0019\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0086\n\u001a\u0015\u0010\u001a\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0086\n\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u001b"
    }
    d2 = {
        "size",
        "",
        "Landroid/preference/PreferenceGroup;",
        "getSize",
        "(Landroid/preference/PreferenceGroup;)I",
        "contains",
        "",
        "preference",
        "Landroid/preference/Preference;",
        "forEach",
        "",
        "action",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "forEachIndexed",
        "Lkotlin/Function2;",
        "index",
        "get",
        "key",
        "",
        "isEmpty",
        "isNotEmpty",
        "iterator",
        "",
        "minusAssign",
        "plusAssign",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final contains(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 4
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 92
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 42
    invoke-static {p0, v2}, Landroidx/core/preference/PreferenceGroupKt;->get(Landroid/preference/PreferenceGroup;I)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final forEach(Landroid/preference/PreferenceGroup;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/preference/Preference;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 71
    invoke-static {p0, v1}, Landroidx/core/preference/PreferenceGroupKt;->get(Landroid/preference/PreferenceGroup;I)Landroid/preference/Preference;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final forEachIndexed(Landroid/preference/PreferenceGroup;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/preference/Preference;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1}, Landroidx/core/preference/PreferenceGroupKt;->get(Landroid/preference/PreferenceGroup;I)Landroid/preference/Preference;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final get(Landroid/preference/PreferenceGroup;I)Landroid/preference/Preference;
    .locals 3
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final get(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 0
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    const-string p1, "findPreference(key)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getSize(Landroid/preference/PreferenceGroup;)I
    .locals 0
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 60
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    return p0
.end method

.method public static final isEmpty(Landroid/preference/PreferenceGroup;)Z
    .locals 0
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 93
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNotEmpty(Landroid/preference/PreferenceGroup;)Z
    .locals 0
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 94
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final iterator(Landroid/preference/PreferenceGroup;)Ljava/util/Iterator;
    .locals 1
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 83
    new-instance v0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;

    invoke-direct {v0, p0}, Landroidx/core/preference/PreferenceGroupKt$iterator$1;-><init>(Landroid/preference/PreferenceGroup;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public static final minusAssign(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 56
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public static final plusAssign(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .param p0    # Landroid/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 51
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

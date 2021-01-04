.class public final Landroidx/core/preference/PreferenceGroupKt$iterator$1;
.super Ljava/lang/Object;
.source "PreferenceGroup.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/preference/PreferenceGroupKt;->iterator(Landroid/preference/PreferenceGroup;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/preference/Preference;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferenceGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceGroup.kt\nandroidx/core/preference/PreferenceGroupKt$iterator$1\n+ 2 PreferenceGroup.kt\nandroidx/core/preference/PreferenceGroupKt\n*L\n1#1,91:1\n60#2:92\n*E\n*S KotlinDebug\n*F\n+ 1 PreferenceGroup.kt\nandroidx/core/preference/PreferenceGroupKt$iterator$1\n*L\n85#1:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\t\u0010\u0006\u001a\u00020\u0007H\u0096\u0002J\t\u0010\u0008\u001a\u00020\u0002H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "androidx/core/preference/PreferenceGroupKt$iterator$1",
        "",
        "Landroid/preference/Preference;",
        "(Landroid/preference/PreferenceGroup;)V",
        "index",
        "",
        "hasNext",
        "",
        "next",
        "remove",
        "",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic receiver$0:Landroid/preference/PreferenceGroup;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 0

    .line 83
    iput-object p1, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->receiver$0:Landroid/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 85
    iget v0, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->index:I

    iget-object v1, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->receiver$0:Landroid/preference/PreferenceGroup;

    .line 92
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroid/preference/Preference;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->receiver$0:Landroid/preference/PreferenceGroup;

    iget v1, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->index:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->next()Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 88
    iget-object v0, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->receiver$0:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->receiver$0:Landroid/preference/PreferenceGroup;

    iget v2, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->index:I

    iget v2, p0, Landroidx/core/preference/PreferenceGroupKt$iterator$1;->index:I

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

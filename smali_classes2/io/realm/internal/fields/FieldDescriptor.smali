.class public abstract Lio/realm/internal/fields/FieldDescriptor;
.super Ljava/lang/Object;
.source "FieldDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;
    }
.end annotation


# static fields
.field public static final ALL_LINK_FIELD_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_LINK_FIELD_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LINK_FIELD_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECT_LINK_FIELD_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMPLE_LINK_FIELD_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnIndices:[J

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private finalColumnName:Ljava/lang/String;

.field private finalColumnType:Lio/realm/RealmFieldType;

.field private nativeTablePointers:[J

.field private final validFinalColumnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field private final validInternalColumnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 53
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/internal/fields/FieldDescriptor;->ALL_LINK_FIELD_TYPES:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 63
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/internal/fields/FieldDescriptor;->SIMPLE_LINK_FIELD_TYPES:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 72
    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/internal/fields/FieldDescriptor;->LIST_LINK_FIELD_TYPE:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 80
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/internal/fields/FieldDescriptor;->OBJECT_LINK_FIELD_TYPE:Ljava/util/Set;

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/internal/fields/FieldDescriptor;->NO_LINK_FIELD_TYPE:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-direct {p0, p1}, Lio/realm/internal/fields/FieldDescriptor;->parseFieldDescription(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/fields/FieldDescriptor;->fields:Ljava/util/List;

    .line 156
    iget-object p1, p0, Lio/realm/internal/fields/FieldDescriptor;->fields:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 160
    iput-object p2, p0, Lio/realm/internal/fields/FieldDescriptor;->validInternalColumnTypes:Ljava/util/Set;

    .line 161
    iput-object p3, p0, Lio/realm/internal/fields/FieldDescriptor;->validFinalColumnTypes:Ljava/util/Set;

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid query: Empty field descriptor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private compileIfNecessary()V
    .locals 1

    .line 291
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnType:Lio/realm/RealmFieldType;

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->fields:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/realm/internal/fields/FieldDescriptor;->compileFieldDescription(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static createFieldDescriptor(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/fields/FieldDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;",
            "Lio/realm/internal/Table;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;)",
            "Lio/realm/internal/fields/FieldDescriptor;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 131
    invoke-interface {p0}, Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 133
    :cond_0
    new-instance v0, Lio/realm/internal/fields/CachedFieldDescriptor;

    invoke-virtual {p1}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_1

    :goto_0
    move-object v5, p3

    goto :goto_1

    :cond_1
    sget-object p3, Lio/realm/internal/fields/FieldDescriptor;->ALL_LINK_FIELD_TYPES:Ljava/util/Set;

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/fields/CachedFieldDescriptor;-><init>(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_4

    .line 132
    :cond_2
    :goto_2
    new-instance v0, Lio/realm/internal/fields/DynamicFieldDescriptor;

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    sget-object p3, Lio/realm/internal/fields/FieldDescriptor;->SIMPLE_LINK_FIELD_TYPES:Ljava/util/Set;

    :goto_3
    invoke-direct {v0, p1, p2, p3, p4}, Lio/realm/internal/fields/DynamicFieldDescriptor;-><init>(Lio/realm/internal/Table;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    :goto_4
    return-object v0
.end method

.method public static varargs createStandardFieldDescriptor(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;
    .locals 1

    .line 101
    new-instance v0, Ljava/util/HashSet;

    .line 106
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p3, 0x0

    .line 101
    invoke-static {p0, p1, p2, p3, v0}, Lio/realm/internal/fields/FieldDescriptor;->createFieldDescriptor(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private parseFieldDescription(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "."

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\."

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 277
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid query: field name must not end with a period (\'.\')"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid query: field name is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/RealmFieldType;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;)V"
        }
    .end annotation

    .line 283
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 284
    :cond_0
    new-instance p4, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    .line 286
    invoke-virtual {p3}, Lio/realm/RealmFieldType;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Invalid query: field \'%s\' in class \'%s\' is of invalid type \'%s\'."

    .line 284
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4
.end method


# virtual methods
.method protected abstract compileFieldDescription(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final getColumnIndices()[J
    .locals 2

    .line 185
    invoke-direct {p0}, Lio/realm/internal/fields/FieldDescriptor;->compileIfNecessary()V

    .line 186
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->columnIndices:[J

    iget-object v1, p0, Lio/realm/internal/fields/FieldDescriptor;->columnIndices:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public final getFinalColumnName()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-direct {p0}, Lio/realm/internal/fields/FieldDescriptor;->compileIfNecessary()V

    .line 211
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFinalColumnType()Lio/realm/RealmFieldType;
    .locals 1

    .line 220
    invoke-direct {p0}, Lio/realm/internal/fields/FieldDescriptor;->compileIfNecessary()V

    .line 221
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnType:Lio/realm/RealmFieldType;

    return-object v0
.end method

.method public final getNativeTablePointers()[J
    .locals 2

    .line 200
    invoke-direct {p0}, Lio/realm/internal/fields/FieldDescriptor;->compileIfNecessary()V

    .line 201
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->nativeTablePointers:[J

    iget-object v1, p0, Lio/realm/internal/fields/FieldDescriptor;->nativeTablePointers:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 172
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final setCompilationResults(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;[J[J)V
    .locals 1

    .line 256
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->validFinalColumnTypes:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->validFinalColumnTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->validFinalColumnTypes:Ljava/util/Set;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/internal/fields/FieldDescriptor;->verifyColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/util/Set;)V

    .line 259
    :cond_0
    iput-object p2, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnName:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnType:Lio/realm/RealmFieldType;

    .line 261
    iput-object p4, p0, Lio/realm/internal/fields/FieldDescriptor;->columnIndices:[J

    .line 262
    iput-object p5, p0, Lio/realm/internal/fields/FieldDescriptor;->nativeTablePointers:[J

    return-void
.end method

.method protected final verifyInternalColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->validInternalColumnTypes:Ljava/util/Set;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/internal/fields/FieldDescriptor;->verifyColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/util/Set;)V

    return-void
.end method

.class public Lcom/polidea/rxandroidble2/internal/util/ObservableUtil;
.super Ljava/lang/Object;
.source "ObservableUtil.java"


# static fields
.field private static final IDENTITY_TRANSFORMER:Lio/reactivex/ObservableTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableTransformer<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/ObservableUtil$1;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/util/ObservableUtil$1;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/util/ObservableUtil;->IDENTITY_TRANSFORMER:Lio/reactivex/ObservableTransformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identityTransformer()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/polidea/rxandroidble2/internal/util/ObservableUtil;->IDENTITY_TRANSFORMER:Lio/reactivex/ObservableTransformer;

    return-object v0
.end method

.method public static justOnNext(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lio/reactivex/Observable;->never()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

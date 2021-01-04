.class public Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
.super Ljava/lang/Object;
.source "RecyclerTouchListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
.implements Lcom/nikhilpanju/recyclerviewenhanced/OnActivityTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;,
        Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$RecyclerTouchListenerHelper;,
        Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;,
        Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowLongClickListener;,
        Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;,
        Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerTouchListener"


# instance fields
.field private ANIMATION_CLOSE:J

.field private ANIMATION_STANDARD:J

.field private LONG_CLICK_DELAY:I

.field act:Landroid/app/Activity;

.field private bgView:Landroid/view/View;

.field private bgViewID:I

.field private bgViewIDLeft:I

.field private bgVisible:Z

.field private bgVisiblePosition:I

.field private bgVisibleView:Landroid/view/View;

.field private bgWidth:I

.field private bgWidthLeft:I

.field private clickable:Z

.field private fadeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fgPartialViewClicked:Z

.field private fgView:Landroid/view/View;

.field private fgViewID:I

.field final handler:Landroid/os/Handler;

.field private heightOutsideRView:I

.field independentViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isFgSwiping:Z

.field private isRViewScrolling:Z

.field private longClickVibrate:Z

.field private longClickable:Z

.field private mBgClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;

.field private mBgClickListenerLeft:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;

.field private mDismissAnimationRefCount:I

.field private mLongClickPerformed:Z

.field mLongPressed:Ljava/lang/Runnable;

.field private mPaused:Z

.field private mRowClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;

.field private mRowLongClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowLongClickListener;

.field private mSwipingSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private maxFlingVel:I

.field private minFlingVel:I

.field optionViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rView:Landroid/support/v7/widget/RecyclerView;

.field private screenHeight:I

.field private swipeable:Z

.field private swipeableLeftOptions:Z

.field private touchSlop:I

.field private touchedPosition:I

.field private touchedView:Landroid/view/View;

.field private touchedX:F

.field private touchedY:F

.field unClickableRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field unSwipeableRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    .line 40
    iput-wide v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    const-wide/16 v0, 0x96

    .line 41
    iput-wide v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_CLOSE:J

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidthLeft:I

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mDismissAnimationRefCount:I

    .line 74
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->clickable:Z

    .line 75
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->longClickable:Z

    .line 76
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeableLeftOptions:Z

    const/16 v0, 0x320

    .line 77
    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->LONG_CLICK_DELAY:I

    .line 79
    new-instance v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;

    invoke-direct {v0, p0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;-><init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)V

    iput-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongPressed:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    .line 40
    iput-wide v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    const-wide/16 v0, 0x96

    .line 41
    iput-wide v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_CLOSE:J

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidthLeft:I

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mDismissAnimationRefCount:I

    .line 74
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->clickable:Z

    .line 75
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->longClickable:Z

    .line 76
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeableLeftOptions:Z

    const/16 v1, 0x320

    .line 77
    iput v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->LONG_CLICK_DELAY:I

    .line 79
    new-instance v1, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;

    invoke-direct {v1, p0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;-><init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)V

    iput-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongPressed:Ljava/lang/Runnable;

    .line 100
    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->act:Landroid/app/Activity;

    .line 101
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchSlop:I

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->minFlingVel:I

    .line 104
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->maxFlingVel:I

    .line 105
    iput-object p2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    .line 106
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    const/4 p1, -0x1

    .line 107
    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    .line 109
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgPartialViewClicked:Z

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unSwipeableRows:Ljava/util/List;

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unClickableRows:Ljava/util/List;

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->independentViews:Ljava/util/List;

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->optionViews:Ljava/util/List;

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    .line 115
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isRViewScrolling:Z

    .line 119
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$2;

    invoke-direct {p2, p0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$2;-><init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->longClickable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongClickPerformed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    return p0
.end method

.method static synthetic access$300(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isRViewScrolling:Z

    return p0
.end method

.method static synthetic access$402(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isRViewScrolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->longClickVibrate:Z

    return p0
.end method

.method static synthetic access$600(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowLongClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mRowLongClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowLongClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mBgClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;

    return-object p0
.end method

.method private animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;J)V
    .locals 6

    .line 407
    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    const/4 v1, 0x0

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v0, :cond_0

    .line 408
    iget-object p2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v4, [F

    iget v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v3

    invoke-static {p2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 410
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 411
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 412
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 413
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFadeViews(Landroid/view/View;FJ)V

    goto :goto_0

    .line 414
    :cond_0
    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    if-ne p2, v0, :cond_1

    .line 415
    iget-object p2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v4, [F

    aput v1, v4, v3

    invoke-static {p2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 417
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 418
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 420
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFadeViews(Landroid/view/View;FJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;JLcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;)V
    .locals 7

    .line 427
    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    const/4 v1, 0x0

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v4, [F

    iget v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v3

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 430
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 432
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFadeViews(Landroid/view/View;FJ)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v4, [F

    aput v1, v4, v3

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 436
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 438
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFadeViews(Landroid/view/View;FJ)V

    .line 441
    :goto_0
    new-instance p1, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;

    invoke-direct {p1, p0, p5, p2, v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;-><init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animateFadeViews(Landroid/view/View;FJ)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 399
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 400
    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 401
    invoke-virtual {v1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getIndependentViewID(Landroid/view/MotionEvent;)I
    .locals 6

    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->independentViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 300
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 303
    iget-object v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    iget-object v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->independentViews:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 304
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->independentViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getOptionViewID(Landroid/view/MotionEvent;)I
    .locals 6

    const/4 v0, 0x0

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->optionViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 288
    iget-object v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    iget-object v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->optionViews:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->optionViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 468
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    if-ge v0, v1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->act:Landroid/app/Activity;

    iget v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgViewID:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->act:Landroid/app/Activity;

    iget v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgViewID:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    .line 473
    :cond_0
    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->screenHeight:I

    iget-object v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->heightOutsideRView:I

    .line 476
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_15

    .line 557
    :pswitch_0
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongClickPerformed:Z

    if-eqz p1, :cond_2

    goto/16 :goto_15

    .line 561
    :cond_2
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_3

    goto/16 :goto_15

    .line 564
    :cond_3
    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz p1, :cond_5

    .line 565
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    if-eqz p1, :cond_4

    .line 567
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iget-wide v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;J)V

    .line 569
    :cond_4
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 570
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 571
    iput-boolean v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    .line 572
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    .line 574
    :cond_5
    iput v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedX:F

    .line 575
    iput v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedY:F

    .line 576
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    .line 577
    iput v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    goto/16 :goto_15

    .line 777
    :pswitch_1
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongClickPerformed:Z

    if-eqz v0, :cond_6

    goto/16 :goto_15

    .line 779
    :cond_6
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mPaused:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-nez v0, :cond_7

    goto/16 :goto_15

    .line 783
    :cond_7
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedX:F

    sub-float/2addr v0, v1

    .line 785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedY:F

    sub-float/2addr p1, v1

    .line 791
    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    if-nez v1, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_9

    .line 792
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 793
    iput-boolean v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    cmpl-float p1, v0, v5

    if-lez p1, :cond_8

    .line 794
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchSlop:I

    goto :goto_0

    :cond_8
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchSlop:I

    neg-int p1, p1

    :goto_0
    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mSwipingSlop:I

    .line 798
    :cond_9
    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unSwipeableRows:Ljava/util/List;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 799
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    if-nez p1, :cond_a

    .line 800
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgViewID:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    .line 801
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 804
    :cond_a
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchSlop:I

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_d

    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-nez p1, :cond_d

    .line 805
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mSwipingSlop:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 808
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    iget v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_1

    :cond_b
    move v2, v0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 809
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 813
    :cond_c
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    if-eqz p1, :cond_11

    .line 814
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 815
    iget-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    sub-float v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_d
    cmpl-float p1, v0, v5

    if-lez p1, :cond_11

    .line 820
    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-eqz p1, :cond_11

    .line 822
    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-eqz p1, :cond_f

    .line 823
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mSwipingSlop:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    int-to-float p1, p1

    sub-float p1, v0, p1

    .line 826
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    cmpl-float v2, p1, v5

    if-lez v2, :cond_e

    goto :goto_3

    :cond_e
    move v5, p1

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 829
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 830
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 831
    iget-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    sub-float v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 837
    :cond_f
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mSwipingSlop:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    int-to-float p1, p1

    sub-float p1, v0, p1

    .line 840
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    cmpl-float v2, p1, v5

    if-lez v2, :cond_10

    goto :goto_5

    :cond_10
    move v5, p1

    :goto_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 843
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 844
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 845
    iget-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    sub-float v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    :cond_11
    return v4

    .line 853
    :cond_12
    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz p1, :cond_37

    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unSwipeableRows:Ljava/util/List;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 854
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchSlop:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_15

    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-nez p1, :cond_15

    .line 855
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mSwipingSlop:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 856
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    if-nez p1, :cond_13

    .line 857
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgViewID:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    .line 859
    :cond_13
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    if-eqz p1, :cond_14

    .line 860
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 863
    :cond_14
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 864
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_15

    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    :cond_15
    return v4

    .line 583
    :pswitch_2
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongClickPerformed:Z

    if-eqz v0, :cond_16

    goto/16 :goto_15

    .line 587
    :cond_16
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v0, :cond_17

    goto/16 :goto_15

    .line 590
    :cond_17
    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    if-gez v0, :cond_18

    goto/16 :goto_15

    .line 603
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedX:F

    sub-float/2addr v0, v7

    .line 612
    iget-boolean v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    if-eqz v7, :cond_1a

    cmpg-float v7, v0, v5

    if-gez v7, :cond_19

    const/4 v7, 0x1

    goto :goto_7

    :cond_19
    const/4 v7, 0x0

    :goto_7
    cmpl-float v8, v0, v5

    if-lez v8, :cond_1b

    const/4 v8, 0x1

    goto :goto_8

    :cond_1a
    const/4 v7, 0x0

    :cond_1b
    const/4 v8, 0x0

    .line 622
    :goto_8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    div-int/2addr v10, v1

    int-to-float v1, v10

    cmpl-float v1, v9, v1

    if-lez v1, :cond_1e

    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    if-eqz v1, :cond_1e

    cmpg-float v1, v0, v5

    if-gez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_9

    :cond_1c
    const/4 v1, 0x0

    :goto_9
    cmpl-float v0, v0, v5

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    goto/16 :goto_10

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 625
    :cond_1e
    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v1, :cond_25

    .line 626
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 627
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v1, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 628
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 629
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 630
    iget-object v10, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 631
    iget v11, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->minFlingVel:I

    int-to-float v11, v11

    cmpg-float v11, v11, v9

    if-gtz v11, :cond_25

    iget v11, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->maxFlingVel:I

    int-to-float v11, v11

    cmpg-float v11, v9, v11

    if-gtz v11, :cond_25

    cmpg-float v9, v10, v9

    if-gez v9, :cond_25

    iget-boolean v9, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    if-eqz v9, :cond_25

    cmpg-float v9, v1, v5

    if-gez v9, :cond_1f

    const/4 v9, 0x1

    goto :goto_a

    :cond_1f
    const/4 v9, 0x0

    :goto_a
    cmpg-float v10, v0, v5

    if-gez v10, :cond_20

    const/4 v10, 0x1

    goto :goto_b

    :cond_20
    const/4 v10, 0x0

    :goto_b
    if-ne v9, v10, :cond_21

    const/4 v9, 0x1

    goto :goto_c

    :cond_21
    const/4 v9, 0x0

    :goto_c
    cmpl-float v1, v1, v5

    if-lez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_d

    :cond_22
    const/4 v1, 0x0

    :goto_d
    cmpl-float v0, v0, v5

    if-lez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_e

    :cond_23
    const/4 v0, 0x0

    :goto_e
    if-ne v1, v0, :cond_24

    const/4 v0, 0x1

    goto :goto_f

    :cond_24
    const/4 v0, 0x0

    :goto_f
    move v1, v9

    goto :goto_10

    :cond_25
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 642
    :goto_10
    iget-boolean v9, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v9, :cond_26

    if-nez v8, :cond_26

    if-eqz v1, :cond_26

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    if-eq v1, v2, :cond_26

    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unSwipeableRows:Ljava/util/List;

    iget v9, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    .line 643
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-nez v1, :cond_26

    .line 645
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    .line 646
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    .line 647
    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mDismissAnimationRefCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mDismissAnimationRefCount:I

    .line 649
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    sget-object v1, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iget-wide v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;J)V

    .line 650
    iput-boolean v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    .line 651
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    iput-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    .line 652
    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    goto/16 :goto_11

    .line 656
    :cond_26
    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v1, :cond_27

    if-nez v7, :cond_27

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    if-eq v0, v2, :cond_27

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unSwipeableRows:Ljava/util/List;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    .line 657
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-eqz v0, :cond_27

    .line 659
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    .line 660
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    .line 662
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mDismissAnimationRefCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mDismissAnimationRefCount:I

    .line 664
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iget-wide v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;J)V

    .line 665
    iput-boolean v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    .line 666
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    .line 667
    iput v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    goto/16 :goto_11

    .line 671
    :cond_27
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v0, :cond_28

    if-eqz v7, :cond_28

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-nez v0, :cond_28

    .line 673
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    .line 674
    iget-object v8, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    sget-object v9, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iget-wide v10, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    new-instance v12, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$5;

    invoke-direct {v12, p0, p1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$5;-><init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Landroid/view/View;)V

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;JLcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;)V

    .line 687
    iput-boolean v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    .line 688
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    .line 689
    iput v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    goto/16 :goto_11

    .line 693
    :cond_28
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v0, :cond_29

    if-eqz v8, :cond_29

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-eqz v0, :cond_29

    .line 695
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iget-wide v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;J)V

    .line 696
    iput-boolean v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    .line 697
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    .line 698
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    goto/16 :goto_11

    .line 702
    :cond_29
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v0, :cond_2a

    if-eqz v8, :cond_2a

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-nez v0, :cond_2a

    .line 704
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iget-wide v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;J)V

    .line 705
    iput-boolean v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    .line 706
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    .line 707
    iput v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    goto/16 :goto_11

    .line 711
    :cond_2a
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v0, :cond_2b

    if-eqz v7, :cond_2b

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-eqz v0, :cond_2b

    .line 713
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iget-wide v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;J)V

    .line 714
    iput-boolean v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    .line 715
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    .line 716
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    goto/16 :goto_11

    :cond_2b
    if-nez v8, :cond_2f

    if-nez v7, :cond_2f

    .line 723
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgPartialViewClicked:Z

    if-eqz v0, :cond_2c

    .line 724
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iget-wide v7, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;J)V

    .line 725
    iput-boolean v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    .line 726
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    .line 727
    iput v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    goto/16 :goto_11

    .line 730
    :cond_2c
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->clickable:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-nez v0, :cond_2d

    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    if-ltz v0, :cond_2d

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unClickableRows:Ljava/util/List;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 731
    invoke-direct {p0, p1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isIndependentViewClicked(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isRViewScrolling:Z

    if-nez v0, :cond_2d

    .line 732
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mRowClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;

    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    invoke-interface {p1, v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;->onRowClicked(I)V

    goto :goto_11

    .line 735
    :cond_2d
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->clickable:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    if-ltz v0, :cond_2e

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unClickableRows:Ljava/util/List;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 736
    invoke-direct {p0, p1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isIndependentViewClicked(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isRViewScrolling:Z

    if-nez v0, :cond_2e

    .line 737
    invoke-direct {p0, p1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->getIndependentViewID(Landroid/view/MotionEvent;)I

    move-result p1

    if-ltz p1, :cond_2f

    .line 739
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mRowClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    invoke-interface {v0, p1, v1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;->onIndependentViewClicked(II)V

    goto :goto_11

    .line 742
    :cond_2e
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgPartialViewClicked:Z

    if-nez v0, :cond_2f

    .line 743
    invoke-direct {p0, p1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->getOptionViewID(Landroid/view/MotionEvent;)I

    move-result p1

    if-ltz p1, :cond_2f

    .line 744
    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    if-ltz v0, :cond_2f

    .line 745
    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    .line 746
    new-instance v1, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$6;-><init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;II)V

    invoke-virtual {p0, v1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->closeVisibleBG(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;)V

    .line 763
    :cond_2f
    :goto_11
    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz p1, :cond_30

    .line 764
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 765
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 767
    :cond_30
    iput v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedX:F

    .line 768
    iput v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedY:F

    .line 769
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    .line 770
    iput v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    .line 771
    iput-boolean v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->isFgSwiping:Z

    .line 772
    iput-object v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    goto/16 :goto_15

    .line 480
    :pswitch_3
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mPaused:Z

    if-eqz v0, :cond_31

    goto/16 :goto_15

    .line 485
    :cond_31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 486
    iget-object v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 487
    new-array v1, v1, [I

    .line 488
    iget-object v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/RecyclerView;->getLocationOnScreen([I)V

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    aget v7, v1, v6

    sub-int/2addr v5, v7

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    aget v1, v1, v4

    sub-int/2addr v7, v1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_33

    .line 499
    iget-object v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 500
    invoke-virtual {v4, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 501
    invoke-virtual {v0, v5, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 502
    iput-object v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    goto :goto_13

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 507
    :cond_33
    :goto_13
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    if-eqz v1, :cond_36

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedX:F

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedY:F

    .line 510
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    .line 511
    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->longClickable:Z

    if-eqz v1, :cond_34

    .line 512
    iput-boolean v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongClickPerformed:Z

    .line 513
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongPressed:Ljava/lang/Runnable;

    iget v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->LONG_CLICK_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    :cond_34
    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v1, :cond_36

    .line 516
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 517
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 518
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    iget v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgViewID:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    .line 519
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    iget v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgViewID:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    .line 521
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    iget-object v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 528
    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    if-eqz v1, :cond_35

    .line 529
    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 532
    iget-object v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 533
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgPartialViewClicked:Z

    goto :goto_14

    .line 535
    :cond_35
    iput-boolean v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgPartialViewClicked:Z

    .line 546
    :cond_36
    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 548
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getHitRect(Landroid/graphics/Rect;)V

    .line 549
    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz p1, :cond_37

    iget-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-eqz p1, :cond_37

    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    if-eq p1, v0, :cond_37

    .line 550
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 551
    invoke-virtual {p0, v3}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->closeVisibleBG(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;)V

    :cond_37
    :goto_15
    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isIndependentViewClicked(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 268
    :goto_0
    iget-object v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->independentViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 270
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    .line 273
    iget-object v5, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    iget-object v6, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->independentViews:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 274
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public closeVisibleBG()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "RecyclerTouchListener"

    const-string v1, "No rows found for which background options are visible"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_CLOSE:J

    .line 351
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 354
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-wide v3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_CLOSE:J

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFadeViews(Landroid/view/View;FJ)V

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    .line 356
    iput-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    const/4 v0, -0x1

    .line 357
    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    return-void
.end method

.method public closeVisibleBG(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;)V
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p1, "RecyclerTouchListener"

    const-string v0, "No rows found for which background options are visible"

    .line 362
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 367
    iget-wide v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_CLOSE:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 368
    new-instance v1, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$3;-><init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 388
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 390
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    iget-wide v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_CLOSE:J

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFadeViews(Landroid/view/View;FJ)V

    .line 391
    iput-boolean v4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    const/4 p1, -0x1

    .line 393
    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    return-void
.end method

.method public getTouchCoordinates(Landroid/view/MotionEvent;)V
    .locals 2

    .line 887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 888
    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->heightOutsideRView:I

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    .line 889
    invoke-virtual {p0, p1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->closeVisibleBG(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;)V

    :cond_0
    return-void
.end method

.method public invalidateSwipeOptions()V
    .locals 1

    const/4 v0, 0x1

    .line 318
    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 153
    invoke-direct {p0, p2}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 158
    invoke-direct {p0, p2}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public openSwipeOptions(I)V
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unSwipeableRows:Ljava/util/List;

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 326
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->act:Landroid/app/Activity;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgViewID:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->act:Landroid/app/Activity;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgViewID:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgWidth:I

    .line 328
    :cond_1
    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->screenHeight:I

    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->heightOutsideRView:I

    .line 330
    :cond_2
    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    .line 331
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->rView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    .line 332
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgViewID:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    .line 333
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgViewID:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    .line 334
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgView:Landroid/view/View;

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 p1, 0x0

    .line 336
    invoke-virtual {p0, p1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->closeVisibleBG(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;)V

    .line 337
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedView:Landroid/view/View;

    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iget-wide v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->ANIMATION_STANDARD:J

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;J)V

    const/4 p1, 0x1

    .line 338
    iput-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisible:Z

    .line 339
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgView:Landroid/view/View;

    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisibleView:Landroid/view/View;

    .line 340
    iget p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->touchedPosition:I

    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgVisiblePosition:I

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public setClickable(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->clickable:Z

    .line 165
    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mRowClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;

    return-object p0
.end method

.method public setClickable(Z)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->clickable:Z

    return-object p0
.end method

.method public setEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mPaused:Z

    return-void
.end method

.method public setFgFade()Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgViewID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgViewID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public varargs setIndependentViews([Ljava/lang/Integer;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 1

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->independentViews:Ljava/util/List;

    return-object p0
.end method

.method public setLongClickable(Z)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->longClickable:Z

    return-object p0
.end method

.method public setLongClickable(ZLcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowLongClickListener;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->longClickable:Z

    .line 176
    iput-object p2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mRowLongClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowLongClickListener;

    .line 177
    iput-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->longClickVibrate:Z

    return-object p0
.end method

.method public varargs setSwipeOptionViews([Ljava/lang/Integer;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 1

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->optionViews:Ljava/util/List;

    return-object p0
.end method

.method public setSwipeable(IILcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 1

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    .line 199
    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgViewID:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgViewID:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "foregroundID does not match previously set ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_1
    :goto_0
    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fgViewID:I

    .line 202
    iput p2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->bgViewID:I

    .line 203
    iput-object p3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->mBgClickListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;

    .line 205
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->act:Landroid/app/Activity;

    instance-of p1, p1, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$RecyclerTouchListenerHelper;

    if-eqz p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->act:Landroid/app/Activity;

    check-cast p1, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$RecyclerTouchListenerHelper;

    invoke-interface {p1, p0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$RecyclerTouchListenerHelper;->setOnActivityTouchListener(Lcom/nikhilpanju/recyclerviewenhanced/OnActivityTouchListener;)V

    .line 208
    :cond_2
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 209
    iget-object p2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->act:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 210
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->screenHeight:I

    return-object p0
.end method

.method public setSwipeable(Z)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->swipeable:Z

    if-nez p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->invalidateSwipeOptions()V

    :cond_0
    return-object p0
.end method

.method public varargs setUnClickableRows([Ljava/lang/Integer;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 1

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unClickableRows:Ljava/util/List;

    return-object p0
.end method

.method public varargs setUnSwipeableRows([Ljava/lang/Integer;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 1

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unSwipeableRows:Ljava/util/List;

    return-object p0
.end method

.method public varargs setViewsToFade([Ljava/lang/Integer;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
    .locals 1

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->fadeViews:Ljava/util/ArrayList;

    return-object p0
.end method

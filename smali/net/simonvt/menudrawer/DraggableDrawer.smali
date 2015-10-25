.class public abstract Lnet/simonvt/menudrawer/DraggableDrawer;
.super Lnet/simonvt/menudrawer/MenuDrawer;
.source "DraggableDrawer.java"


# static fields
.field private static final CLOSE_ENOUGH:I = 0x3

.field private static final DEFAULT_PEEK_DELAY:J = 0x2710L

.field private static final DEFAULT_PEEK_START_DELAY:J = 0x1388L

.field protected static final INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field protected static final MAX_MENU_OVERLAY_ALPHA:I = 0xb9

.field protected static final PEEK_DURATION:I = 0x1388

.field private static final PEEK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STATE_MENU_VISIBLE:Ljava/lang/String; = "net.simonvt.menudrawer.MenuDrawer.menuVisible"


# instance fields
.field protected mCloseEnough:I

.field private final mDragRunnable:Ljava/lang/Runnable;

.field protected mInitialMotionX:F

.field protected mInitialMotionY:F

.field protected mIsDragging:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field private mLayerTypeHardware:Z

.field protected mMaxVelocity:I

.field protected mOffsetMenu:Z

.field protected mOffsetPixels:F

.field protected mPeekDelay:J

.field protected final mPeekRunnable:Ljava/lang/Runnable;

.field protected mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

.field private mPeekStartRunnable:Ljava/lang/Runnable;

.field private mScroller:Lnet/simonvt/menudrawer/Scroller;

.field protected mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/DraggableDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 33
    new-instance v0, Lnet/simonvt/menudrawer/PeekInterpolator;

    invoke-direct {v0}, Lnet/simonvt/menudrawer/PeekInterpolator;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/DraggableDrawer;->PEEK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 161
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/app/Activity;I)V

    .line 68
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$1;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$2;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 108
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionX:F

    .line 113
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionY:F

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 165
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$1;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$2;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 108
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionX:F

    .line 113
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionY:F

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 169
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$1;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$2;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 108
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionX:F

    .line 113
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionY:F

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$1;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$2;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 108
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionX:F

    .line 113
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionY:F

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 174
    return-void
.end method

.method static synthetic access$000(Lnet/simonvt/menudrawer/DraggableDrawer;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/menudrawer/DraggableDrawer;

    .prologue
    .line 18
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawerInvalidate()V

    return-void
.end method

.method static synthetic access$100(Lnet/simonvt/menudrawer/DraggableDrawer;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/menudrawer/DraggableDrawer;

    .prologue
    .line 18
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->postAnimationInvalidate()V

    return-void
.end method

.method private completeAnimation()V
    .locals 2

    .prologue
    .line 366
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Scroller;->abortAnimation()V

    .line 367
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Scroller;->getFinalX()I

    move-result v0

    .line 368
    .local v0, "finalX":I
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 369
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 370
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 371
    return-void

    .line 369
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private completePeek()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/Scroller;->abortAnimation()V

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 483
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 484
    return-void
.end method

.method private peekDrawerInvalidate()V
    .locals 6

    .prologue
    .line 451
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 452
    iget v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v0, v2

    .line 453
    .local v0, "oldX":I
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->getCurrX()I

    move-result v1

    .line 454
    .local v1, "x":I
    if-eq v1, v0, :cond_0

    int-to-float v2, v1

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 456
    :cond_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 457
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 472
    .end local v0    # "oldX":I
    .end local v1    # "x":I
    :goto_0
    return-void

    .line 460
    .restart local v0    # "oldX":I
    .restart local v1    # "x":I
    :cond_1
    iget-wide v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 461
    new-instance v2, Lnet/simonvt/menudrawer/DraggableDrawer$4;

    invoke-direct {v2, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$4;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    .line 467
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekDelay:J

    invoke-virtual {p0, v2, v3, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    .end local v0    # "oldX":I
    .end local v1    # "x":I
    :cond_2
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->completePeek()V

    goto :goto_0
.end method

.method private postAnimationInvalidate()V
    .locals 3

    .prologue
    .line 421
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    iget v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v0, v2

    .line 423
    .local v0, "oldX":I
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->getCurrX()I

    move-result v1

    .line 425
    .local v1, "x":I
    if-eq v1, v0, :cond_0

    int-to-float v2, v1

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 426
    :cond_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->getFinalX()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 427
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 433
    .end local v0    # "oldX":I
    .end local v1    # "x":I
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->completeAnimation()V

    goto :goto_0
.end method

.method private stopLayerTranslation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 321
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLayerTypeHardware:Z

    if-eqz v0, :cond_0

    .line 322
    iput-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLayerTypeHardware:Z

    .line 323
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 324
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 326
    :cond_0
    return-void
.end method

.method private supportGetTranslationX(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 593
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    .line 596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportGetTranslationY(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected animateOffsetTo(IIZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "velocity"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->endDrag()V

    .line 382
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->endPeek()V

    .line 384
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v1, v0

    .line 385
    .local v1, "startX":I
    sub-int v3, p1, v1

    .line 386
    .local v3, "dx":I
    if-eqz v3, :cond_0

    if-nez p3, :cond_2

    .line 387
    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 388
    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 389
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 415
    :goto_1
    return-void

    .line 388
    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    .line 395
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 396
    if-lez p2, :cond_3

    .line 397
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v4, v3

    int-to-float v6, p2

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 402
    .local v5, "duration":I
    :goto_2
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMaxAnimationDuration:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 404
    if-lez v3, :cond_4

    .line 405
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 406
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    .line 412
    :goto_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->startLayerTranslation()V

    .line 414
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->postAnimationInvalidate()V

    goto :goto_1

    .line 399
    .end local v5    # "duration":I
    :cond_3
    const/high16 v0, 0x44160000    # 600.0f

    int-to-float v4, v3

    iget v6, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuSize:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v5, v0

    .restart local v5    # "duration":I
    goto :goto_2

    .line 408
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 409
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    goto :goto_3
.end method

.method protected canChildScrollHorizontally(Landroid/view/View;ZIII)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 526
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object/from16 v15, p1

    .line 527
    check-cast v15, Landroid/view/ViewGroup;

    .line 529
    .local v15, "group":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 531
    .local v14, "count":I
    add-int/lit8 v16, v14, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_1

    .line 532
    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 534
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v11, v4, v6

    .line 535
    .local v11, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v12, v4, v6

    .line 536
    .local v12, "childRight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v13, v4, v6

    .line 537
    .local v13, "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v10, v4, v6

    .line 539
    .local v10, "childBottom":I
    move/from16 v0, p4

    if-lt v0, v11, :cond_0

    move/from16 v0, p4

    if-ge v0, v12, :cond_0

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    move/from16 v0, p5

    if-ge v0, v10, :cond_0

    const/4 v6, 0x1

    sub-int v8, p4, v11

    sub-int v9, p5, v13

    move-object/from16 v4, p0

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lnet/simonvt/menudrawer/DraggableDrawer;->canChildScrollHorizontally(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    const/4 v4, 0x1

    .line 546
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :goto_1
    return v4

    .line 531
    .restart local v5    # "child":Landroid/view/View;
    .restart local v10    # "childBottom":I
    .restart local v11    # "childLeft":I
    .restart local v12    # "childRight":I
    .restart local v13    # "childTop":I
    .restart local v14    # "count":I
    .restart local v15    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "i":I
    :cond_0
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 546
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v4, v0, v1, v2, v3}, Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;->isViewDraggable(Landroid/view/View;III)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected canChildScrollVertically(Landroid/view/View;ZIII)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 560
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object/from16 v15, p1

    .line 561
    check-cast v15, Landroid/view/ViewGroup;

    .line 563
    .local v15, "group":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 565
    .local v14, "count":I
    add-int/lit8 v16, v14, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_1

    .line 566
    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 568
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v11, v4, v6

    .line 569
    .local v11, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v12, v4, v6

    .line 570
    .local v12, "childRight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v13, v4, v6

    .line 571
    .local v13, "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v10, v4, v6

    .line 573
    .local v10, "childBottom":I
    move/from16 v0, p4

    if-lt v0, v11, :cond_0

    move/from16 v0, p4

    if-ge v0, v12, :cond_0

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    move/from16 v0, p5

    if-ge v0, v10, :cond_0

    const/4 v6, 0x1

    sub-int v8, p4, v11

    sub-int v9, p5, v13

    move-object/from16 v4, p0

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lnet/simonvt/menudrawer/DraggableDrawer;->canChildScrollVertically(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    const/4 v4, 0x1

    .line 580
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :goto_1
    return v4

    .line 565
    .restart local v5    # "child":Landroid/view/View;
    .restart local v10    # "childBottom":I
    .restart local v11    # "childLeft":I
    .restart local v12    # "childRight":I
    .restart local v13    # "childTop":I
    .restart local v14    # "count":I
    .restart local v15    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "i":I
    :cond_0
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 580
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v4, v0, v1, v2, v3}, Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;->isViewDraggable(Landroid/view/View;III)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 624
    invoke-super {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 625
    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v0, v1

    .line 627
    .local v0, "offsetPixels":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->drawMenuOverlay(Landroid/graphics/Canvas;I)V

    .line 628
    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDropShadowEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->drawDropShadow(Landroid/graphics/Canvas;I)V

    .line 629
    :cond_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->drawIndicator(Landroid/graphics/Canvas;I)V

    .line 630
    :cond_2
    return-void
.end method

.method protected abstract drawDropShadow(Landroid/graphics/Canvas;I)V
.end method

.method protected abstract drawIndicator(Landroid/graphics/Canvas;I)V
.end method

.method protected abstract drawMenuOverlay(Landroid/graphics/Canvas;I)V
.end method

.method protected endDrag()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mIsDragging:Z

    .line 347
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 351
    :cond_0
    return-void
.end method

.method protected endPeek()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 491
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 493
    return-void
.end method

.method public getOffsetMenuEnabled()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    return v0
.end method

.method public getTouchBezelSize()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchBezelSize:I

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchMode:I

    return v0
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 181
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchSlop:I

    .line 182
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMaxVelocity:I

    .line 184
    new-instance v1, Lnet/simonvt/menudrawer/Scroller;

    sget-object v2, Lnet/simonvt/menudrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Lnet/simonvt/menudrawer/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    .line 185
    new-instance v1, Lnet/simonvt/menudrawer/Scroller;

    sget-object v2, Lnet/simonvt/menudrawer/DraggableDrawer;->PEEK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Lnet/simonvt/menudrawer/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    .line 187
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mCloseEnough:I

    .line 188
    return-void
.end method

.method protected abstract initPeekScroller()V
.end method

.method protected isCloseEnough()Z
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mCloseEnough:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isContentTouch(Landroid/view/MotionEvent;)Z
.end method

.method public isMenuVisible()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuVisible:Z

    return v0
.end method

.method protected abstract onDownAllowDrag(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract onMoveAllowDrag(Landroid/view/MotionEvent;F)Z
.end method

.method protected abstract onMoveEvent(F)V
.end method

.method protected abstract onOffsetPixelsChanged(I)V
.end method

.method protected abstract onUpEvent(Landroid/view/MotionEvent;)V
.end method

.method public peekDrawer()V
    .locals 4

    .prologue
    .line 225
    const-wide/16 v0, 0x1388

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawer(JJ)V

    .line 226
    return-void
.end method

.method public peekDrawer(J)V
    .locals 2
    .param p1, "delay"    # J

    .prologue
    .line 229
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawer(JJ)V

    .line 230
    return-void
.end method

.method public peekDrawer(JJ)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "delay"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 233
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startDelay must be zero or larger."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    cmp-long v0, p3, v1

    if-gez v0, :cond_1

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay must be zero or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 243
    iput-wide p3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekDelay:J

    .line 244
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$3;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$3;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    .line 250
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 662
    invoke-super {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->restoreState(Landroid/os/Parcelable;)V

    move-object v1, p1

    .line 663
    check-cast v1, Landroid/os/Bundle;

    .line 664
    .local v1, "state":Landroid/os/Bundle;
    const-string v3, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 665
    .local v0, "menuOpen":Z
    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->openMenu(Z)V

    .line 670
    :goto_0
    if-eqz v0, :cond_0

    const/16 v2, 0x8

    :cond_0
    iput v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    .line 671
    return-void

    .line 668
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    goto :goto_0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 657
    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 658
    .local v0, "menuVisible":Z
    :goto_0
    const-string v1, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    return-void

    .line 657
    .end local v0    # "menuVisible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHardwareLayerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 254
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mHardwareLayersEnabled:Z

    if-eq p1, v0, :cond_0

    .line 255
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mHardwareLayersEnabled:Z

    .line 256
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setHardwareLayersEnabled(Z)V

    .line 257
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setHardwareLayersEnabled(Z)V

    .line 258
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 260
    :cond_0
    return-void
.end method

.method public setMenuSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 203
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuSize:I

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuSizeSet:Z

    .line 205
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 206
    :cond_0
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 208
    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->requestLayout()V

    .line 209
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->invalidate()V

    .line 210
    return-void
.end method

.method public setOffsetMenuEnabled(Z)V
    .locals 1
    .param p1, "offsetMenu"    # Z

    .prologue
    .line 213
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    if-eq p1, v0, :cond_0

    .line 214
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 215
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->requestLayout()V

    .line 216
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->invalidate()V

    .line 218
    :cond_0
    return-void
.end method

.method protected setOffsetPixels(F)V
    .locals 3
    .param p1, "offsetPixels"    # F

    .prologue
    .line 287
    iget v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v1, v2

    .line 288
    .local v1, "oldOffset":I
    float-to-int v0, p1

    .line 290
    .local v0, "newOffset":I
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    .line 292
    if-eq v0, v1, :cond_0

    .line 293
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->onOffsetPixelsChanged(I)V

    .line 294
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuVisible:Z

    .line 296
    :cond_0
    return-void

    .line 294
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTouchBezelSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 274
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchBezelSize:I

    .line 275
    return-void
.end method

.method public setTouchMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 267
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchMode:I

    if-eq v0, p1, :cond_0

    .line 268
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchMode:I

    .line 269
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->updateTouchAreaSize()V

    .line 271
    :cond_0
    return-void
.end method

.method protected startLayerTranslation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 309
    sget-boolean v0, Lnet/simonvt/menudrawer/DraggableDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mHardwareLayersEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLayerTypeHardware:Z

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLayerTypeHardware:Z

    .line 311
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 312
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 314
    :cond_0
    return-void
.end method

.method protected startPeek()V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->initPeekScroller()V

    .line 441
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->startLayerTranslation()V

    .line 442
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawerInvalidate()V

    .line 443
    return-void
.end method

.method protected stopAnimation()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 358
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/Scroller;->abortAnimation()V

    .line 359
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 360
    return-void
.end method

.method public toggleMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 191
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->closeMenu(Z)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 194
    :cond_3
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->openMenu(Z)V

    goto :goto_0
.end method

.method protected updateTouchAreaSize()V
    .locals 2

    .prologue
    .line 332
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 333
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchBezelSize:I

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchSize:I

    .line 339
    :goto_0
    return-void

    .line 334
    :cond_0
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 335
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchSize:I

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchSize:I

    goto :goto_0
.end method

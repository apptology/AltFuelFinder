.class public abstract Lnet/simonvt/menudrawer/MenuDrawer;
.super Landroid/view/ViewGroup;
.source "MenuDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/menudrawer/MenuDrawer$3;,
        Lnet/simonvt/menudrawer/MenuDrawer$SavedState;,
        Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;,
        Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DELAY:I = 0x10

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x258

.field private static final DEFAULT_DRAG_BEZEL_DP:I = 0x18

.field private static final DEFAULT_DROP_SHADOW_DP:I = 0x6

.field static final INDICATOR_ANIM_DURATION:I = 0x320

.field public static final MENU_DRAG_CONTENT:I = 0x0

.field public static final MENU_DRAG_WINDOW:I = 0x1

.field protected static final SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_CLOSING:I = 0x1

.field public static final STATE_DRAGGING:I = 0x2

.field public static final STATE_OPEN:I = 0x8

.field public static final STATE_OPENING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MenuDrawer"

.field public static final TOUCH_MODE_BEZEL:I = 0x1

.field public static final TOUCH_MODE_FULLSCREEN:I = 0x2

.field public static final TOUCH_MODE_NONE:I

.field static final USE_TRANSLATIONS:Z


# instance fields
.field protected mActiveIndicator:Landroid/graphics/Bitmap;

.field protected mActivePosition:I

.field protected final mActiveRect:Landroid/graphics/Rect;

.field protected mActiveView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAllowIndicatorAnimation:Z

.field protected mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

.field private mDragMode:I

.field protected mDrawerState:I

.field protected mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDropShadowEnabled:Z

.field protected mDropShadowSize:I

.field protected mHardwareLayersEnabled:Z

.field protected mIndicatorAnimating:Z

.field protected mIndicatorOffset:F

.field private mIndicatorRunnable:Ljava/lang/Runnable;

.field private mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

.field protected mIndicatorStartPos:I

.field protected mMaxAnimationDuration:I

.field protected mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

.field protected mMenuOverlay:Landroid/graphics/drawable/Drawable;

.field protected mMenuSize:I

.field protected mMenuSizeSet:Z

.field private mMenuView:Landroid/view/View;

.field protected mMenuVisible:Z

.field private mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

.field protected mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

.field private mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected mState:Landroid/os/Bundle;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected mTouchBezelSize:I

.field protected mTouchMode:I

.field protected mTouchSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    .line 153
    new-instance v0, Lnet/simonvt/menudrawer/SmoothInterpolator;

    invoke-direct {v0}, Lnet/simonvt/menudrawer/SmoothInterpolator;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 470
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    .line 471
    iput p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    .line 472
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 476
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 479
    sget v0, Lcom/biznessapps/layout/R$attr;->menuDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 480
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 483
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;

    .line 240
    iput v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    .line 251
    iput v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    .line 273
    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchMode:I

    .line 278
    iput-boolean v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mHardwareLayersEnabled:Z

    .line 293
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer$1;-><init>(Lnet/simonvt/menudrawer/MenuDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    .line 323
    const/16 v0, 0x258

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 719
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer$2;-><init>(Lnet/simonvt/menudrawer/MenuDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 484
    invoke-virtual {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 485
    return-void
.end method

.method static synthetic access$000(Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/menudrawer/MenuDrawer;

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->animateIndicatorInvalidate()V

    return-void
.end method

.method static synthetic access$100(Lnet/simonvt/menudrawer/MenuDrawer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/menudrawer/MenuDrawer;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private animateIndicatorInvalidate()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/FloatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/FloatScroller;->getCurr()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorOffset:F

    .line 757
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 759
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/FloatScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 766
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->completeAnimatingIndicator()V

    goto :goto_0
.end method

.method public static attach(Landroid/app/Activity;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;I)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragMode"    # I

    .prologue
    .line 349
    sget-object v0, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    invoke-static {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;ILnet/simonvt/menudrawer/Position;)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;ILnet/simonvt/menudrawer/Position;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragMode"    # I
    .param p2, "position"    # Lnet/simonvt/menudrawer/Position;

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;ILnet/simonvt/menudrawer/Position;Z)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;ILnet/simonvt/menudrawer/Position;Z)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragMode"    # I
    .param p2, "position"    # Lnet/simonvt/menudrawer/Position;
    .param p3, "attachStatic"    # Z

    .prologue
    .line 387
    invoke-static {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->createMenuDrawer(Landroid/app/Activity;ILnet/simonvt/menudrawer/Position;Z)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    .line 388
    .local v0, "menuDrawer":Lnet/simonvt/menudrawer/MenuDrawer;
    sget v1, Lcom/biznessapps/layout/R$id;->md__drawer:I

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setId(I)V

    .line 390
    packed-switch p1, :pswitch_data_0

    .line 400
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown menu mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :pswitch_0
    invoke-static {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attachToContent(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer;)V

    .line 403
    :goto_0
    return-object v0

    .line 396
    :pswitch_1
    invoke-static {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attachToDecor(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer;)V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/Position;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "position"    # Lnet/simonvt/menudrawer/Position;

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;ILnet/simonvt/menudrawer/Position;)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    return-object v0
.end method

.method private static attachToContent(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuDrawer"    # Lnet/simonvt/menudrawer/MenuDrawer;

    .prologue
    const/4 v2, -0x1

    .line 449
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 450
    .local v0, "content":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 451
    invoke-virtual {v0, p1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 452
    return-void
.end method

.method private static attachToDecor(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuDrawer"    # Lnet/simonvt/menudrawer/MenuDrawer;

    .prologue
    const/4 v3, -0x1

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 459
    .local v1, "decorView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 461
    .local v0, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 462
    invoke-virtual {v1, p1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 464
    iget-object v2, p1, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    return-void
.end method

.method private completeAnimatingIndicator()V
    .locals 1

    .prologue
    .line 772
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorOffset:F

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 774
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 775
    return-void
.end method

.method private static createMenuDrawer(Landroid/app/Activity;ILnet/simonvt/menudrawer/Position;Z)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragMode"    # I
    .param p2, "position"    # Lnet/simonvt/menudrawer/Position;
    .param p3, "attachStatic"    # Z

    .prologue
    .line 411
    if-eqz p3, :cond_0

    .line 412
    sget-object v0, Lnet/simonvt/menudrawer/MenuDrawer$3;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p2}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position must be one of LEFT, TOP, RIGHT or BOTTOM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_0
    new-instance v0, Lnet/simonvt/menudrawer/LeftStaticDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/LeftStaticDrawer;-><init>(Landroid/app/Activity;I)V

    .line 434
    :goto_0
    return-object v0

    .line 416
    :pswitch_1
    new-instance v0, Lnet/simonvt/menudrawer/RightStaticDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/RightStaticDrawer;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 418
    :pswitch_2
    new-instance v0, Lnet/simonvt/menudrawer/TopStaticDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/TopStaticDrawer;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 420
    :pswitch_3
    new-instance v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/BottomStaticDrawer;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 426
    :cond_0
    sget-object v0, Lnet/simonvt/menudrawer/MenuDrawer$3;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p2}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position must be one of LEFT, TOP, RIGHT or BOTTOM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :pswitch_4
    new-instance v0, Lnet/simonvt/menudrawer/LeftDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/LeftDrawer;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 430
    :pswitch_5
    new-instance v0, Lnet/simonvt/menudrawer/RightDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/RightDrawer;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 432
    :pswitch_6
    new-instance v0, Lnet/simonvt/menudrawer/TopDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/TopDrawer;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 434
    :pswitch_7
    new-instance v0, Lnet/simonvt/menudrawer/BottomDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/BottomDrawer;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 426
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private startAnimatingIndicator()V
    .locals 4

    .prologue
    .line 737
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getIndicatorStartPos()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorStartPos:I

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 739
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lnet/simonvt/menudrawer/FloatScroller;->startScroll(FFI)V

    .line 741
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->animateIndicatorInvalidate()V

    .line 742
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 556
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getChildCount()I

    move-result v0

    .line 557
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 558
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1, p1, p2, p3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 565
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getChildCount()I

    move-result v0

    .line 563
    if-nez v0, :cond_1

    .line 564
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1, p1, p2, p3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 568
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MenuDrawer can only hold two child views"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public closeMenu()V
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->closeMenu(Z)V

    .line 633
    return-void
.end method

.method public abstract closeMenu(Z)V
.end method

.method protected dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 572
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 1085
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setPadding(IIII)V

    .line 1088
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getAllowIndicatorAnimation()Z
    .locals 1

    .prologue
    .line 713
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    return v0
.end method

.method public getContentContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 921
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getDrawerState()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    return v0
.end method

.method public getDropShadow()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected abstract getIndicatorStartPos()I
.end method

.method public getMenuContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    return-object v0
.end method

.method public getMenuSize()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuSize:I

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getOffsetMenuEnabled()Z
.end method

.method public abstract getTouchBezelSize()I
.end method

.method public abstract getTouchMode()I
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 488
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setWillNotDraw(Z)V

    .line 489
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setFocusable(Z)V

    .line 491
    sget-object v6, Lcom/biznessapps/layout/R$styleable;->MenuDrawer:[I

    sget v7, Lcom/biznessapps/layout/R$attr;->menuDrawerStyle:I

    sget v8, Lcom/biznessapps/layout/R$style;->Widget_MenuDrawer:I

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 494
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 495
    .local v1, "contentBackground":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 497
    .local v5, "menuBackground":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuSize:I

    .line 498
    iget v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuSize:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuSizeSet:Z

    .line 500
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 501
    .local v4, "indicatorResId":I
    if-eqz v4, :cond_0

    .line 502
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    .line 505
    :cond_0
    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 507
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 509
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 510
    const/4 v6, 0x6

    const/high16 v7, -0x1000000

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 511
    .local v3, "dropShadowColor":I
    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowColor(I)V

    .line 514
    .end local v3    # "dropShadowColor":I
    :cond_1
    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lnet/simonvt/menudrawer/MenuDrawer;->dpToPx(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowSize:I

    .line 517
    const/16 v6, 0x8

    const/16 v7, 0x18

    invoke-virtual {p0, v7}, Lnet/simonvt/menudrawer/MenuDrawer;->dpToPx(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchBezelSize:I

    .line 520
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 522
    const/16 v6, 0xa

    const/16 v7, 0x258

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 524
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 526
    new-instance v6, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-direct {v6, p1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 527
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    sget v7, Lcom/biznessapps/layout/R$id;->md__menu:I

    invoke-virtual {v6, v7}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setId(I)V

    .line 528
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v6, v5}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v7, -0x1

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 531
    new-instance v6, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;

    invoke-direct {v6, p1}, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 532
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    sget v7, Lcom/biznessapps/layout/R$id;->md__content:I

    invoke-virtual {v6, v7}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setId(I)V

    .line 533
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v6, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v7, -0x1

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setClipChildren(Z)V

    .line 543
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 544
    .local v2, "currentapiVersion":I
    const/16 v6, 0xb

    if-lt v2, v6, :cond_2

    .line 545
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 549
    :cond_2
    new-instance v6, Lnet/simonvt/menudrawer/ColorDrawable;

    const/high16 v7, -0x1000000

    invoke-direct {v6, v7}, Lnet/simonvt/menudrawer/ColorDrawable;-><init>(I)V

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    .line 551
    new-instance v6, Lnet/simonvt/menudrawer/FloatScroller;

    sget-object v7, Lnet/simonvt/menudrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v6, v7}, Lnet/simonvt/menudrawer/FloatScroller;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    .line 552
    return-void

    .line 498
    .end local v2    # "currentapiVersion":I
    .end local v4    # "indicatorResId":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public abstract isMenuVisible()Z
.end method

.method protected isViewDescendant(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 577
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 578
    if-ne v0, p0, :cond_0

    .line 579
    const/4 v1, 0x1

    .line 585
    :goto_1
    return v1

    .line 582
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 585
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected logDrawerState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1022
    packed-switch p1, :pswitch_data_0

    .line 1044
    :pswitch_0
    const-string v0, "MenuDrawer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DrawerState] Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :goto_0
    return-void

    .line 1024
    :pswitch_1
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_CLOSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1028
    :pswitch_2
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_CLOSING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    :pswitch_3
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_DRAGGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1036
    :pswitch_4
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_OPENING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1040
    :pswitch_5
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_OPEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1022
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 590
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 591
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 592
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 597
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 598
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1129
    move-object v0, p1

    check-cast v0, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    .line 1130
    .local v0, "savedState":Lnet/simonvt/menudrawer/MenuDrawer$SavedState;
    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1132
    iget-object v1, v0, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->restoreState(Landroid/os/Parcelable;)V

    .line 1133
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1117
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1118
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    invoke-direct {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1120
    .local v0, "state":Lnet/simonvt/menudrawer/MenuDrawer$SavedState;
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1121
    :cond_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1123
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    iput-object v2, v0, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    .line 1124
    return-object v0
.end method

.method public openMenu()V
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->openMenu(Z)V

    .line 619
    return-void
.end method

.method public abstract openMenu(Z)V
.end method

.method public abstract peekDrawer()V
.end method

.method public abstract peekDrawer(J)V
.end method

.method public abstract peekDrawer(JJ)V
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1080
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1081
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    .line 1112
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "in":Landroid/os/Parcelable;
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1113
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1098
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1099
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    return-object v0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1104
    return-void
.end method

.method public setActiveView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setActiveView(Landroid/view/View;I)V

    .line 673
    return-void
.end method

.method public setActiveView(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 685
    .local v0, "oldView":Landroid/view/View;
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 686
    iput p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActivePosition:I

    .line 688
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 689
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->startAnimatingIndicator()V

    .line 692
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 693
    return-void
.end method

.method public setAllowIndicatorAnimation(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 701
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eq p1, v0, :cond_0

    .line 702
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 703
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->completeAnimatingIndicator()V

    .line 705
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 972
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 982
    :goto_0
    return-void

    .line 974
    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 975
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 979
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    .line 972
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 990
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1000
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 1010
    :goto_0
    return-void

    .line 1002
    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1003
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1007
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setDrawerState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1013
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    if-eq p1, v1, :cond_0

    .line 1014
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    .line 1015
    .local v0, "oldState":I
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    .line 1016
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v1, v0, p1}, Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerStateChange(II)V

    .line 1019
    .end local v0    # "oldState":I
    :cond_0
    return-void
.end method

.method public setDropShadow(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 846
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadow(Landroid/graphics/drawable/Drawable;)V

    .line 847
    return-void
.end method

.method public setDropShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 836
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 837
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 838
    return-void
.end method

.method public abstract setDropShadowColor(I)V
.end method

.method public setDropShadowEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 819
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 820
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 821
    return-void
.end method

.method public setDropShadowSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 862
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowSize:I

    .line 863
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 864
    return-void
.end method

.method public abstract setHardwareLayerEnabled(Z)V
.end method

.method public setMaxAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 900
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 901
    return-void
.end method

.method public abstract setMenuSize(I)V
.end method

.method public setMenuView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 932
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 933
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;)V

    .line 934
    return-void
.end method

.method public setMenuView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 942
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    return-void
.end method

.method public setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 952
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 953
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 954
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    return-void
.end method

.method public abstract setOffsetMenuEnabled(Z)V
.end method

.method public setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    .prologue
    .line 801
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 802
    return-void
.end method

.method public setOnInterceptMoveEventListener(Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    .prologue
    .line 810
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    .line 811
    return-void
.end method

.method public abstract setTouchBezelSize(I)V
.end method

.method public abstract setTouchMode(I)V
.end method

.method public toggleMenu()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->toggleMenu(Z)V

    .line 605
    return-void
.end method

.method public abstract toggleMenu(Z)V
.end method

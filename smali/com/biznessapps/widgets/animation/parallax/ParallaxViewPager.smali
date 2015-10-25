.class public Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ParallaxViewPager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;,
        Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$MyScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY:I = 0x1388

.field private static final DEFAULT_DURATION:I = 0x3e8

.field private static final MANUAL_DURATION:I = 0x64

.field private static final TRANSFORMER_BORDER:I = 0x0

.field private static final TRANSFORMER_SPEED:F = 0.6f


# instance fields
.field private detector:Landroid/support/v4/view/GestureDetectorCompat;

.field private duration:I

.field private pager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

.field private timer:Ljava/util/Timer;

.field private touchState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->pager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .line 42
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->initScroller()V

    .line 43
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->initTransformer()V

    .line 44
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->initAutoFlipper()V

    .line 45
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->initManualFlipper()V

    .line 47
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->detector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->detector:Landroid/support/v4/view/GestureDetectorCompat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->touchState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->touchState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setManualDuration()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->pager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->getDuration()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setDefaultDuration()V

    return-void
.end method

.method private declared-synchronized getDuration()I
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->duration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initAutoFlipper()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->touchState:Z

    .line 90
    return-void
.end method

.method private initManualFlipper()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;-><init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)V

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    return-void
.end method

.method private initScroller()V
    .locals 5

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setDefaultDuration()V

    .line 68
    :try_start_0
    const-class v2, Landroid/support/v4/view/ViewPager;

    .line 69
    .local v2, "viewpager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 70
    .local v1, "scrollerField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    new-instance v3, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$MyScroller;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$MyScroller;-><init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;Landroid/content/Context;)V

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "scrollerField":Ljava/lang/reflect/Field;
    .end local v2    # "viewpager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-class v3, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scroller error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initTransformer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;

    sget v1, Lcom/biznessapps/layout/R$id;->imageView:I

    invoke-direct {v0, v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;-><init>(I)V

    .line 82
    .local v0, "pt":Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;
    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->setBorder(I)V

    .line 83
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->setSpeed(F)V

    .line 85
    invoke-virtual {p0, v2, v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 86
    return-void
.end method

.method private declared-synchronized setDefaultDuration()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    const/16 v0, 0x3e8

    :try_start_0
    iput v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->duration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setManualDuration()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    const/16 v0, 0x64

    :try_start_0
    iput v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->duration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->performClick()Z

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public startAutoFlipTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1388

    .line 51
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->timer:Ljava/util/Timer;

    .line 52
    new-instance v1, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;-><init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;)V

    .line 53
    .local v1, "flipNext":Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$PagerAutoTask;
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->timer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 54
    return-void
.end method

.method public stopAutoFlipTimer()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 60
    :cond_0
    return-void
.end method

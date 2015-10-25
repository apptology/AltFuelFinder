.class public Lcom/biznessapps/widgets/TouchImageView;
.super Landroid/widget/ImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/TouchImageView$1;,
        Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;,
        Lcom/biznessapps/widgets/TouchImageView$CompatScroller;,
        Lcom/biznessapps/widgets/TouchImageView$Fling;,
        Lcom/biznessapps/widgets/TouchImageView$DoubleTapZoom;,
        Lcom/biznessapps/widgets/TouchImageView$ScaleListener;,
        Lcom/biznessapps/widgets/TouchImageView$PrivateOnTouchListener;,
        Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;,
        Lcom/biznessapps/widgets/TouchImageView$GestureListener;,
        Lcom/biznessapps/widgets/TouchImageView$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = "DEBUG"

.field private static final SUPER_MAX_MULTIPLIER:F = 1.25f

.field private static final SUPER_MIN_MULTIPLIER:F = 0.75f


# instance fields
.field private context:Landroid/content/Context;

.field private delayedZoomVariables:Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;

.field private doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private fling:Lcom/biznessapps/widgets/TouchImageView$Fling;

.field private imageRenderedAtLeastOnce:Z

.field private m:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field private normalizedScale:F

.field private onDrawReady:Z

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private state:Lcom/biznessapps/widgets/TouchImageView$State;

.field private superMaxScale:F

.field private superMinScale:F

.field private touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 86
    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 87
    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    .line 91
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 86
    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 87
    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    .line 96
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 86
    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 87
    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    .line 101
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method static synthetic access$1000(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;
    .param p1, "x1"    # Lcom/biznessapps/widgets/TouchImageView$State;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/TouchImageView;->setState(Lcom/biznessapps/widgets/TouchImageView$State;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/biznessapps/widgets/TouchImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/biznessapps/widgets/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/widgets/TouchImageView;FFF)F
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/widgets/TouchImageView;->getFixDragTrans(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/biznessapps/widgets/TouchImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/biznessapps/widgets/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/biznessapps/widgets/TouchImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/biznessapps/widgets/TouchImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fixTrans()V

    return-void
.end method

.method static synthetic access$2000(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/biznessapps/widgets/TouchImageView;DFFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;
    .param p1, "x1"    # D
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # Z

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/biznessapps/widgets/TouchImageView;->scaleImage(DFFZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/biznessapps/widgets/TouchImageView;FFZ)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/widgets/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/biznessapps/widgets/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/biznessapps/widgets/TouchImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method static synthetic access$2600(Lcom/biznessapps/widgets/TouchImageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/biznessapps/widgets/TouchImageView;)[F
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$Fling;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->fling:Lcom/biznessapps/widgets/TouchImageView$Fling;

    return-object v0
.end method

.method static synthetic access$402(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$Fling;)Lcom/biznessapps/widgets/TouchImageView$Fling;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;
    .param p1, "x1"    # Lcom/biznessapps/widgets/TouchImageView$Fling;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView;->fling:Lcom/biznessapps/widgets/TouchImageView$Fling;

    return-object p1
.end method

.method static synthetic access$500(Lcom/biznessapps/widgets/TouchImageView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$State;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->state:Lcom/biznessapps/widgets/TouchImageView$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/widgets/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    return v0
.end method

.method static synthetic access$800(Lcom/biznessapps/widgets/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->minScale:F

    return v0
.end method

.method static synthetic access$900(Lcom/biznessapps/widgets/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 29
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->maxScale:F

    return v0
.end method

.method private compatPostOnAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1233
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/biznessapps/widgets/TouchImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1235
    return-void
.end method

.method private fitImageToView()V
    .locals 23

    .prologue
    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/widgets/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 536
    .local v18, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    .line 543
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 544
    .local v9, "drawableWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 549
    .local v17, "drawableHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    int-to-float v3, v9

    div-float v21, v2, v3

    .line 550
    .local v21, "scaleX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    div-float v22, v2, v3

    .line 552
    .local v22, "scaleY":F
    sget-object v2, Lcom/biznessapps/widgets/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/widgets/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 575
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    :pswitch_0
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v21, v22

    .line 582
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    int-to-float v3, v9

    mul-float v3, v3, v21

    sub-float v19, v2, v3

    .line 583
    .local v19, "redundantXSpace":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v3, v3, v22

    sub-float v20, v2, v3

    .line 584
    .local v20, "redundantYSpace":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    sub-float v2, v2, v19

    move-object/from16 v0, p0

    iput v2, v0, Lcom/biznessapps/widgets/TouchImageView;->matchViewWidth:F

    .line 585
    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    sub-float v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/biznessapps/widgets/TouchImageView;->matchViewHeight:F

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/widgets/TouchImageView;->isZoomed()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/biznessapps/widgets/TouchImageView;->imageRenderedAtLeastOnce:Z

    if-nez v2, :cond_2

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v19, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v20, v7

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 592
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    .line 637
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/widgets/TouchImageView;->fixTrans()V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 558
    .end local v19    # "redundantXSpace":F
    .end local v20    # "redundantYSpace":F
    :pswitch_2
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v22

    move/from16 v21, v22

    .line 559
    goto :goto_1

    .line 562
    :pswitch_3
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v22

    move/from16 v21, v22

    .line 565
    :pswitch_4
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v22

    move/from16 v21, v22

    .line 566
    goto :goto_1

    .line 600
    .restart local v19    # "redundantXSpace":F
    .restart local v20    # "redundantYSpace":F
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->prevMatchViewWidth:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->prevMatchViewHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 601
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/widgets/TouchImageView;->savePreviousImageValues()V

    .line 604
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/biznessapps/widgets/TouchImageView;->matchViewWidth:F

    int-to-float v8, v9

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    mul-float/2addr v7, v8

    aput v7, v2, v3

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/biznessapps/widgets/TouchImageView;->matchViewHeight:F

    move/from16 v0, v17

    int-to-float v8, v0

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    mul-float/2addr v7, v8

    aput v7, v2, v3

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v3, 0x2

    aget v4, v2, v3

    .line 616
    .local v4, "transX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v3, 0x5

    aget v12, v2, v3

    .line 621
    .local v12, "transY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->prevMatchViewWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    mul-float v5, v2, v3

    .line 622
    .local v5, "prevActualWidth":F
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v6

    .line 623
    .local v6, "actualWidth":F
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/biznessapps/widgets/TouchImageView;->prevViewWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/biznessapps/widgets/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 628
    move-object/from16 v0, p0

    iget v2, v0, Lcom/biznessapps/widgets/TouchImageView;->prevMatchViewHeight:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    mul-float v13, v2, v3

    .line 629
    .local v13, "prevActualHeight":F
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F

    move-result v14

    .line 630
    .local v14, "actualHeight":F
    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/biznessapps/widgets/TouchImageView;->prevViewHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    move/from16 v16, v0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/biznessapps/widgets/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    goto/16 :goto_2

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private fixScaleTrans()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 455
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fixTrans()V

    .line 456
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 457
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F

    move-result v0

    iget v1, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 465
    return-void
.end method

.method private fixTrans()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 435
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 436
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v5, 0x2

    aget v2, v4, v5

    .line 437
    .local v2, "transX":F
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v5, 0x5

    aget v3, v4, v5

    .line 439
    .local v3, "transY":F
    iget v4, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/biznessapps/widgets/TouchImageView;->getFixTrans(FFF)F

    move-result v0

    .line 440
    .local v0, "fixTransX":F
    iget v4, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/biznessapps/widgets/TouchImageView;->getFixTrans(FFF)F

    move-result v1

    .line 442
    .local v1, "fixTransY":F
    cmpl-float v4, v0, v6

    if-nez v4, :cond_0

    cmpl-float v4, v1, v6

    if-eqz v4, :cond_1

    .line 443
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 445
    :cond_1
    return-void
.end method

.method private getFixDragTrans(FFF)F
    .locals 1
    .param p1, "delta"    # F
    .param p2, "viewSize"    # F
    .param p3, "contentSize"    # F

    .prologue
    .line 487
    cmpg-float v0, p3, p2

    if-gtz v0, :cond_0

    .line 488
    const/4 p1, 0x0

    .line 490
    .end local p1    # "delta":F
    :cond_0
    return p1
.end method

.method private getFixTrans(FFF)F
    .locals 3
    .param p1, "trans"    # F
    .param p2, "viewSize"    # F
    .param p3, "contentSize"    # F

    .prologue
    .line 470
    cmpg-float v2, p3, p2

    if-gtz v2, :cond_0

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "minTrans":F
    sub-float v0, p2, p3

    .line 479
    .local v0, "maxTrans":F
    :goto_0
    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    .line 480
    neg-float v2, p1

    add-float/2addr v2, v1

    .line 483
    :goto_1
    return v2

    .line 475
    .end local v0    # "maxTrans":F
    .end local v1    # "minTrans":F
    :cond_0
    sub-float v1, p2, p3

    .line 476
    .restart local v1    # "minTrans":F
    const/4 v0, 0x0

    .restart local v0    # "maxTrans":F
    goto :goto_0

    .line 481
    :cond_1
    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    .line 482
    neg-float v2, p1

    add-float/2addr v2, v0

    goto :goto_1

    .line 483
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getImageHeight()F
    .locals 2

    .prologue
    .line 498
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matchViewHeight:F

    iget v1, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getImageWidth()F
    .locals 2

    .prologue
    .line 494
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matchViewWidth:F

    iget v1, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private printMatrixInfo()V
    .locals 4

    .prologue
    .line 1252
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 1253
    .local v0, "n":[F
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1254
    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TransX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TransY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    return-void
.end method

.method private savePreviousImageValues()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 224
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 225
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matchViewHeight:F

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->prevMatchViewHeight:F

    .line 226
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matchViewWidth:F

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->prevMatchViewWidth:F

    .line 227
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->prevViewHeight:I

    .line 228
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->prevViewWidth:I

    .line 230
    :cond_0
    return-void
.end method

.method private scaleImage(DFFZ)V
    .locals 6
    .param p1, "deltaScale"    # D
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "stretchImageToSuper"    # Z

    .prologue
    .line 918
    if-eqz p5, :cond_1

    .line 919
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->superMinScale:F

    .line 920
    .local v0, "lowerScale":F
    iget v2, p0, Lcom/biznessapps/widgets/TouchImageView;->superMaxScale:F

    .line 927
    .local v2, "upperScale":F
    :goto_0
    iget v1, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    .line 928
    .local v1, "origScale":F
    iget v3, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    float-to-double v3, v3

    mul-double/2addr v3, p1

    double-to-float v3, v3

    iput v3, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    .line 929
    iget v3, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    .line 930
    iput v2, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    .line 931
    div-float v3, v2, v1

    float-to-double p1, v3

    .line 937
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    double-to-float v4, p1

    double-to-float v5, p1

    invoke-virtual {v3, v4, v5, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 938
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fixScaleTrans()V

    .line 939
    return-void

    .line 923
    .end local v0    # "lowerScale":F
    .end local v1    # "origScale":F
    .end local v2    # "upperScale":F
    :cond_1
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->minScale:F

    .line 924
    .restart local v0    # "lowerScale":F
    iget v2, p0, Lcom/biznessapps/widgets/TouchImageView;->maxScale:F

    .restart local v2    # "upperScale":F
    goto :goto_0

    .line 932
    .restart local v1    # "origScale":F
    :cond_2
    iget v3, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    .line 933
    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    .line 934
    div-float v3, v0, v1

    float-to-double p1, v3

    goto :goto_1
.end method

.method private setState(Lcom/biznessapps/widgets/TouchImageView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/biznessapps/widgets/TouchImageView$State;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView;->state:Lcom/biznessapps/widgets/TouchImageView$State;

    .line 709
    return-void
.end method

.method private setViewSize(III)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "size"    # I
    .param p3, "drawableWidth"    # I

    .prologue
    .line 651
    sparse-switch p1, :sswitch_data_0

    .line 665
    move v0, p2

    .line 668
    .local v0, "viewSize":I
    :goto_0
    return v0

    .line 653
    .end local v0    # "viewSize":I
    :sswitch_0
    move v0, p2

    .line 654
    .restart local v0    # "viewSize":I
    goto :goto_0

    .line 657
    .end local v0    # "viewSize":I
    :sswitch_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 658
    .restart local v0    # "viewSize":I
    goto :goto_0

    .line 661
    .end local v0    # "viewSize":I
    :sswitch_2
    move v0, p3

    .line 662
    .restart local v0    # "viewSize":I
    goto :goto_0

    .line 651
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private sharedConstructing(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 105
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 106
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView;->context:Landroid/content/Context;

    .line 107
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;

    invoke-direct {v1, p0, v2}, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;-><init>(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 108
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/biznessapps/widgets/TouchImageView$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/biznessapps/widgets/TouchImageView$GestureListener;-><init>(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 109
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 110
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    .line 111
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    .line 112
    iput v3, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    .line 113
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 116
    :cond_0
    iput v3, p0, Lcom/biznessapps/widgets/TouchImageView;->minScale:F

    .line 117
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->maxScale:F

    .line 118
    const/high16 v0, 0x3f400000    # 0.75f

    iget v1, p0, Lcom/biznessapps/widgets/TouchImageView;->minScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->superMinScale:F

    .line 119
    const/high16 v0, 0x3fa00000    # 1.25f

    iget v1, p0, Lcom/biznessapps/widgets/TouchImageView;->maxScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->superMaxScale:F

    .line 120
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 121
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    sget-object v0, Lcom/biznessapps/widgets/TouchImageView$State;->NONE:Lcom/biznessapps/widgets/TouchImageView$State;

    invoke-direct {p0, v0}, Lcom/biznessapps/widgets/TouchImageView;->setState(Lcom/biznessapps/widgets/TouchImageView$State;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/widgets/TouchImageView;->onDrawReady:Z

    .line 124
    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$PrivateOnTouchListener;

    invoke-direct {v0, p0, v2}, Lcom/biznessapps/widgets/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$1;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    return-void
.end method

.method private transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .locals 8
    .param p1, "bx"    # F
    .param p2, "by"    # F

    .prologue
    .line 1076
    iget-object v6, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1077
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v3, v6

    .line 1078
    .local v3, "origW":F
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v2, v6

    .line 1079
    .local v2, "origH":F
    div-float v4, p1, v3

    .line 1080
    .local v4, "px":F
    div-float v5, p2, v2

    .line 1081
    .local v5, "py":F
    iget-object v6, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v7

    mul-float/2addr v7, v4

    add-float v0, v6, v7

    .line 1082
    .local v0, "finalX":F
    iget-object v6, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F

    move-result v7

    mul-float/2addr v7, v5

    add-float v1, v6, v7

    .line 1083
    .local v1, "finalY":F
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "clipToBitmap"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1052
    iget-object v6, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1053
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v3, v6

    .line 1054
    .local v3, "origW":F
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v2, v6

    .line 1055
    .local v2, "origH":F
    iget-object v6, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v7, 0x2

    aget v4, v6, v7

    .line 1056
    .local v4, "transX":F
    iget-object v6, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v7, 0x5

    aget v5, v6, v7

    .line 1057
    .local v5, "transY":F
    sub-float v6, p1, v4

    mul-float/2addr v6, v3

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v7

    div-float v0, v6, v7

    .line 1058
    .local v0, "finalX":F
    sub-float v6, p2, v5

    mul-float/2addr v6, v2

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F

    move-result v7

    div-float v1, v6, v7

    .line 1060
    .local v1, "finalY":F
    if-eqz p3, :cond_0

    .line 1061
    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1062
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1065
    :cond_0
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private translateMatrixAfterRotate(IFFFIII)V
    .locals 7
    .param p1, "axis"    # I
    .param p2, "trans"    # F
    .param p3, "prevImageSize"    # F
    .param p4, "imageSize"    # F
    .param p5, "prevViewSize"    # I
    .param p6, "viewSize"    # I
    .param p7, "drawableSize"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 684
    int-to-float v1, p6

    cmpg-float v1, p4, v1

    if-gez v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    int-to-float v2, p6

    int-to-float v3, p7

    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    aput v2, v1, p1

    .line 705
    :goto_0
    return-void

    .line 690
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 694
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    int-to-float v2, p6

    sub-float v2, p4, v2

    mul-float/2addr v2, v6

    neg-float v2, v2

    aput v2, v1, p1

    goto :goto_0

    .line 702
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, p5

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    div-float v0, v1, p3

    .line 703
    .local v0, "percentage":F
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    mul-float v2, v0, p4

    int-to-float v3, p6

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    neg-float v2, v2

    aput v2, v1, p1

    goto :goto_0
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 4
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 717
    iget-object v2, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 718
    iget-object v2, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v3, 0x2

    aget v0, v2, v3

    .line 720
    .local v0, "x":F
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v2

    iget v3, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 729
    :cond_0
    :goto_0
    return v1

    .line 722
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    if-ltz p1, :cond_0

    .line 725
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    if-gtz p1, :cond_0

    .line 729
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canScrollHorizontallyFroyo(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 712
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/TouchImageView;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public getCurrentZoom()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->maxScale:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->minScale:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .locals 7

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 408
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 409
    const/4 v3, 0x0

    .line 417
    :goto_0
    return-object v3

    .line 411
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 412
    .local v2, "drawableWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 414
    .local v1, "drawableHeight":I
    iget v4, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/biznessapps/widgets/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v3

    .line 415
    .local v3, "point":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 416
    iget v4, v3, Landroid/graphics/PointF;->y:F

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 206
    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_0

    .line 207
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "getZoomedRect() not supported with FIT_XY"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_0
    invoke-direct {p0, v6, v6, v7}, Lcom/biznessapps/widgets/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v2

    .line 210
    .local v2, "topLeft":Landroid/graphics/PointF;
    iget v4, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    int-to-float v5, v5

    invoke-direct {p0, v4, v5, v7}, Lcom/biznessapps/widgets/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 212
    .local v0, "bottomRight":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    .line 213
    .local v3, "w":F
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v1, v4

    .line 214
    .local v1, "h":F
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v3

    iget v6, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v1

    iget v7, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v3

    iget v8, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v8, v1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public isZoomed()Z
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->savePreviousImageValues()V

    .line 281
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/biznessapps/widgets/TouchImageView;->onDrawReady:Z

    .line 269
    iput-boolean v0, p0, Lcom/biznessapps/widgets/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 270
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->delayedZoomVariables:Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->delayedZoomVariables:Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;

    iget v0, v0, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;->scale:F

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->delayedZoomVariables:Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;

    iget v1, v1, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;->focusX:F

    iget-object v2, p0, Lcom/biznessapps/widgets/TouchImageView;->delayedZoomVariables:Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;

    iget v2, v2, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;->focusY:F

    iget-object v3, p0, Lcom/biznessapps/widgets/TouchImageView;->delayedZoomVariables:Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;

    iget-object v3, v3, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/biznessapps/widgets/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->delayedZoomVariables:Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 275
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 504
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-nez v7, :cond_1

    .line 505
    :cond_0
    invoke-virtual {p0, v8, v8}, Lcom/biznessapps/widgets/TouchImageView;->setMeasuredDimension(II)V

    .line 527
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 510
    .local v2, "drawableWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 511
    .local v1, "drawableHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 512
    .local v6, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 513
    .local v5, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 514
    .local v4, "heightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 515
    .local v3, "heightMode":I
    invoke-direct {p0, v5, v6, v2}, Lcom/biznessapps/widgets/TouchImageView;->setViewSize(III)I

    move-result v7

    iput v7, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    .line 516
    invoke-direct {p0, v3, v4, v1}, Lcom/biznessapps/widgets/TouchImageView;->setViewSize(III)I

    move-result v7

    iput v7, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    .line 521
    iget v7, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    iget v8, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/biznessapps/widgets/TouchImageView;->setMeasuredDimension(II)V

    .line 526
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fitImageToView()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 249
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 250
    check-cast v0, Landroid/os/Bundle;

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saveScale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    .line 252
    const-string v1, "matrix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    .line 253
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 254
    const-string v1, "matchViewHeight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/biznessapps/widgets/TouchImageView;->prevMatchViewHeight:F

    .line 255
    const-string v1, "matchViewWidth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/biznessapps/widgets/TouchImageView;->prevMatchViewWidth:F

    .line 256
    const-string v1, "viewHeight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/widgets/TouchImageView;->prevViewHeight:I

    .line 257
    const-string v1, "viewWidth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/widgets/TouchImageView;->prevViewWidth:I

    .line 258
    const-string v1, "imageRendered"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biznessapps/widgets/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 259
    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 264
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 236
    const-string v1, "saveScale"

    iget v2, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 237
    const-string v1, "matchViewHeight"

    iget v2, p0, Lcom/biznessapps/widgets/TouchImageView;->matchViewHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 238
    const-string v1, "matchViewWidth"

    iget v2, p0, Lcom/biznessapps/widgets/TouchImageView;->matchViewWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 239
    const-string v1, "viewWidth"

    iget v2, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-string v1, "viewHeight"

    iget v2, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 242
    const-string v1, "matrix"

    iget-object v2, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 243
    const-string v1, "imageRendered"

    iget-boolean v2, p0, Lcom/biznessapps/widgets/TouchImageView;->imageRenderedAtLeastOnce:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    return-object v0
.end method

.method public resetZoom()V
    .locals 1

    .prologue
    .line 330
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    .line 331
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fitImageToView()V

    .line 332
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->savePreviousImageValues()V

    .line 151
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fitImageToView()V

    .line 152
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->savePreviousImageValues()V

    .line 158
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fitImageToView()V

    .line 159
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->savePreviousImageValues()V

    .line 144
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fitImageToView()V

    .line 145
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 164
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->savePreviousImageValues()V

    .line 165
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fitImageToView()V

    .line 166
    return-void
.end method

.method public setMaxZoom(F)V
    .locals 2
    .param p1, "max"    # F

    .prologue
    .line 296
    iput p1, p0, Lcom/biznessapps/widgets/TouchImageView;->maxScale:F

    .line 297
    const/high16 v0, 0x3fa00000    # 1.25f

    iget v1, p0, Lcom/biznessapps/widgets/TouchImageView;->maxScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->superMaxScale:F

    .line 298
    return-void
.end method

.method public setMinZoom(F)V
    .locals 2
    .param p1, "min"    # F

    .prologue
    .line 322
    iput p1, p0, Lcom/biznessapps/widgets/TouchImageView;->minScale:F

    .line 323
    const/high16 v0, 0x3f400000    # 0.75f

    iget v1, p0, Lcom/biznessapps/widgets/TouchImageView;->minScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/TouchImageView;->superMinScale:F

    .line 324
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 138
    return-void
.end method

.method public setOnTouchImageViewListener(Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView;->touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    .line 134
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 130
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "type"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 170
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_1

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_3

    .line 174
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 186
    :cond_2
    :goto_0
    return-void

    .line 177
    :cond_3
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 178
    iget-boolean v0, p0, Lcom/biznessapps/widgets/TouchImageView;->onDrawReady:Z

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p0, p0}, Lcom/biznessapps/widgets/TouchImageView;->setZoom(Lcom/biznessapps/widgets/TouchImageView;)V

    goto :goto_0
.end method

.method public setScrollPosition(FF)V
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    .line 427
    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/biznessapps/widgets/TouchImageView;->setZoom(FFF)V

    .line 428
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 339
    invoke-virtual {p0, p1, v0, v0}, Lcom/biznessapps/widgets/TouchImageView;->setZoom(FFF)V

    .line 340
    return-void
.end method

.method public setZoom(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 352
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/biznessapps/widgets/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    .line 353
    return-void
.end method

.method public setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 371
    iget-boolean v0, p0, Lcom/biznessapps/widgets/TouchImageView;->onDrawReady:Z

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;-><init>(Lcom/biznessapps/widgets/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->delayedZoomVariables:Lcom/biznessapps/widgets/TouchImageView$ZoomVariables;

    .line 387
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_1

    .line 377
    invoke-virtual {p0, p4}, Lcom/biznessapps/widgets/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/widgets/TouchImageView;->resetZoom()V

    .line 380
    float-to-double v1, p1

    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/widgets/TouchImageView;->scaleImage(DFFZ)V

    .line 381
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 382
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageWidth()F

    move-result v2

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    .line 383
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->getImageHeight()F

    move-result v2

    mul-float/2addr v2, p3

    iget v3, p0, Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    .line 384
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 385
    invoke-direct {p0}, Lcom/biznessapps/widgets/TouchImageView;->fixTrans()V

    .line 386
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setZoom(Lcom/biznessapps/widgets/TouchImageView;)V
    .locals 5
    .param p1, "img"    # Lcom/biznessapps/widgets/TouchImageView;

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/biznessapps/widgets/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 396
    .local v0, "center":Landroid/graphics/PointF;
    invoke-virtual {p1}, Lcom/biznessapps/widgets/TouchImageView;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/biznessapps/widgets/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/biznessapps/widgets/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    .line 397
    return-void
.end method

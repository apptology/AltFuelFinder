.class public Lcom/biznessapps/widgets/ArcSeekBar;
.super Landroid/widget/SeekBar;
.source "ArcSeekBar.java"


# static fields
.field private static final MAX_ANGLE:I = 0xb4

.field private static final START_ANGLE:I = 0xb4

.field private static final STROKE_THICKNESS_RATE:F = 0.1f


# instance fields
.field private basePaint:Landroid/graphics/Paint;

.field private currentProgress:I

.field private maxProgress:I

.field private oval:Landroid/graphics/RectF;

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private strokeThickness:I

.field private trackColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, 0x44098000    # 550.0f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->oval:Landroid/graphics/RectF;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->trackColor:I

    .line 27
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressColor:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v2, 0x44098000    # 550.0f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->oval:Landroid/graphics/RectF;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->trackColor:I

    .line 27
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressColor:I

    .line 35
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->initBasePaint()V

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->initProgressPaint()V

    .line 40
    return-void
.end method

.method public initBasePaint()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->basePaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->basePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->basePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->trackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->basePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->strokeThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->basePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    return-void
.end method

.method public initProgressPaint()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->strokeThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    return-void
.end method

.method public nextStepProgress()V
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->currentProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->currentProgress:I

    .line 83
    iget v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->currentProgress:I

    iget v1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->maxProgress:I

    if-le v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->currentProgress:I

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->invalidate()V

    .line 87
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    .line 91
    iget-object v1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->oval:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/biznessapps/widgets/ArcSeekBar;->basePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 92
    iget v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->maxProgress:I

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->currentProgress:I

    mul-int/lit16 v0, v0, 0xb4

    iget v3, p0, Lcom/biznessapps/widgets/ArcSeekBar;->maxProgress:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->oval:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 109
    .local v1, "actualWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 110
    .local v0, "actualHeight":I
    div-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    move v2, v1

    .line 112
    .local v2, "min":I
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    div-int/lit8 v4, v2, 0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/widgets/ArcSeekBar;->setMeasuredDimension(II)V

    .line 115
    return-void

    .line 110
    .end local v2    # "min":I
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 101
    int-to-float v0, p1

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->strokeThickness:I

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->strokeThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/biznessapps/widgets/ArcSeekBar;->strokeThickness:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/biznessapps/widgets/ArcSeekBar;->strokeThickness:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    mul-int/lit8 v4, p2, 0x2

    iget v5, p0, Lcom/biznessapps/widgets/ArcSeekBar;->strokeThickness:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->oval:Landroid/graphics/RectF;

    .line 103
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->init()V

    .line 104
    return-void
.end method

.method public setCurrentProgress(I)V
    .locals 0
    .param p1, "currentProgress"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->currentProgress:I

    .line 78
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->invalidate()V

    .line 79
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .param p1, "maxProgress"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->maxProgress:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/ArcSeekBar;->currentProgress:I

    .line 73
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->invalidate()V

    .line 74
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1, "progressColor"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->progressColor:I

    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->initProgressPaint()V

    .line 67
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->invalidate()V

    .line 68
    return-void
.end method

.method public setTrackColor(I)V
    .locals 0
    .param p1, "trackColor"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/biznessapps/widgets/ArcSeekBar;->trackColor:I

    .line 60
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->initBasePaint()V

    .line 61
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ArcSeekBar;->invalidate()V

    .line 62
    return-void
.end method

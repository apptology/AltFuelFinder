.class public Lcom/biznessapps/widgets/animation/kenburns/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field private mCenterXDiff:F

.field private mCenterYDiff:F

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private mDstRect:Landroid/graphics/RectF;

.field private mDuration:J

.field private mHeightDiff:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mSrcRect:Landroid/graphics/RectF;

.field private mWidthDiff:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;JLandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "srcRect"    # Landroid/graphics/RectF;
    .param p2, "dstRect"    # Landroid/graphics/RectF;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mCurrentRect:Landroid/graphics/RectF;

    .line 51
    invoke-static {p1, p2}, Lcom/biznessapps/widgets/animation/kenburns/MathUtils;->haveSameAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/biznessapps/widgets/animation/kenburns/IncompatibleRatioException;

    invoke-direct {v0}, Lcom/biznessapps/widgets/animation/kenburns/IncompatibleRatioException;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mSrcRect:Landroid/graphics/RectF;

    .line 55
    iput-object p2, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mDstRect:Landroid/graphics/RectF;

    .line 56
    iput-wide p3, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mDuration:J

    .line 57
    iput-object p5, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mWidthDiff:F

    .line 61
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mHeightDiff:F

    .line 62
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mCenterXDiff:F

    .line 63
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mCenterYDiff:F

    .line 64
    return-void
.end method


# virtual methods
.method public getDestinyRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mDstRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mDuration:J

    return-wide v0
.end method

.method public getInterpolatedRect(J)Landroid/graphics/RectF;
    .locals 14
    .param p1, "elapsedTime"    # J

    .prologue
    .line 88
    long-to-float v11, p1

    iget-wide v12, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mDuration:J

    long-to-float v12, v12

    div-float v5, v11, v12

    .line 89
    .local v5, "elapsedTimeFraction":F
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 90
    .local v7, "interpolationProgress":F
    iget-object v11, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 91
    .local v6, "interpolation":F
    iget-object v11, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    iget v12, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mWidthDiff:F

    mul-float/2addr v12, v6

    add-float v4, v11, v12

    .line 92
    .local v4, "currentWidth":F
    iget-object v11, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    iget v12, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mHeightDiff:F

    mul-float/2addr v12, v6

    add-float v3, v11, v12

    .line 94
    .local v3, "currentHeight":F
    iget-object v11, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    iget v12, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mCenterXDiff:F

    mul-float/2addr v12, v6

    add-float v1, v11, v12

    .line 95
    .local v1, "currentCenterX":F
    iget-object v11, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget v12, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mCenterYDiff:F

    mul-float/2addr v12, v6

    add-float v2, v11, v12

    .line 97
    .local v2, "currentCenterY":F
    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v4, v11

    sub-float v8, v1, v11

    .line 98
    .local v8, "left":F
    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    sub-float v10, v2, v11

    .line 99
    .local v10, "top":F
    add-float v9, v8, v4

    .line 100
    .local v9, "right":F
    add-float v0, v10, v3

    .line 102
    .local v0, "bottom":F
    iget-object v11, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v8, v10, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    iget-object v11, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mCurrentRect:Landroid/graphics/RectF;

    return-object v11
.end method

.method public getSourceRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/Transition;->mSrcRect:Landroid/graphics/RectF;

    return-object v0
.end method

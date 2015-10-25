.class public final Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;
.super Landroid/view/View;
.source "ProgressButtonPendingAnimationView.java"


# static fields
.field private static final OFFSET_CIRCLE_DP:F = 1.0f

.field private static final RADIUS_SUB_DP:F = 1.5f

.field private static final WIDTH_DP:I = 0x2


# instance fields
.field private final ANIMATION_DURATION:I

.field private final ARC_ANGLE:I

.field private final OFFSET_CIRCLE_PX:F

.field private final RADIUS_SUB_PX:F

.field private final WIDTH_PX:F

.field private anim:Landroid/view/animation/RotateAnimation;

.field private final paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/16 v0, 0x140

    iput v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->ARC_ANGLE:I

    .line 25
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->ANIMATION_DURATION:I

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->OFFSET_CIRCLE_PX:F

    .line 35
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->RADIUS_SUB_PX:F

    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->WIDTH_PX:F

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->paint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->paint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->WIDTH_PX:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 46
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->rect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->RADIUS_SUB_PX:F

    sub-float v7, v0, v1

    .line 48
    .local v7, "right":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->RADIUS_SUB_PX:F

    sub-float v6, v0, v1

    .line 49
    .local v6, "bottom":F
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->RADIUS_SUB_PX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->OFFSET_CIRCLE_PX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->RADIUS_SUB_PX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->OFFSET_CIRCLE_PX:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->rect:Landroid/graphics/RectF;

    .line 51
    .end local v6    # "bottom":F
    .end local v7    # "right":F
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->anim:Landroid/view/animation/RotateAnimation;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->OFFSET_CIRCLE_PX:F

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->OFFSET_CIRCLE_PX:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->anim:Landroid/view/animation/RotateAnimation;

    .line 53
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->anim:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 54
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->anim:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 55
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->anim:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 56
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->anim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 57
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->anim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x43a00000    # 320.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 60
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->anim:Landroid/view/animation/RotateAnimation;

    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonPendingAnimationView;->clearAnimation()V

    .line 68
    :cond_0
    return-void
.end method

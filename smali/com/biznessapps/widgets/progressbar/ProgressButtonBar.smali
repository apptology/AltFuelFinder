.class public final Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;
.super Landroid/view/View;
.source "ProgressButtonBar.java"


# static fields
.field private static final OFFSET_CIRCLE_DP:F = 1.0f

.field private static final RADIUS_SUB_DP:F = 3.0f

.field private static final WIDTH_DP:I = 0x2


# instance fields
.field private final OFFSET_CIRCLE_PX:F

.field private final RADIUS_SUB_PX:F

.field private final WIDTH_PX:F

.field private final paint:Landroid/graphics/Paint;

.field private volatile progress:F

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->RADIUS_SUB_PX:F

    .line 30
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->WIDTH_PX:F

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->OFFSET_CIRCLE_PX:F

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->paint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->paint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->WIDTH_PX:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->rect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->RADIUS_SUB_PX:F

    sub-float v7, v0, v1

    .line 43
    .local v7, "right":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->RADIUS_SUB_PX:F

    sub-float v6, v0, v1

    .line 44
    .local v6, "bottom":F
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->RADIUS_SUB_PX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->OFFSET_CIRCLE_PX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->RADIUS_SUB_PX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->OFFSET_CIRCLE_PX:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->rect:Landroid/graphics/RectF;

    .line 46
    .end local v6    # "bottom":F
    .end local v7    # "right":F
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->rect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->progress:F

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->progress:F

    .line 54
    invoke-virtual {p0}, Lcom/biznessapps/widgets/progressbar/ProgressButtonBar;->invalidate()V

    .line 55
    return-void
.end method

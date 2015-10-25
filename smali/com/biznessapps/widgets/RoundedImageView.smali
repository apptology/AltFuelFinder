.class public Lcom/biznessapps/widgets/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# instance fields
.field private round:F

.field private shader:Landroid/graphics/BitmapShader;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/biznessapps/widgets/RoundedImageView;->round:F

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/biznessapps/widgets/RoundedImageView;->round:F

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/biznessapps/widgets/RoundedImageView;->round:F

    .line 37
    return-void
.end method

.method private measureHeight(II)I
    .locals 4
    .param p1, "measureSpecHeight"    # I
    .param p2, "measureSpecWidth"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 108
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 110
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 112
    move v0, v2

    .line 117
    :goto_0
    return v0

    .line 115
    :cond_0
    iget v0, p0, Lcom/biznessapps/widgets/RoundedImageView;->viewHeight:I

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 91
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 93
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 95
    move v0, v2

    .line 102
    :goto_0
    return v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/biznessapps/widgets/RoundedImageView;->viewWidth:I

    goto :goto_0
.end method


# virtual methods
.method public getRound()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/biznessapps/widgets/RoundedImageView;->round:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 63
    iget-object v2, p0, Lcom/biznessapps/widgets/RoundedImageView;->shader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_0

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 65
    .local v1, "p":Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/biznessapps/widgets/RoundedImageView;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    iget v2, p0, Lcom/biznessapps/widgets/RoundedImageView;->viewWidth:I

    div-int/lit8 v0, v2, 0x2

    .line 69
    .local v0, "circleCenter":I
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    new-instance v2, Landroid/graphics/RectF;

    mul-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    mul-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/biznessapps/widgets/RoundedImageView;->round:F

    mul-float/2addr v3, v4

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/biznessapps/widgets/RoundedImageView;->round:F

    mul-float/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 73
    .end local v0    # "circleCenter":I
    .end local v1    # "p":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/RoundedImageView;->measureWidth(I)I

    move-result v1

    .line 79
    .local v1, "width":I
    invoke-direct {p0, p2, p1}, Lcom/biznessapps/widgets/RoundedImageView;->measureHeight(II)I

    move-result v0

    .line 81
    .local v0, "height":I
    iput v1, p0, Lcom/biznessapps/widgets/RoundedImageView;->viewWidth:I

    .line 82
    iput v0, p0, Lcom/biznessapps/widgets/RoundedImageView;->viewHeight:I

    .line 84
    invoke-virtual {p0, v1, v0}, Lcom/biznessapps/widgets/RoundedImageView;->setMeasuredDimension(II)V

    .line 85
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/RoundedImageView;->shader:Landroid/graphics/BitmapShader;

    .line 45
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 51
    instance-of v0, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_1

    .line 52
    new-instance v1, Landroid/graphics/BitmapShader;

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/biznessapps/widgets/RoundedImageView;->shader:Landroid/graphics/BitmapShader;

    .line 56
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void

    .line 53
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Landroid/graphics/BitmapShader;

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/biznessapps/widgets/RoundedImageView;->shader:Landroid/graphics/BitmapShader;

    goto :goto_0
.end method

.method public setRound(F)V
    .locals 0
    .param p1, "round"    # F

    .prologue
    .line 125
    iput p1, p0, Lcom/biznessapps/widgets/RoundedImageView;->round:F

    .line 126
    return-void
.end method

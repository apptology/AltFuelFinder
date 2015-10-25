.class public Lcom/biznessapps/widgets/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


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
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/biznessapps/widgets/RoundImageView;->round:F

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/biznessapps/widgets/RoundImageView;->round:F

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/biznessapps/widgets/RoundImageView;->round:F

    .line 36
    return-void
.end method

.method private measureHeight(II)I
    .locals 4
    .param p1, "measureSpecHeight"    # I
    .param p2, "measureSpecWidth"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 107
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 109
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 111
    move v0, v2

    .line 116
    :goto_0
    return v0

    .line 114
    :cond_0
    iget v0, p0, Lcom/biznessapps/widgets/RoundImageView;->viewHeight:I

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 90
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 92
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 94
    move v0, v2

    .line 101
    :goto_0
    return v0

    .line 97
    :cond_0
    iget v0, p0, Lcom/biznessapps/widgets/RoundImageView;->viewWidth:I

    goto :goto_0
.end method


# virtual methods
.method public getRound()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/biznessapps/widgets/RoundImageView;->round:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v2, p0, Lcom/biznessapps/widgets/RoundImageView;->shader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_0

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .local v1, "p":Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/biznessapps/widgets/RoundImageView;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    iget v2, p0, Lcom/biznessapps/widgets/RoundImageView;->viewWidth:I

    div-int/lit8 v0, v2, 0x2

    .line 68
    .local v0, "circleCenter":I
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 70
    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
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
    .line 77
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/RoundImageView;->measureWidth(I)I

    move-result v1

    .line 78
    .local v1, "width":I
    invoke-direct {p0, p2, p1}, Lcom/biznessapps/widgets/RoundImageView;->measureHeight(II)I

    move-result v0

    .line 80
    .local v0, "height":I
    iput v1, p0, Lcom/biznessapps/widgets/RoundImageView;->viewWidth:I

    .line 81
    iput v0, p0, Lcom/biznessapps/widgets/RoundImageView;->viewHeight:I

    .line 83
    invoke-virtual {p0, v1, v0}, Lcom/biznessapps/widgets/RoundImageView;->setMeasuredDimension(II)V

    .line 84
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 42
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/RoundImageView;->shader:Landroid/graphics/BitmapShader;

    .line 44
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 50
    instance-of v0, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_1

    .line 51
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

    iput-object v1, p0, Lcom/biznessapps/widgets/RoundImageView;->shader:Landroid/graphics/BitmapShader;

    .line 55
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void

    .line 52
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Landroid/graphics/BitmapShader;

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/biznessapps/widgets/RoundImageView;->shader:Landroid/graphics/BitmapShader;

    goto :goto_0
.end method

.method public setRound(F)V
    .locals 0
    .param p1, "round"    # F

    .prologue
    .line 124
    iput p1, p0, Lcom/biznessapps/widgets/RoundImageView;->round:F

    .line 125
    return-void
.end method

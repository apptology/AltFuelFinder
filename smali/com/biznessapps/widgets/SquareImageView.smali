.class public Lcom/biznessapps/widgets/SquareImageView;
.super Landroid/widget/ImageView;
.source "SquareImageView.java"


# instance fields
.field private mRatioByWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/biznessapps/widgets/SquareImageView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/biznessapps/widgets/SquareImageView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public initAttrs(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/biznessapps/layout/R$styleable;->SquareImageView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biznessapps/widgets/SquareImageView;->mRatioByWidth:Z

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareImageView;->getMeasuredWidth()I

    move-result v1

    .line 40
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareImageView;->getMeasuredHeight()I

    move-result v0

    .line 42
    .local v0, "height":I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    iget-boolean v2, p0, Lcom/biznessapps/widgets/SquareImageView;->mRatioByWidth:Z

    if-eqz v2, :cond_1

    .line 45
    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/biznessapps/widgets/SquareImageView;->setMeasuredDimension(II)V

    .line 53
    return-void

    .line 47
    :cond_1
    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0
.end method

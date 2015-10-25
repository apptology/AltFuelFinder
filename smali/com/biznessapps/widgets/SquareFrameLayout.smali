.class public Lcom/biznessapps/widgets/SquareFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SquareFrameLayout.java"


# instance fields
.field private mKeepWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/biznessapps/widgets/SquareFrameLayout;->initAttrs(Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/biznessapps/widgets/SquareFrameLayout;->initAttrs(Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public initAttrs(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/biznessapps/layout/R$styleable;->SquareFrameLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biznessapps/widgets/SquareFrameLayout;->mKeepWidth:Z

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareFrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 40
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SquareFrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 42
    .local v0, "height":I
    iget-boolean v2, p0, Lcom/biznessapps/widgets/SquareFrameLayout;->mKeepWidth:Z

    if-eqz v2, :cond_0

    .line 43
    move v0, v1

    .line 47
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/biznessapps/widgets/SquareFrameLayout;->setMeasuredDimension(II)V

    .line 48
    return-void

    .line 45
    :cond_0
    move v1, v0

    goto :goto_0
.end method

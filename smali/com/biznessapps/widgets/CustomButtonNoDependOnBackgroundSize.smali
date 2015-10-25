.class public Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;
.super Landroid/widget/Button;
.source "CustomButtonNoDependOnBackgroundSize.java"


# instance fields
.field private mNoDependBackground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->initUI()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p2}, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->initAttrs(Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->initUI()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p2}, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->initAttrs(Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->initUI()V

    .line 31
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/biznessapps/layout/R$styleable;->CustomButtonNoDependOnBackgroundSize:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->mNoDependBackground:I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 42
    iget v1, p0, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->mNoDependBackground:I

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Lcom/biznessapps/widgets/BitmapDrawableNoMinimumSize;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->mNoDependBackground:I

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/widgets/BitmapDrawableNoMinimumSize;-><init>(Landroid/content/res/Resources;I)V

    .line 44
    .local v0, "bitmapDrawable":Lcom/biznessapps/widgets/BitmapDrawableNoMinimumSize;
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/CustomButtonNoDependOnBackgroundSize;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .end local v0    # "bitmapDrawable":Lcom/biznessapps/widgets/BitmapDrawableNoMinimumSize;
    :cond_0
    return-void
.end method

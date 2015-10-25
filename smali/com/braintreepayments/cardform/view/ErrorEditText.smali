.class public Lcom/braintreepayments/cardform/view/ErrorEditText;
.super Landroid/widget/EditText;
.source "ErrorEditText.java"


# instance fields
.field private mActiveUnderlineThickness:I

.field private mError:Z

.field private mErrorColor:I

.field private mFocusedColor:I

.field private mInactiveColor:I

.field private mInactiveUnderlineThickness:I

.field private mPaddingBottom:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 47
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaint:Landroid/graphics/Paint;

    .line 48
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/braintreepayments/cardform/view/ErrorEditText;->dp2px(F)I

    move-result v2

    iput v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaddingBottom:I

    .line 49
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/braintreepayments/cardform/view/ErrorEditText;->dp2px(F)I

    move-result v2

    iput v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mActiveUnderlineThickness:I

    .line 50
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/braintreepayments/cardform/view/ErrorEditText;->dp2px(F)I

    move-result v2

    iput v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mInactiveUnderlineThickness:I

    .line 51
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mError:Z

    .line 53
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/braintreepayments/cardform/R$color;->bt_light_gray:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mInactiveColor:I

    .line 54
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/braintreepayments/cardform/R$color;->bt_red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mErrorColor:I

    .line 56
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 57
    .local v0, "colorAccentTypedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "colorAccent"

    const-string v4, "attr"

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "colorPrimaryId":I
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 59
    iget v2, v0, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mFocusedColor:I

    .line 60
    iget v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mFocusedColor:I

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/braintreepayments/cardform/R$color;->bt_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mFocusedColor:I

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/braintreepayments/cardform/R$color;->bt_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/braintreepayments/cardform/view/ErrorEditText;->setTextColor(I)V

    .line 76
    return-void
.end method


# virtual methods
.method protected dp2px(F)I
    .locals 2
    .param p1, "dp"    # F

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public focusNextView()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 97
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getImeActionId()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/braintreepayments/cardform/view/ErrorEditText;->focusSearch(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    .local v1, "next":Landroid/view/View;
    :goto_1
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 104
    .end local v1    # "next":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/braintreepayments/cardform/view/ErrorEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "next":Landroid/view/View;
    goto :goto_1
.end method

.method protected getErrorColor()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mErrorColor:I

    return v0
.end method

.method protected getFocusedColor()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mFocusedColor:I

    return v0
.end method

.method protected getInactiveColor()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mInactiveColor:I

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mError:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v3, 0xffffff

    const/4 v1, 0x0

    .line 154
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getRight()I

    move-result v6

    .line 157
    .local v6, "endX":I
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaddingBottom:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mActiveUnderlineThickness:I

    sub-int v7, v0, v2

    .line 159
    .local v7, "startY":I
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mError:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    int-to-float v2, v7

    int-to-float v3, v6

    iget v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mActiveUnderlineThickness:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mInactiveColor:I

    and-int/2addr v2, v3

    const/high16 v3, 0x44000000    # 512.0f

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    int-to-float v2, v7

    int-to-float v3, v6

    iget v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mInactiveUnderlineThickness:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mFocusedColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    int-to-float v2, v7

    int-to-float v3, v6

    iget v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mActiveUnderlineThickness:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mInactiveColor:I

    and-int/2addr v2, v3

    const/high16 v3, 0x1e000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    int-to-float v2, v7

    int-to-float v3, v6

    iget v0, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mInactiveUnderlineThickness:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 87
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->setError(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->setError(Z)V

    .line 82
    return-void
.end method

.method public setError(Z)V
    .locals 0
    .param p1, "error"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/braintreepayments/cardform/view/ErrorEditText;->mError:Z

    .line 129
    return-void
.end method

.method public validate()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->setError(Z)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/ErrorEditText;->setError(Z)V

    goto :goto_0
.end method

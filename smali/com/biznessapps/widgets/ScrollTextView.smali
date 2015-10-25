.class public Lcom/biznessapps/widgets/ScrollTextView;
.super Landroid/widget/TextView;
.source "ScrollTextView.java"


# instance fields
.field private mPaused:Z

.field private mRndDuration:I

.field private mSlr:Landroid/widget/Scroller;

.field private mXPaused:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/biznessapps/widgets/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->setSingleLine()V

    .line 32
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/ScrollTextView;->setVisibility(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/widgets/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->setSingleLine()V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/ScrollTextView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mRndDuration:I

    .line 20
    iput v1, p0, Lcom/biznessapps/widgets/ScrollTextView;->mXPaused:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mPaused:Z

    .line 53
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->setSingleLine()V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/ScrollTextView;->setVisibility(I)V

    .line 56
    return-void
.end method

.method private calculateScrollingLen()I
    .locals 6

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 102
    .local v3, "tp":Landroid/text/TextPaint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "strTxt":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->getWidth()I

    move-result v5

    add-int v1, v4, v5

    .line 106
    .local v1, "scrollingLen":I
    const/4 v0, 0x0

    .line 107
    return v1
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/TextView;->computeScroll()V

    .line 138
    iget-object v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mPaused:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->startScroll()V

    goto :goto_0
.end method

.method public getRndDuration()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mRndDuration:I

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mPaused:Z

    return v0
.end method

.method public pauseScroll()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mPaused:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mPaused:Z

    .line 125
    iget-object v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mXPaused:I

    .line 127
    iget-object v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0
.end method

.method public resumeScroll()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mPaused:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/ScrollTextView;->setHorizontallyScrolling(Z)V

    .line 82
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    .line 83
    iget-object v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/ScrollTextView;->setScroller(Landroid/widget/Scroller;)V

    .line 85
    invoke-direct {p0}, Lcom/biznessapps/widgets/ScrollTextView;->calculateScrollingLen()I

    move-result v6

    .line 86
    .local v6, "scrollingLen":I
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/biznessapps/widgets/ScrollTextView;->mXPaused:I

    add-int/2addr v0, v1

    sub-int v3, v6, v0

    .line 87
    .local v3, "distance":I
    new-instance v0, Ljava/lang/Double;

    iget v1, p0, Lcom/biznessapps/widgets/ScrollTextView;->mRndDuration:I

    mul-int/2addr v1, v3

    int-to-double v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v7, v9

    int-to-double v9, v6

    div-double/2addr v7, v9

    invoke-direct {v0, v7, v8}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v5

    .line 90
    .local v5, "duration":I
    invoke-virtual {p0, v2}, Lcom/biznessapps/widgets/ScrollTextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    iget v1, p0, Lcom/biznessapps/widgets/ScrollTextView;->mXPaused:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 92
    iput-boolean v2, p0, Lcom/biznessapps/widgets/ScrollTextView;->mPaused:Z

    goto :goto_0
.end method

.method public setRndDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/biznessapps/widgets/ScrollTextView;->mRndDuration:I

    .line 151
    return-void
.end method

.method public startScroll()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mXPaused:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/ScrollTextView;->mPaused:Z

    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ScrollTextView;->resumeScroll()V

    .line 67
    return-void
.end method

.class public Lcom/braintreepayments/cardform/view/FloatingLabelEditText;
.super Lcom/braintreepayments/cardform/view/ErrorEditText;
.source "FloatingLabelEditText.java"


# static fields
.field private static final ANIMATION_DURATION_MILLIS:I = 0x12c


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatedHintColor:I

.field private mAnimatedHintHeight:F

.field private mFocusColorAnimator:Landroid/animation/ValueAnimator;

.field private mHintAlpha:I

.field private mHintAnimator:Landroid/animation/ValueAnimator;

.field private mHintPaint:Landroid/text/TextPaint;

.field private mInactiveColorAnimator:Landroid/animation/ValueAnimator;

.field private mPreviousTextLength:I

.field protected mRightToLeftLanguage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/ErrorEditText;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintPaint:Landroid/text/TextPaint;

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAnimatedHintHeight:F

    .line 42
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/cardform/view/ErrorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintPaint:Landroid/text/TextPaint;

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAnimatedHintHeight:F

    .line 47
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/ErrorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintPaint:Landroid/text/TextPaint;

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAnimatedHintHeight:F

    .line 52
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/braintreepayments/cardform/view/FloatingLabelEditText;F)F
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/cardform/view/FloatingLabelEditText;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAnimatedHintHeight:F

    return p1
.end method

.method static synthetic access$102(Lcom/braintreepayments/cardform/view/FloatingLabelEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/cardform/view/FloatingLabelEditText;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAnimatedHintColor:I

    return p1
.end method

.method static synthetic access$202(Lcom/braintreepayments/cardform/view/FloatingLabelEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/braintreepayments/cardform/view/FloatingLabelEditText;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintAlpha:I

    return p1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->isRightToLeftLanguage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mRightToLeftLanguage:Z

    .line 57
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mPreviousTextLength:I

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->setupAnimations()V

    .line 61
    :cond_0
    return-void
.end method

.method private isRightToLeftLanguage()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method private setupAnimations()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 65
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->getTextSize()F

    move-result v1

    .line 66
    .local v1, "textSize":F
    new-array v2, v4, [F

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v1

    aput v3, v2, v5

    aput v1, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintAnimator:Landroid/animation/ValueAnimator;

    .line 67
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/braintreepayments/cardform/view/FloatingLabelEditText$1;

    invoke-direct {v3, p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText$1;-><init>(Lcom/braintreepayments/cardform/view/FloatingLabelEditText;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    new-instance v0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText$2;

    invoke-direct {v0, p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText$2;-><init>(Lcom/braintreepayments/cardform/view/FloatingLabelEditText;)V

    .line 84
    .local v0, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    new-array v2, v4, [I

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->getInactiveColor()I

    move-result v3

    aput v3, v2, v5

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->getFocusedColor()I

    move-result v3

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mFocusColorAnimator:Landroid/animation/ValueAnimator;

    .line 85
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mFocusColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 86
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mFocusColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mFocusColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    new-array v2, v4, [I

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->getFocusedColor()I

    move-result v3

    aput v3, v2, v5

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->getInactiveColor()I

    move-result v3

    aput v3, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mInactiveColorAnimator:Landroid/animation/ValueAnimator;

    .line 90
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mInactiveColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 91
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mInactiveColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mInactiveColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 95
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/braintreepayments/cardform/view/FloatingLabelEditText$3;

    invoke-direct {v3, p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText$3;-><init>(Lcom/braintreepayments/cardform/view/FloatingLabelEditText;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    return-void

    .line 94
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method protected handleTextColorOnFocus(Z)V
    .locals 1
    .param p1, "focused"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mFocusColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mInactiveColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/braintreepayments/cardform/view/ErrorEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAnimatedHintColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 119
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintAlpha:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 121
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAnimatedHintHeight:F

    iget-object v3, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/ErrorEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->handleTextColorOnFocus(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Lcom/braintreepayments/cardform/view/ErrorEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mPreviousTextLength:I

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 132
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mFocusColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 133
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 136
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mPreviousTextLength:I

    .line 137
    return-void
.end method

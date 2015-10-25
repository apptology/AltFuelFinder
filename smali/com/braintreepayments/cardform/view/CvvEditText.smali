.class public Lcom/braintreepayments/cardform/view/CvvEditText;
.super Lcom/braintreepayments/cardform/view/FloatingLabelEditText;
.source "CvvEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DEFAULT_MAX_LENGTH:I = 0x3


# instance fields
.field private mAlwaysDisplayHint:Z

.field private mCardType:Lcom/braintreepayments/cardform/utils/CardType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mAlwaysDisplayHint:Z

    .line 27
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mAlwaysDisplayHint:Z

    .line 32
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->init()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mAlwaysDisplayHint:Z

    .line 37
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->init()V

    .line 38
    return-void
.end method

.method private getSecurityCodeLength()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x3

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/utils/CardType;->getSecurityCodeLength()I

    move-result v0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setInputType(I)V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 43
    invoke-virtual {p0, p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/utils/CardType;->getSecurityCodeLength()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->getSelectionStart()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->validate()V

    .line 81
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->focusNextView()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 121
    return-void
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->getSecurityCodeLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "cvvResource":I
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mAlwaysDisplayHint:Z

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    if-nez v1, :cond_2

    .line 94
    sget v0, Lcom/braintreepayments/cardform/R$drawable;->bt_cvv_highlighted:I

    .line 100
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mRightToLeftLanguage:Z

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/braintreepayments/cardform/view/CvvEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 105
    :goto_1
    return-void

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/utils/CardType;->getSecurityCodeResource()I

    move-result v0

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/braintreepayments/cardform/view/CvvEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method public setAlwaysDisplayHint(Z)V
    .locals 0
    .param p1, "alwaysDisplayHint"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mAlwaysDisplayHint:Z

    .line 70
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->invalidate()V

    .line 71
    return-void
.end method

.method public setCardType(Lcom/braintreepayments/cardform/utils/CardType;)V
    .locals 4
    .param p1, "cardType"    # Lcom/braintreepayments/cardform/utils/CardType;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    .line 55
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p1}, Lcom/braintreepayments/cardform/utils/CardType;->getSecurityCodeLength()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 56
    .local v0, "filters":[Landroid/text/InputFilter;
    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 57
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->invalidate()V

    .line 58
    return-void
.end method

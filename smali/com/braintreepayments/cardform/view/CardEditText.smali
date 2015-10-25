.class public Lcom/braintreepayments/cardform/view/CardEditText;
.super Lcom/braintreepayments/cardform/view/FloatingLabelEditText;
.source "CardEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;
    }
.end annotation


# instance fields
.field private mCardType:Lcom/braintreepayments/cardform/utils/CardType;

.field private mOnCardTypeChangedListener:Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;-><init>(Landroid/content/Context;)V

    .line 24
    sget-object v0, Lcom/braintreepayments/cardform/utils/CardType;->UNKNOWN:Lcom/braintreepayments/cardform/utils/CardType;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    .line 29
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v0, Lcom/braintreepayments/cardform/utils/CardType;->UNKNOWN:Lcom/braintreepayments/cardform/utils/CardType;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    .line 34
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget-object v0, Lcom/braintreepayments/cardform/utils/CardType;->UNKNOWN:Lcom/braintreepayments/cardform/utils/CardType;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    .line 39
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->init()V

    .line 40
    return-void
.end method

.method private addSpans(Landroid/text/Editable;[I)V
    .locals 8
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "spaceIndices"    # [I

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    .line 110
    .local v4, "length":I
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 111
    .local v2, "index":I
    if-gt v2, v4, :cond_0

    .line 112
    new-instance v5, Lcom/braintreepayments/cardform/view/SpaceSpan;

    invoke-direct {v5}, Lcom/braintreepayments/cardform/view/SpaceSpan;-><init>()V

    add-int/lit8 v6, v2, -0x1

    const/16 v7, 0x21

    invoke-interface {p1, v5, v6, v2, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "index":I
    :cond_1
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardEditText;->setInputType(I)V

    .line 44
    sget v0, Lcom/braintreepayments/cardform/R$drawable;->bt_card_highlighted:I

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardEditText;->setCardIcon(I)V

    .line 45
    invoke-virtual {p0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    return-void
.end method

.method private setCardIcon(I)V
    .locals 2
    .param p1, "icon"    # I

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mRightToLeftLanguage:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/braintreepayments/cardform/view/CardEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0, v1, v1, p1, v1}, Lcom/braintreepayments/cardform/view/CardEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private updateCardType()V
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/braintreepayments/cardform/utils/CardType;->forCardNumber(Ljava/lang/String;)Lcom/braintreepayments/cardform/utils/CardType;

    move-result-object v1

    .line 95
    .local v1, "type":Lcom/braintreepayments/cardform/utils/CardType;
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    if-eq v2, v1, :cond_0

    .line 96
    iput-object v1, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    .line 98
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    invoke-virtual {v4}, Lcom/braintreepayments/cardform/utils/CardType;->getMaxCardLength()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 99
    .local v0, "filters":[Landroid/text/InputFilter;
    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 100
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->invalidate()V

    .line 102
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mOnCardTypeChangedListener:Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mOnCardTypeChangedListener:Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;

    iget-object v3, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    invoke-interface {v2, v3}, Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;->onCardTypeChanged(Lcom/braintreepayments/cardform/utils/CardType;)V

    .line 106
    .end local v0    # "filters":[Landroid/text/InputFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 67
    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Lcom/braintreepayments/cardform/view/SpaceSpan;

    invoke-interface {p1, v5, v6, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 68
    .local v3, "paddingSpans":[Ljava/lang/Object;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 69
    .local v4, "span":Ljava/lang/Object;
    invoke-interface {p1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v4    # "span":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->updateCardType()V

    .line 73
    iget-object v5, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    invoke-virtual {v5}, Lcom/braintreepayments/cardform/utils/CardType;->getFrontResource()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/braintreepayments/cardform/view/CardEditText;->setCardIcon(I)V

    .line 75
    iget-boolean v5, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mRightToLeftLanguage:Z

    if-nez v5, :cond_1

    .line 76
    iget-object v5, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    invoke-virtual {v5}, Lcom/braintreepayments/cardform/utils/CardType;->getSpaceIndices()[I

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/braintreepayments/cardform/view/CardEditText;->addSpans(Landroid/text/Editable;[I)V

    .line 79
    :cond_1
    iget-object v5, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    invoke-virtual {v5}, Lcom/braintreepayments/cardform/utils/CardType;->getMaxCardLength()I

    move-result v5

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->getSelectionStart()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->validate()V

    .line 82
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->focusNextView()V

    .line 86
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 127
    return-void
.end method

.method public getCardType()Lcom/braintreepayments/cardform/utils/CardType;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mCardType:Lcom/braintreepayments/cardform/utils/CardType;

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/utils/CardType;->validate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOnCardTypeChangedListener(Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CardEditText;->mOnCardTypeChangedListener:Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;

    .line 63
    return-void
.end method

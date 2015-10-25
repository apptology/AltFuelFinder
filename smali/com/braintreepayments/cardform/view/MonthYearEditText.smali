.class public Lcom/braintreepayments/cardform/view/MonthYearEditText;
.super Lcom/braintreepayments/cardform/view/FloatingLabelEditText;
.source "MonthYearEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mChangeWasAddition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->init()V

    .line 35
    return-void
.end method

.method private addDateSlash(Landroid/text/Editable;)V
    .locals 6
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x2

    .line 110
    const/4 v0, 0x2

    .line 111
    .local v0, "index":I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 112
    .local v1, "length":I
    if-gt v5, v1, :cond_0

    .line 113
    new-instance v2, Lcom/braintreepayments/cardform/view/SlashSpan;

    invoke-direct {v2}, Lcom/braintreepayments/cardform/view/SlashSpan;-><init>()V

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {p1, v2, v3, v5, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    :cond_0
    return-void
.end method

.method private getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 123
    .local v0, "editable":Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 38
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setInputType(I)V

    .line 39
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 40
    .local v0, "filters":[Landroid/text/InputFilter;
    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 41
    invoke-virtual {p0, p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 42
    return-void
.end method

.method private prependLeadingZero(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 106
    .local v0, "firstChar":C
    const/4 v1, 0x1

    const-string v2, "0"

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 107
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v7, 0x0

    .line 84
    iget-boolean v5, p0, Lcom/braintreepayments/cardform/view/MonthYearEditText;->mChangeWasAddition:Z

    if-eqz v5, :cond_0

    .line 85
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->prependLeadingZero(Landroid/text/Editable;)V

    .line 90
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Lcom/braintreepayments/cardform/view/SlashSpan;

    invoke-interface {p1, v7, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 91
    .local v3, "paddingSpans":[Ljava/lang/Object;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 92
    .local v4, "span":Ljava/lang/Object;
    invoke-interface {p1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v4    # "span":Ljava/lang/Object;
    :cond_1
    iget-boolean v5, p0, Lcom/braintreepayments/cardform/view/MonthYearEditText;->mRightToLeftLanguage:Z

    if-nez v5, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->addDateSlash(Landroid/text/Editable;)V

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getSelectionStart()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "20"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getSelectionStart()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->focusNextView()V

    .line 102
    :cond_5
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

.method public getMonth()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 49
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 51
    const-string v1, ""

    .line 53
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getYear()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/braintreepayments/cardform/utils/DateValidator;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 79
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/MonthYearEditText;->mChangeWasAddition:Z

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

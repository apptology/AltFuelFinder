.class public Lcom/braintreepayments/cardform/view/CardForm;
.super Landroid/widget/LinearLayout;
.source "CardForm.java"

# interfaces
.implements Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

.field private mCardNumberRequired:Z

.field private mCvvRequired:Z

.field private mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

.field private mExpirationRequired:Z

.field private mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

.field private mOnCardFormFieldFocusedListener:Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;

.field private mOnCardFormSubmitListener:Lcom/braintreepayments/cardform/OnCardFormSubmitListener;

.field private mOnCardFormValidListener:Lcom/braintreepayments/cardform/OnCardFormValidListener;

.field private mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

.field private mPostalCodeRequired:Z

.field private mValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mValid:Z

    .line 54
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardForm;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mValid:Z

    .line 59
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardForm;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mValid:Z

    .line 65
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardForm;->init()V

    .line 66
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/braintreepayments/cardform/R$layout;->bt_card_form_fields:I

    invoke-static {v0, v1, p0}, Lcom/braintreepayments/cardform/view/CardForm;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->setVisibility(I)V

    .line 73
    sget v0, Lcom/braintreepayments/cardform/R$id;->bt_card_form_card_number:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/CardEditText;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    .line 74
    sget v0, Lcom/braintreepayments/cardform/R$id;->bt_card_form_expiration:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/MonthYearEditText;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    .line 75
    sget v0, Lcom/braintreepayments/cardform/R$id;->bt_card_form_cvv:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/CvvEditText;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    .line 76
    sget v0, Lcom/braintreepayments/cardform/R$id;->bt_card_form_postal_code:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    .line 78
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->setOnCardTypeChangedListener(Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;)V

    .line 89
    return-void
.end method

.method private requestEditTextFocus(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 289
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 291
    return-void
.end method

.method private setIMEOptionsForLastEditTestField(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "imeActionLabel"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 159
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 160
    invoke-virtual {p1, p2, v0}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 161
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 162
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->isValid()Z

    move-result v0

    .line 360
    .local v0, "valid":Z
    iget-boolean v1, p0, Lcom/braintreepayments/cardform/view/CardForm;->mValid:Z

    if-eq v1, v0, :cond_0

    .line 361
    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mValid:Z

    .line 362
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormValidListener:Lcom/braintreepayments/cardform/OnCardFormValidListener;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormValidListener:Lcom/braintreepayments/cardform/OnCardFormValidListener;

    invoke-interface {v1, v0}, Lcom/braintreepayments/cardform/OnCardFormValidListener;->onCardFormValid(Z)V

    .line 366
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 378
    return-void
.end method

.method public closeSoftKeyboard()V
    .locals 3

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 299
    return-void
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getMonth()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getYear()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    const/4 v0, 0x1

    .line 206
    .local v0, "valid":Z
    iget-boolean v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumberRequired:Z

    if-eqz v3, :cond_0

    .line 207
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v3}, Lcom/braintreepayments/cardform/view/CardEditText;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 209
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationRequired:Z

    if-eqz v3, :cond_1

    .line 210
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v3}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 212
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvRequired:Z

    if-eqz v3, :cond_2

    .line 213
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v3}, Lcom/braintreepayments/cardform/view/CvvEditText;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    .line 215
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCodeRequired:Z

    if-eqz v3, :cond_3

    .line 216
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v3}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->isValid()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 218
    :cond_3
    :goto_3
    return v0

    :cond_4
    move v0, v2

    .line 207
    goto :goto_0

    :cond_5
    move v0, v2

    .line 210
    goto :goto_1

    :cond_6
    move v0, v2

    .line 213
    goto :goto_2

    :cond_7
    move v0, v2

    .line 216
    goto :goto_3
.end method

.method public onCardTypeChanged(Lcom/braintreepayments/cardform/utils/CardType;)V
    .locals 1
    .param p1, "cardType"    # Lcom/braintreepayments/cardform/utils/CardType;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/CvvEditText;->setCardType(Lcom/braintreepayments/cardform/utils/CardType;)V

    .line 341
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormFieldFocusedListener:Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormFieldFocusedListener:Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;

    invoke-interface {v0, p1}, Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;->onCardFormFieldFocused(Landroid/view/View;)V

    .line 355
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 370
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormSubmitListener:Lcom/braintreepayments/cardform/OnCardFormSubmitListener;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormSubmitListener:Lcom/braintreepayments/cardform/OnCardFormSubmitListener;

    invoke-interface {v0}, Lcom/braintreepayments/cardform/OnCardFormSubmitListener;->onCardFormSubmit()V

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 345
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormFieldFocusedListener:Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormFieldFocusedListener:Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;

    invoke-interface {v0, p1}, Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;->onCardFormFieldFocused(Landroid/view/View;)V

    .line 348
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 381
    return-void
.end method

.method public setCardNumberError()V
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumberRequired:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/CardEditText;->setError(Z)V

    .line 245
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->requestEditTextFocus(Landroid/widget/EditText;)V

    .line 247
    :cond_0
    return-void
.end method

.method public setCvvError()V
    .locals 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvRequired:Z

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/CvvEditText;->setError(Z)V

    .line 267
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumberRequired:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationRequired:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->requestEditTextFocus(Landroid/widget/EditText;)V

    .line 272
    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/CardEditText;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/CvvEditText;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setEnabled(Z)V

    .line 199
    return-void
.end method

.method public setExpirationError()V
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationRequired:Z

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setError(Z)V

    .line 255
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumberRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->requestEditTextFocus(Landroid/widget/EditText;)V

    .line 259
    :cond_1
    return-void
.end method

.method public setOnCardFormSubmitListener(Lcom/braintreepayments/cardform/OnCardFormSubmitListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/braintreepayments/cardform/OnCardFormSubmitListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormSubmitListener:Lcom/braintreepayments/cardform/OnCardFormSubmitListener;

    .line 179
    return-void
.end method

.method public setOnCardFormValidListener(Lcom/braintreepayments/cardform/OnCardFormValidListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/braintreepayments/cardform/OnCardFormValidListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormValidListener:Lcom/braintreepayments/cardform/OnCardFormValidListener;

    .line 170
    return-void
.end method

.method public setOnFormFieldFocusedListener(Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CardForm;->mOnCardFormFieldFocusedListener:Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;

    .line 187
    return-void
.end method

.method public setPostalCodeError()V
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCodeRequired:Z

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setError(Z)V

    .line 280
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumberRequired:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationRequired:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvRequired:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->requestEditTextFocus(Landroid/widget/EditText;)V

    .line 285
    :cond_2
    return-void
.end method

.method public setRequiredFields(Landroid/app/Activity;ZZZZLjava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cardNumberRequired"    # Z
    .param p3, "expirationRequired"    # Z
    .param p4, "cvvRequired"    # Z
    .param p5, "postalCodeRequired"    # Z
    .param p6, "imeActionLabel"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2000

    const/4 v3, 0x5

    const/16 v2, 0x8

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 112
    :cond_0
    iput-boolean p2, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumberRequired:Z

    .line 113
    iput-boolean p3, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationRequired:Z

    .line 114
    iput-boolean p4, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvRequired:Z

    .line 115
    iput-boolean p5, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCodeRequired:Z

    .line 117
    if-eqz p2, :cond_2

    .line 118
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    :goto_0
    if-eqz p3, :cond_3

    .line 124
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    :goto_1
    if-nez p4, :cond_1

    if-eqz p5, :cond_4

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, v3}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setImeOptions(I)V

    .line 135
    :goto_2
    if-eqz p4, :cond_6

    .line 136
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    if-eqz p5, :cond_5

    .line 138
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, v3}, Lcom/braintreepayments/cardform/view/CvvEditText;->setImeOptions(I)V

    .line 146
    :goto_3
    if-eqz p5, :cond_7

    .line 147
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-direct {p0, v0, p6}, Lcom/braintreepayments/cardform/view/CardForm;->setIMEOptionsForLastEditTestField(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 153
    :goto_4
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->setOnCardTypeChangedListener(Lcom/braintreepayments/cardform/view/CardEditText$OnCardTypeChangedListener;)V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->setVisibility(I)V

    .line 156
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, v2}, Lcom/braintreepayments/cardform/view/CardEditText;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, v2}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setVisibility(I)V

    goto :goto_1

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-direct {p0, v0, p6}, Lcom/braintreepayments/cardform/view/CardForm;->setIMEOptionsForLastEditTestField(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_2

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-direct {p0, v0, p6}, Lcom/braintreepayments/cardform/view/CardForm;->setIMEOptionsForLastEditTestField(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_3

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, v2}, Lcom/braintreepayments/cardform/view/CvvEditText;->setVisibility(I)V

    goto :goto_3

    .line 150
    :cond_7
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, v2}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setVisibility(I)V

    goto :goto_4
.end method

.method public validate()V
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumberRequired:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCardNumber:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->validate()V

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationRequired:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mExpirationView:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->validate()V

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvRequired:Z

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mCvvView:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->validate()V

    .line 234
    :cond_2
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCodeRequired:Z

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->mPostalCode:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->validate()V

    .line 237
    :cond_3
    return-void
.end method

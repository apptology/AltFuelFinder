.class public Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;
.super Lcom/braintreepayments/api/dropin/BraintreeViewController;
.source "AddPaymentMethodViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/braintreepayments/cardform/OnCardFormSubmitListener;
.implements Lcom/braintreepayments/cardform/OnCardFormValidListener;
.implements Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;


# static fields
.field private static final EXTRA_FORM_IS_SUBMITTING:Ljava/lang/String; = "com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING"

.field private static final EXTRA_SUBMIT_BUTTON_ENABLED:Ljava/lang/String; = "com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED"

.field private static final INTEGRATION_METHOD:Ljava/lang/String; = "dropin"


# instance fields
.field private mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

.field private mDescription:Landroid/view/View;

.field private mIsSubmitting:Z

.field private mLoadingHeader:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

.field private mPaymentButton:Lcom/braintreepayments/api/dropin/view/PaymentButton;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSubmitButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/os/Bundle;Landroid/view/View;Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/dropin/Customization;)V
    .locals 1
    .param p1, "activity"    # Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "root"    # Landroid/view/View;
    .param p4, "braintree"    # Lcom/braintreepayments/api/Braintree;
    .param p5, "customization"    # Lcom/braintreepayments/api/dropin/Customization;

    .prologue
    .line 51
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/braintreepayments/api/dropin/BraintreeViewController;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/view/View;Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/dropin/Customization;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mIsSubmitting:Z

    .line 54
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->initViews()V

    .line 55
    invoke-direct {p0, p2}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->restoreState(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private getCardBuilder()Lcom/braintreepayments/api/models/CardBuilder;
    .locals 3

    .prologue
    .line 147
    new-instance v1, Lcom/braintreepayments/api/models/CardBuilder;

    invoke-direct {v1}, Lcom/braintreepayments/api/models/CardBuilder;-><init>()V

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v2}, Lcom/braintreepayments/cardform/view/CardForm;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/models/CardBuilder;->cardNumber(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v2}, Lcom/braintreepayments/cardform/view/CardForm;->getExpirationMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/models/CardBuilder;->expirationMonth(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v2}, Lcom/braintreepayments/cardform/view/CardForm;->getExpirationYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/models/CardBuilder;->expirationYear(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;

    move-result-object v1

    const-string v2, "dropin"

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/models/CardBuilder;->integration(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;

    move-result-object v0

    .line 153
    .local v0, "cardBuilder":Lcom/braintreepayments/api/models/CardBuilder;
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v1}, Lcom/braintreepayments/api/Braintree;->isCvvChallenegePresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->getCvv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/CardBuilder;->cvv(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v1}, Lcom/braintreepayments/api/Braintree;->isPostalCodeChallengePresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/CardBuilder;->postalCode(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;

    .line 160
    :cond_1
    return-object v0
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 59
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_header_container:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mLoadingHeader:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    .line 60
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_form_scroll_container:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mScrollView:Landroid/widget/ScrollView;

    .line 61
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_description_container:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->findView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mDescription:Landroid/view/View;

    .line 62
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_payment_button:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/PaymentButton;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mPaymentButton:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    .line 63
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_card_form:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/CardForm;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    .line 64
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_card_form_submit_button:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mPaymentButton:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mPaymentButton:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getAndroidPayCart()Lcom/google/android/gms/wallet/Cart;

    move-result-object v1

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v3}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getAndroidPayIsBillingAgreement()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->setAndroidPayOptions(Lcom/google/android/gms/wallet/Cart;ZZZ)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mPaymentButton:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0, v1, v3}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->initialize(Landroid/app/Activity;Lcom/braintreepayments/api/Braintree;)V

    .line 75
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v3}, Lcom/braintreepayments/api/Braintree;->isCvvChallenegePresent()Z

    move-result v4

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v3}, Lcom/braintreepayments/api/Braintree;->isPostalCodeChallengePresent()Z

    move-result v5

    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->getCustomizedCallToAction()Ljava/lang/String;

    move-result-object v6

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/braintreepayments/cardform/view/CardForm;->setRequiredFields(Landroid/app/Activity;ZZZZLjava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardForm;->setOnCardFormValidListener(Lcom/braintreepayments/cardform/OnCardFormValidListener;)V

    .line 78
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardForm;->setOnCardFormSubmitListener(Lcom/braintreepayments/cardform/OnCardFormSubmitListener;)V

    .line 79
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardForm;->setOnFormFieldFocusedListener(Lcom/braintreepayments/cardform/OnCardFormFieldFocusedListener;)V

    .line 81
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->getSubmitButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mIsSubmitting:Z

    .line 88
    iget-boolean v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mIsSubmitting:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->setUIForSubmit()V

    .line 93
    :cond_0
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    const-string v1, "com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardForm;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->setEnabledSubmitButtonStyle()V

    .line 100
    :cond_2
    return-void
.end method

.method private setDisabledSubmitButtonStyle()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    sget v1, Lcom/braintreepayments/api/dropin/R$color;->bt_button_disabled_color:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 238
    return-void
.end method

.method private setEnabledSubmitButtonStyle()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    sget v1, Lcom/braintreepayments/api/dropin/R$drawable;->bt_submit_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    return-void
.end method

.method private setUIForSubmit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/CardForm;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mDescription:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mLoadingHeader:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setLoading()V

    .line 226
    return-void
.end method

.method private showErrorUI()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mLoadingHeader:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    sget v2, Lcom/braintreepayments/api/dropin/R$string;->bt_invalid_card:I

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setError(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private startSubmit()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardForm;->closeSoftKeyboard()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mIsSubmitting:Z

    .line 217
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->setUIForSubmit()V

    .line 218
    return-void
.end method


# virtual methods
.method protected endSubmit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->setDisabledSubmitButtonStyle()V

    .line 209
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/CardForm;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mIsSubmitting:Z

    .line 212
    return-void
.end method

.method protected isSubmitting()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mIsSubmitting:Z

    return v0
.end method

.method public onCardFormFieldFocused(Landroid/view/View;)V
    .locals 4
    .param p1, "field"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController$1;

    invoke-direct {v1, p0, p1}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController$1;-><init>(Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method

.method public onCardFormSubmit()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 135
    return-void
.end method

.method public onCardFormValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->setEnabledSubmitButtonStyle()V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->setDisabledSubmitButtonStyle()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mPaymentButton:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    if-ne p1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->showLoadingView()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardForm;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->startSubmit()V

    .line 115
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->getCardBuilder()Lcom/braintreepayments/api/models/CardBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->create(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardForm;->validate()V

    .line 118
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->setDisabledSubmitButtonStyle()V

    goto :goto_0
.end method

.method public onPaymentResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mIsSubmitting:Z

    .line 165
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mBraintree:Lcom/braintreepayments/api/Braintree;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/braintreepayments/api/Braintree;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING"

    iget-boolean v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mIsSubmitting:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED"

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public setErrors(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/braintreepayments/api/exceptions/ErrorWithResponse;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->endSubmit()V

    .line 171
    const-string v1, "creditCard"

    invoke-virtual {p1, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->errorFor(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v0

    .line 172
    .local v0, "cardErrors":Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;
    if-eqz v0, :cond_5

    .line 173
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v2, "add-card.failed"

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 175
    const-string v1, "number"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->errorFor(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->setCardNumberError()V

    .line 179
    :cond_0
    const-string v1, "expirationYear"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->errorFor(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "expirationMonth"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->errorFor(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "expirationDate"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->errorFor(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->setExpirationError()V

    .line 185
    :cond_2
    const-string v1, "cvv"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->errorFor(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 186
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->setCvvError()V

    .line 189
    :cond_3
    const-string v1, "billingAddress"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->errorFor(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 190
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mCardForm:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->setPostalCodeError()V

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->showErrorUI()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    new-instance v2, Lcom/braintreepayments/api/exceptions/UnexpectedException;

    invoke-virtual {p1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/braintreepayments/api/exceptions/UnexpectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->onUnrecoverableError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected showSuccess()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mLoadingHeader:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setSuccessful()V

    .line 230
    return-void
.end method

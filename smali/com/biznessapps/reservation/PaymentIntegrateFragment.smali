.class public Lcom/biznessapps/reservation/PaymentIntegrateFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "PaymentIntegrateFragment.java"


# static fields
.field private static final REQUEST_CODE_PAYMENT:I = 0x1


# instance fields
.field private clientId:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private subTotal:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method private doPayment()V
    .locals 4

    .prologue
    .line 101
    const-string v2, "sale"

    invoke-direct {p0, v2}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getThingToBuy(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v1

    .line 102
    .local v1, "thingToBuy":Lcom/paypal/android/sdk/payments/PayPalPayment;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    const-class v3, Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.paypal.android.sdk.payment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    return-void
.end method

.method private getConfig(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/UrlWrapper;->isUseSandbox()Z

    move-result v1

    .line 87
    .local v1, "useSandbox":Z
    if-eqz v1, :cond_0

    const-string v0, "sandbox"

    .line 88
    .local v0, "environment":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-direct {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;-><init>()V

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->environment(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->clientId(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    return-object v2

    .line 87
    .end local v0    # "environment":Ljava/lang/String;
    :cond_0
    const-string v0, "live"

    goto :goto_0
.end method

.method private getThingToBuy(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalPayment;
    .locals 4
    .param p1, "paymentIntent"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lcom/paypal/android/sdk/payments/PayPalPayment;

    iget v1, p0, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->subTotal:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->currency:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->serviceName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/paypal/android/sdk/payments/PayPalPayment;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private initValues()V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CURRENCY_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->currency:Ljava/lang/String;

    .line 96
    const-string v1, "serviceName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->serviceName:Ljava/lang/String;

    .line 97
    const-string v1, "subTotal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->subTotal:F

    .line 98
    return-void
.end method

.method private sendResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->setResult(I)V

    .line 114
    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 115
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_payment_layout:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 56
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 57
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 58
    const-string v2, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    .line 59
    .local v0, "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->getProofOfPayment()Lcom/paypal/android/sdk/payments/ProofOfPayment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/ProofOfPayment;->getPaymentId()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "payKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    const-string v3, "paymentTransactionID"

    invoke-virtual {v2, v3, v1}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 62
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->sendResult(I)V

    .line 71
    .end local v0    # "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    .end local v1    # "payKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    if-nez p2, :cond_2

    .line 65
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->sendResult(I)V

    goto :goto_0

    .line 66
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 68
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->sendResult(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->initSettingsData()V

    .line 38
    invoke-direct {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->initValues()V

    .line 41
    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CLIENT_ID_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->clientId:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    const-class v2, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    iget-object v2, p0, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->clientId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getConfig(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    invoke-direct {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->doPayment()V

    .line 50
    iget-object v1, p0, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->root:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/PaymentIntegrateFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    const-class v3, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->stopService(Landroid/content/Intent;)Z

    .line 77
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroy()V

    .line 78
    return-void
.end method

.class public Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;
.super Landroid/app/Activity;
.source "BraintreePaymentActivity.java"

# interfaces
.implements Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;
.implements Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;
.implements Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;
.implements Lcom/braintreepayments/api/Braintree$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;
    }
.end annotation


# static fields
.field public static final BRAINTREE_RESULT_DEVELOPER_ERROR:I = 0x2

.field public static final BRAINTREE_RESULT_SERVER_ERROR:I = 0x3

.field public static final BRAINTREE_RESULT_SERVER_UNAVAILABLE:I = 0x4

.field public static final EXTRA_ANDROID_PAY_CART:Ljava/lang/String; = "com.braintreepayments.api.dropin.EXTRA_CART"

.field public static final EXTRA_ANDROID_PAY_IS_BILLING_AGREEMENT:Ljava/lang/String; = "com.braintreepayments.api.dropin.EXTRA_ANDROID_PAY_IS_BILLING_AGREEMENT"

.field public static final EXTRA_CLIENT_TOKEN:Ljava/lang/String; = "com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN"

.field public static final EXTRA_CUSTOMIZATION:Ljava/lang/String; = "com.braintreepayments.api.dropin.EXTRA_CUSTOMIZATION"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE"

.field public static final EXTRA_PAYMENT_METHOD:Ljava/lang/String; = "com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD"

.field public static final EXTRA_PAYMENT_METHOD_NONCE:Ljava/lang/String; = "com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD_NONCE"

.field private static final ON_PAYMENT_METHOD_ADD_FORM_KEY:Ljava/lang/String; = "com.braintreepayments.api.dropin.PAYMENT_METHOD_ADD_FORM"


# instance fields
.field private mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

.field private mBraintree:Lcom/braintreepayments/api/Braintree;

.field private mCustomization:Lcom/braintreepayments/api/dropin/Customization;

.field private mHavePaymentMethodsBeenReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectPaymentMethodViewController:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mHavePaymentMethodsBeenReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 459
    return-void
.end method

.method static synthetic access$100(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mHavePaymentMethodsBeenReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->findView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private customizeActionBar()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 367
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 369
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization;->getActionBarTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    sget v1, Lcom/braintreepayments/api/dropin/R$string;->bt_default_action_bar_text:I

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 377
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization;->getActionBarLogo()I

    move-result v1

    if-nez v1, :cond_2

    .line 378
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 386
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    :goto_1
    return-void

    .line 373
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization;->getActionBarTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization;->getActionBarLogo()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(I)V

    goto :goto_1
.end method

.method private findView(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private finishCreate()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->endSubmit()V

    .line 244
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->initSelectPaymentMethodView()V

    .line 245
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSelectPaymentMethodViewController:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;->onPaymentMethodSelected(I)V

    .line 246
    return-void
.end method

.method private getClientToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "clientToken":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 355
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    if-nez v0, :cond_0

    .line 357
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A client token must be specified with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".EXTRA_CLIENT_TOKEN extra"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    return-object v0
.end method

.method private getCustomization()Lcom/braintreepayments/api/dropin/Customization;
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_CUSTOMIZATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/Customization;

    .line 390
    .local v0, "customization":Lcom/braintreepayments/api/dropin/Customization;
    if-nez v0, :cond_0

    .line 391
    new-instance v1, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;

    invoke-direct {v1}, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->build()Lcom/braintreepayments/api/dropin/Customization;

    move-result-object v0

    .line 394
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0}, Lcom/braintreepayments/api/Braintree;->setIntegrationDropin()V

    .line 149
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "sdk.initialized"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/Braintree;->addListener(Lcom/braintreepayments/api/Braintree$Listener;)V

    .line 151
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0}, Lcom/braintreepayments/api/Braintree;->unlockListeners()V

    .line 153
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0}, Lcom/braintreepayments/api/Braintree;->hasCachedCards()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "com.braintreepayments.api.dropin.PAYMENT_METHOD_ADD_FORM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->showAddPaymentMethodView()V

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0}, Lcom/braintreepayments/api/Braintree;->getCachedPaymentMethods()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->onPaymentMethodsUpdated(Ljava/util/List;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0}, Lcom/braintreepayments/api/Braintree;->getPaymentMethods()V

    .line 161
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->waitForData()V

    goto :goto_0
.end method

.method private initAddPaymentMethodView(Landroid/view/View;)V
    .locals 6
    .param p1, "paymentMethodView"    # Landroid/view/View;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    iget-object v5, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/os/Bundle;Landroid/view/View;Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/dropin/Customization;)V

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    .line 336
    :cond_0
    return-void
.end method

.method private initSelectPaymentMethodView()V
    .locals 6

    .prologue
    .line 311
    sget-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->SELECT_VIEW:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->show(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    move-result-object v3

    .line 313
    .local v3, "selectMethodView":Landroid/view/View;
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSelectPaymentMethodViewController:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    iget-object v5, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/os/Bundle;Landroid/view/View;Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/dropin/Customization;)V

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSelectPaymentMethodViewController:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;

    .line 318
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setActionBarUpEnabled(Z)V

    .line 319
    return-void
.end method

.method private saveState(Lcom/braintreepayments/api/dropin/BraintreeViewController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "viewController"    # Lcom/braintreepayments/api/dropin/BraintreeViewController;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 450
    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p1, p2}, Lcom/braintreepayments/api/dropin/BraintreeViewController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 453
    :cond_0
    return-void
.end method

.method private setActionBarUpEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 344
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 346
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 350
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    return-void
.end method

.method private waitForData()V
    .locals 5

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;

    invoke-direct {v1, p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)V

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 307
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->showLoadingView()V

    .line 308
    return-void
.end method


# virtual methods
.method protected finalizeSelection(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 3
    .param p1, "paymentMethod"    # Lcom/braintreepayments/api/models/PaymentMethod;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v2, "sdk.exit.success"

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 287
    const-string v1, "com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD_NONCE"

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finish()V

    .line 290
    return-void
.end method

.method protected getAndroidPayCart()Lcom/google/android/gms/wallet/Cart;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.braintreepayments.api.dropin.EXTRA_CART"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/Cart;

    return-object v0
.end method

.method protected getAndroidPayIsBillingAgreement()Z
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.braintreepayments.api.dropin.EXTRA_ANDROID_PAY_IS_BILLING_AGREEMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x2e64

    .line 183
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 184
    if-ne p1, v2, :cond_0

    .line 186
    sget-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->CARD_FORM:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->inflateOrFind(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->initAddPaymentMethodView(Landroid/view/View;)V

    .line 187
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->showLoadingView()V

    .line 188
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->onPaymentResult(IILandroid/content/Intent;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    if-nez p2, :cond_2

    .line 192
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "add-paypal.user-canceled"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 194
    :cond_2
    if-ne p1, v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->showAddPaymentMethodView()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 416
    sget-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->CARD_FORM:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    # getter for: Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mCurrentView:Z
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->access$000(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0}, Lcom/braintreepayments/api/Braintree;->getCachedPaymentMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->initSelectPaymentMethodView()V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->isSubmitting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "sdk.exit.user-canceled"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 426
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(I)V

    .line 427
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finish()V

    goto :goto_0
.end method

.method public onBraintreeSetupFinished(ZLcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "setupSuccessful"    # Z
    .param p2, "braintree"    # Lcom/braintreepayments/api/Braintree;
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    const/4 v0, 0x3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finish()V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-object p2, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    .line 143
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->init()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    sget v0, Lcom/braintreepayments/api/dropin/R$layout;->bt_drop_in_ui:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setContentView(I)V

    .line 121
    if-eqz p1, :cond_0

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    :goto_0
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 122
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getCustomization()Lcom/braintreepayments/api/dropin/Customization;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    .line 123
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->customizeActionBar()V

    .line 125
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-static {p0, v0}, Lcom/braintreepayments/api/Braintree;->restoreSavedInstanceState(Landroid/content/Context;Landroid/os/Bundle;)Lcom/braintreepayments/api/Braintree;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    .line 126
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    if-eqz v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->init()V

    .line 132
    :goto_1
    return-void

    .line 121
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getClientToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/braintreepayments/api/Braintree;->setup(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->showLoadingView()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->onBackPressed()V

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/Braintree;->onPause(Landroid/app/Activity;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onPaymentMethodCreated(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 5
    .param p1, "paymentMethod"    # Lcom/braintreepayments/api/models/PaymentMethod;

    .prologue
    .line 213
    instance-of v0, p1, Lcom/braintreepayments/api/models/Card;

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "venmo-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finishCreate()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "add-card.success"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->showSuccess()V

    .line 221
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$1;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Lcom/braintreepayments/api/models/PaymentMethod;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 233
    :cond_2
    instance-of v0, p1, Lcom/braintreepayments/api/models/PayPalAccount;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "add-paypal.success"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finishCreate()V

    goto :goto_0

    .line 236
    :cond_3
    instance-of v0, p1, Lcom/braintreepayments/api/models/AndroidPayCard;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "add-android-pay.success"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finishCreate()V

    goto :goto_0
.end method

.method public onPaymentMethodsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mHavePaymentMethodsBeenReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->showAddPaymentMethodView()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->initSelectPaymentMethodView()V

    goto :goto_0
.end method

.method public onRecoverableError(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    .locals 1
    .param p1, "error"    # Lcom/braintreepayments/api/exceptions/ErrorWithResponse;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->setErrors(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    .line 279
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/Braintree;->onResume(Landroid/app/Activity;)V

    .line 171
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 435
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN"

    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->CARD_FORM:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    # getter for: Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mCurrentView:Z
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->access$000(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const-string v0, "com.braintreepayments.api.dropin.PAYMENT_METHOD_ADD_FORM"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mAddPaymentMethodViewController:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    invoke-direct {p0, v0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->saveState(Lcom/braintreepayments/api/dropin/BraintreeViewController;Landroid/os/Bundle;)V

    .line 442
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mSelectPaymentMethodViewController:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;

    invoke-direct {p0, v0, p1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->saveState(Lcom/braintreepayments/api/dropin/BraintreeViewController;Landroid/os/Bundle;)V

    .line 444
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/Braintree;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 447
    :cond_1
    return-void
.end method

.method public onUnrecoverableError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 251
    sget-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->LOADING_VIEW:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    # getter for: Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->mCurrentView:Z
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->access$000(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mHavePaymentMethodsBeenReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mHavePaymentMethodsBeenReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->showAddPaymentMethodView()V

    .line 274
    :goto_0
    return-void

    .line 255
    :cond_0
    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/AuthenticationException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/AuthorizationException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/UpgradeRequiredException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/ConfigurationException;

    if-eqz v0, :cond_3

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "sdk.exit.developer-error"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 272
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->finish()V

    goto :goto_0

    .line 262
    :cond_3
    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/ServerException;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/UnexpectedException;

    if-eqz v0, :cond_5

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "sdk.exit.server-error"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 266
    :cond_5
    instance-of v0, p1, Lcom/braintreepayments/api/exceptions/DownForMaintenanceException;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "sdk.exit.server-unavailable"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.dropin.EXTRA_ERROR_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method protected showAddPaymentMethodView()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    const-string v1, "add-card.start"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->CARD_FORM:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->show(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->initAddPaymentMethodView(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0}, Lcom/braintreepayments/api/Braintree;->getCachedPaymentMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->setActionBarUpEnabled(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method protected showLoadingView()V
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->LOADING_VIEW:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$StubbedView;->show(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    .line 340
    return-void
.end method

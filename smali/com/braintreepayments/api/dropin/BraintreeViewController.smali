.class public abstract Lcom/braintreepayments/api/dropin/BraintreeViewController;
.super Ljava/lang/Object;
.source "BraintreeViewController.java"


# instance fields
.field protected mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

.field protected final mBraintree:Lcom/braintreepayments/api/Braintree;

.field private final mCustomization:Lcom/braintreepayments/api/dropin/Customization;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/view/View;Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/dropin/Customization;)V
    .locals 0
    .param p1, "activity"    # Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "braintree"    # Lcom/braintreepayments/api/Braintree;
    .param p4, "customization"    # Lcom/braintreepayments/api/dropin/Customization;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    .line 22
    iput-object p2, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mRootView:Landroid/view/View;

    .line 23
    iput-object p3, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mBraintree:Lcom/braintreepayments/api/Braintree;

    .line 24
    iput-object p4, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    .line 25
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/BraintreeViewController;->initDescriptionView()V

    .line 26
    return-void
.end method

.method private initDescriptionSubview(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/dropin/BraintreeViewController;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "subview":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .end local v0    # "subview":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initDescriptionView()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/Customization;->getPrimaryDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_primary_description:I

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization;->getPrimaryDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreeViewController;->initDescriptionSubview(ILjava/lang/String;)V

    .line 56
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_secondary_description:I

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization;->getSecondaryDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreeViewController;->initDescriptionSubview(ILjava/lang/String;)V

    .line 57
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_description_amount:I

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/braintreepayments/api/dropin/BraintreeViewController;->initDescriptionSubview(ILjava/lang/String;)V

    .line 59
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_description_container:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/BraintreeViewController;->findView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public findView(I)Landroid/view/View;
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
    .line 75
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomizedCallToAction()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization;->getSubmitButtonText()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "actionText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mActivity:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    sget v2, Lcom/braintreepayments/api/dropin/R$string;->bt_default_submit_button_text:I

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method

.method protected getSubmitButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/BraintreeViewController;->getCustomizedCallToAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "submitText":Ljava/lang/String;
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/Customization;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/BraintreeViewController;->mCustomization:Lcom/braintreepayments/api/dropin/Customization;

    invoke-virtual {v2}, Lcom/braintreepayments/api/dropin/Customization;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

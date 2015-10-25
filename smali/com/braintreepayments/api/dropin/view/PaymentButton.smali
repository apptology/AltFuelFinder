.class public Lcom/braintreepayments/api/dropin/view/PaymentButton;
.super Landroid/widget/RelativeLayout;
.source "PaymentButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final REQUEST_CODE:I = 0x2e64


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdditionalScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBraintree:Lcom/braintreepayments/api/Braintree;

.field private mCart:Lcom/google/android/gms/wallet/Cart;

.field private mIsBillingAgreement:Z

.field private mPhoneNumberRequired:Z

.field private mRequestCode:I

.field private mShippingAddressRequired:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method private enableButton(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonCount"    # I

    .prologue
    .line 204
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/high16 v3, 0x40400000    # 3.0f

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 209
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    return-void
.end method


# virtual methods
.method public initialize(Landroid/app/Activity;Lcom/braintreepayments/api/Braintree;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "braintree"    # Lcom/braintreepayments/api/Braintree;

    .prologue
    .line 79
    const/16 v0, 0x2e64

    invoke-virtual {p0, p1, p2, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->initialize(Landroid/app/Activity;Lcom/braintreepayments/api/Braintree;I)V

    .line 80
    return-void
.end method

.method public initialize(Landroid/app/Activity;Lcom/braintreepayments/api/Braintree;I)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "braintree"    # Lcom/braintreepayments/api/Braintree;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 91
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mActivity:Landroid/app/Activity;

    .line 92
    iput-object p2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mBraintree:Lcom/braintreepayments/api/Braintree;

    .line 93
    iput p3, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mRequestCode:I

    .line 95
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/braintreepayments/api/dropin/R$layout;->bt_payment_button:I

    invoke-static {v6, v7, p0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    iget-object v6, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v6}, Lcom/braintreepayments/api/Braintree;->isPayPalEnabled()Z

    move-result v2

    .line 98
    .local v2, "isPayPalEnabled":Z
    iget-object v6, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v6}, Lcom/braintreepayments/api/Braintree;->isVenmoEnabled()Z

    move-result v3

    .line 99
    .local v3, "isVenmoEnabled":Z
    iget-object v6, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v6}, Lcom/braintreepayments/api/Braintree;->isAndroidPayEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mCart:Lcom/google/android/gms/wallet/Cart;

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mIsBillingAgreement:Z

    if-eqz v6, :cond_2

    :cond_0
    move v1, v4

    .line 100
    .local v1, "isAndroidPayEnabled":Z
    :goto_0
    const/4 v0, 0x0

    .line 101
    .local v0, "buttonCount":I
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 102
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->setVisibility(I)V

    .line 133
    :cond_1
    :goto_1
    return-void

    .end local v0    # "buttonCount":I
    .end local v1    # "isAndroidPayEnabled":Z
    :cond_2
    move v1, v5

    .line 99
    goto :goto_0

    .line 104
    .restart local v0    # "buttonCount":I
    .restart local v1    # "isAndroidPayEnabled":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_4
    if-eqz v3, :cond_5

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_5
    if-eqz v1, :cond_6

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_6
    if-eqz v2, :cond_7

    .line 115
    sget v6, Lcom/braintreepayments/api/dropin/R$id;->bt_paypal_button:I

    invoke-virtual {p0, v6}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->enableButton(Landroid/view/View;I)V

    .line 117
    :cond_7
    if-eqz v3, :cond_8

    .line 118
    sget v6, Lcom/braintreepayments/api/dropin/R$id;->bt_venmo_button:I

    invoke-virtual {p0, v6}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->enableButton(Landroid/view/View;I)V

    .line 120
    :cond_8
    if-eqz v1, :cond_9

    .line 121
    sget v6, Lcom/braintreepayments/api/dropin/R$id;->bt_android_pay_button:I

    invoke-virtual {p0, v6}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->enableButton(Landroid/view/View;I)V

    .line 124
    :cond_9
    if-eqz v2, :cond_b

    if-le v0, v4, :cond_b

    .line 125
    sget v4, Lcom/braintreepayments/api/dropin/R$id;->bt_payment_button_divider:I

    invoke-virtual {p0, v4}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_a
    :goto_2
    const/4 v4, 0x2

    if-le v0, v4, :cond_1

    .line 130
    sget v4, Lcom/braintreepayments/api/dropin/R$id;->bt_payment_button_divider_2:I

    invoke-virtual {p0, v4}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 126
    :cond_b
    if-eqz v3, :cond_a

    if-le v0, v4, :cond_a

    .line 127
    sget v4, Lcom/braintreepayments/api/dropin/R$id;->bt_payment_button_divider_2:I

    invoke-virtual {p0, v4}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 198
    iget v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mRequestCode:I

    if-ne p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mBraintree:Lcom/braintreepayments/api/Braintree;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/braintreepayments/api/Braintree;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/braintreepayments/api/dropin/R$id;->bt_paypal_button:I

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mBraintree:Lcom/braintreepayments/api/Braintree;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mRequestCode:I

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mAdditionalScopes:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/braintreepayments/api/Braintree;->startPayWithPayPal(Landroid/app/Activity;ILjava/util/List;)V

    .line 186
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->performClick()Z

    .line 187
    return-void

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/braintreepayments/api/dropin/R$id;->bt_venmo_button:I

    if-ne v0, v1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mBraintree:Lcom/braintreepayments/api/Braintree;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mRequestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/braintreepayments/api/Braintree;->startPayWithVenmo(Landroid/app/Activity;I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/braintreepayments/api/dropin/R$id;->bt_android_pay_button:I

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mBraintree:Lcom/braintreepayments/api/Braintree;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mRequestCode:I

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mCart:Lcom/google/android/gms/wallet/Cart;

    iget-boolean v4, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mIsBillingAgreement:Z

    iget-boolean v5, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mShippingAddressRequired:Z

    iget-boolean v6, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mPhoneNumberRequired:Z

    invoke-virtual/range {v0 .. v6}, Lcom/braintreepayments/api/Braintree;->performAndroidPayMaskedWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V

    goto :goto_0
.end method

.method public setAdditionalPayPalScopes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "additionalScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mAdditionalScopes:Ljava/util/List;

    .line 173
    return-void
.end method

.method public setAndroidPayOptions(Lcom/google/android/gms/wallet/Cart;)V
    .locals 1
    .param p1, "cart"    # Lcom/google/android/gms/wallet/Cart;

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->setAndroidPayOptions(Lcom/google/android/gms/wallet/Cart;ZZZ)V

    .line 144
    return-void
.end method

.method public setAndroidPayOptions(Lcom/google/android/gms/wallet/Cart;ZZZ)V
    .locals 0
    .param p1, "cart"    # Lcom/google/android/gms/wallet/Cart;
    .param p2, "isBillingAgreement"    # Z
    .param p3, "shippingAddressRequired"    # Z
    .param p4, "phoneNumberRequired"    # Z

    .prologue
    .line 158
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mCart:Lcom/google/android/gms/wallet/Cart;

    .line 159
    iput-boolean p2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mIsBillingAgreement:Z

    .line 160
    iput-boolean p3, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mShippingAddressRequired:Z

    .line 161
    iput-boolean p4, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->mPhoneNumberRequired:Z

    .line 162
    return-void
.end method

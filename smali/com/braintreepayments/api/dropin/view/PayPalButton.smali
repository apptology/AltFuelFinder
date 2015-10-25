.class public Lcom/braintreepayments/api/dropin/view/PayPalButton;
.super Landroid/widget/ImageButton;
.source "PayPalButton.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/view/PayPalButton;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/view/PayPalButton;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/view/PayPalButton;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/braintreepayments/api/dropin/R$drawable;->bt_paypal_button_background:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/view/PayPalButton;->setBackgroundResource(I)V

    .line 35
    sget v0, Lcom/braintreepayments/api/dropin/R$drawable;->bt_paypal_button:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/view/PayPalButton;->setImageResource(I)V

    .line 36
    return-void
.end method

.class public Lcom/braintreepayments/api/exceptions/ConfigurationException;
.super Lcom/braintreepayments/api/exceptions/BraintreeException;
.source "ConfigurationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/exceptions/BraintreeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method

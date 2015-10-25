.class public Lcom/braintreepayments/api/exceptions/ServerException;
.super Lcom/braintreepayments/api/exceptions/BraintreeException;
.source "ServerException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/braintreepayments/api/exceptions/BraintreeException;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/exceptions/BraintreeException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

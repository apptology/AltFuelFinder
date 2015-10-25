.class public Lcom/braintreepayments/api/exceptions/DownForMaintenanceException;
.super Lcom/braintreepayments/api/exceptions/BraintreeException;
.source "DownForMaintenanceException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/braintreepayments/api/exceptions/BraintreeException;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/exceptions/BraintreeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method

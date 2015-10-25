.class public interface abstract Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Lcom/braintreepayments/api/Braintree$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/Braintree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaymentMethodsUpdatedListener"
.end annotation


# virtual methods
.method public abstract onPaymentMethodsUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation
.end method

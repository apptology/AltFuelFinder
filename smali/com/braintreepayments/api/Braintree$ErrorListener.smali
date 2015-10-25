.class public interface abstract Lcom/braintreepayments/api/Braintree$ErrorListener;
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
    name = "ErrorListener"
.end annotation


# virtual methods
.method public abstract onRecoverableError(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
.end method

.method public abstract onUnrecoverableError(Ljava/lang/Throwable;)V
.end method

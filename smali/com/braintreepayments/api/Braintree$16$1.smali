.class Lcom/braintreepayments/api/Braintree$16$1;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree$16;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/braintreepayments/api/Braintree$16;

.field final synthetic val$listener:Lcom/braintreepayments/api/Braintree$ErrorListener;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree$16;Lcom/braintreepayments/api/Braintree$ErrorListener;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$16$1;->this$1:Lcom/braintreepayments/api/Braintree$16;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$16$1;->val$listener:Lcom/braintreepayments/api/Braintree$ErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$16$1;->val$listener:Lcom/braintreepayments/api/Braintree$ErrorListener;

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree$16$1;->this$1:Lcom/braintreepayments/api/Braintree$16;

    iget-object v1, v1, Lcom/braintreepayments/api/Braintree$16;->val$error:Lcom/braintreepayments/api/exceptions/ErrorWithResponse;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/Braintree$ErrorListener;->onRecoverableError(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    .line 1206
    return-void
.end method

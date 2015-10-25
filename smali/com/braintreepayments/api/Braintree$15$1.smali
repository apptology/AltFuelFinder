.class Lcom/braintreepayments/api/Braintree$15$1;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree$15;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/braintreepayments/api/Braintree$15;

.field final synthetic val$listener:Lcom/braintreepayments/api/Braintree$ErrorListener;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree$15;Lcom/braintreepayments/api/Braintree$ErrorListener;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$15$1;->this$1:Lcom/braintreepayments/api/Braintree$15;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$15$1;->val$listener:Lcom/braintreepayments/api/Braintree$ErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$15$1;->val$listener:Lcom/braintreepayments/api/Braintree$ErrorListener;

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree$15$1;->this$1:Lcom/braintreepayments/api/Braintree$15;

    iget-object v1, v1, Lcom/braintreepayments/api/Braintree$15;->val$throwable:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/Braintree$ErrorListener;->onUnrecoverableError(Ljava/lang/Throwable;)V

    .line 1185
    return-void
.end method

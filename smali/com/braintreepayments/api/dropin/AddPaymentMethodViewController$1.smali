.class Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController$1;
.super Ljava/lang/Object;
.source "AddPaymentMethodViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->onCardFormFieldFocused(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

.field final synthetic val$field:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController$1;->this$0:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    iput-object p2, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController$1;->val$field:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController$1;->this$0:Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;

    # getter for: Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;->access$000(Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/AddPaymentMethodViewController$1;->val$field:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 142
    return-void
.end method

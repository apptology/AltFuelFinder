.class Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController$1;
.super Ljava/lang/Object;
.source "SelectPaymentMethodViewController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;->showPaymentMethodListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController$1;->this$0:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController$1;->this$0:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;

    # invokes: Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;->launchFormView()V
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;->access$000(Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;)V

    .line 111
    return-void
.end method

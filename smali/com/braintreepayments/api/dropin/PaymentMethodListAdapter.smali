.class public Lcom/braintreepayments/api/dropin/PaymentMethodListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PaymentMethodListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPaymentMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private mViewController:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewController"    # Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/PaymentMethodListAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/braintreepayments/api/dropin/PaymentMethodListAdapter;->mViewController:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;

    .line 28
    iput-object p3, p0, Lcom/braintreepayments/api/dropin/PaymentMethodListAdapter;->mPaymentMethods:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/PaymentMethodListAdapter;->mPaymentMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/PaymentMethodListAdapter;->mPaymentMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    new-instance v0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/PaymentMethodListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "paymentMethodView":Lcom/braintreepayments/api/dropin/view/PaymentMethodView;
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/PaymentMethodListAdapter;->mPaymentMethods:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braintreepayments/api/models/PaymentMethod;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->setPaymentMethodDetails(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 50
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/PaymentMethodListAdapter;->mViewController:Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;

    invoke-virtual {v0, p2}, Lcom/braintreepayments/api/dropin/SelectPaymentMethodViewController;->onPaymentMethodSelected(I)V

    .line 56
    return-void
.end method

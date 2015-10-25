.class Lcom/biznessapps/food_ordering/cart/CartFragment$12;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->initMyAddressesSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

.field final synthetic val$data:Ljava/util/List;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 662
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->val$text:Ljava/lang/String;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->openAccountItem(Landroid/app/Activity;Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    .line 670
    :goto_0
    return-void

    .line 665
    :cond_0
    sget v1, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 666
    .local v0, "i":I
    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->val$data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/account/AccountEntity;

    # setter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;
    invoke-static {v2, v1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1602(Lcom/biznessapps/food_ordering/cart/CartFragment;Lcom/biznessapps/food_ordering/account/AccountEntity;)Lcom/biznessapps/food_ordering/account/AccountEntity;

    .line 667
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    const/4 v2, 0x0

    # setter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->useNewLocationData:Z
    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1702(Lcom/biznessapps/food_ordering/cart/CartFragment;Z)Z

    .line 668
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$12;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;
    invoke-static {v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1600(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-result-object v2

    # invokes: Lcom/biznessapps/food_ordering/cart/CartFragment;->initAcccountData(Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1800(Lcom/biznessapps/food_ordering/cart/CartFragment;Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    goto :goto_0
.end method

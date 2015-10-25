.class Lcom/biznessapps/food_ordering/cart/CartFragment$13;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->showConfirmationSuccessDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$holdActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$13;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$13;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$13;->val$holdActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 710
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->clear()V

    .line 712
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$13;->val$context:Landroid/content/Context;

    const-class v2, Lcom/biznessapps/food_ordering/FOMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FoodOrderingViewController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$13;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->bgUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1900(Lcom/biznessapps/food_ordering/cart/CartFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$13;->val$holdActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 717
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$13;->val$holdActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 718
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$13;->val$holdActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 719
    return-void
.end method

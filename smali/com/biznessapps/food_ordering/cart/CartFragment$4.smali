.class Lcom/biznessapps/food_ordering/cart/CartFragment$4;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$4;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$4;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_LOCATION_CHOOSER"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_LOCATION_CHOOSER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$4;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->fo_location_enter_address:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$4;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$4;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    const/16 v2, 0x16

    invoke-virtual {v1, v0, v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 295
    return-void
.end method

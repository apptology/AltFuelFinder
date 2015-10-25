.class Lcom/biznessapps/food_ordering/FoodOrderMainFragment$1;
.super Ljava/lang/Object;
.source "FoodOrderMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/FoodOrderMainFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/FoodOrderMainFragment;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$1;->this$0:Lcom/biznessapps/food_ordering/FoodOrderMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$1;->this$0:Lcom/biznessapps/food_ordering/FoodOrderMainFragment;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_ACCOUNT_CONTROLLER"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_ACCOUNT_CONTROLLER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$1;->this$0:Lcom/biznessapps/food_ordering/FoodOrderMainFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->account:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$1;->this$0:Lcom/biznessapps/food_ordering/FoodOrderMainFragment;

    # getter for: Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->bgUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->access$000(Lcom/biznessapps/food_ordering/FoodOrderMainFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$1;->this$0:Lcom/biznessapps/food_ordering/FoodOrderMainFragment;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$1;->this$0:Lcom/biznessapps/food_ordering/FoodOrderMainFragment;

    invoke-virtual {v1, v0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

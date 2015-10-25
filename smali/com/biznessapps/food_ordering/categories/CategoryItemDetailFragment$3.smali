.class Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;
.super Ljava/lang/Object;
.source "CategoryItemDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->initQuantitiesSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->val$view:Landroid/view/View;

    sget v2, Lcom/biznessapps/layout/R$id;->STRING_VALUE_TAG:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    .local v0, "viewText":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->moreText:Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$100(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->val$view:Landroid/view/View;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->showQuantityDialog(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$200(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantityViewList:Ljava/util/List;
    invoke-static {v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$300(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->deactivateViews(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$400(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Ljava/util/List;)V

    .line 227
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->val$view:Landroid/view/View;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->activateView(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$500(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V

    .line 228
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;->val$view:Landroid/view/View;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->updateQuantityAndPrice(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$600(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V

    goto :goto_0
.end method

.class Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;
.super Ljava/lang/Object;
.source "CategoryItemDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->initSizesSection()V
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
    .line 262
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->sizesViewList:Ljava/util/List;
    invoke-static {v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$700(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->deactivateViews(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$400(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Ljava/util/List;)V

    .line 267
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->val$view:Landroid/view/View;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->activateView(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$500(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V

    .line 268
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->val$view:Landroid/view/View;

    sget v2, Lcom/biznessapps/layout/R$id;->FLOAT_VALUE_TAG:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 269
    .local v0, "newPrice":F
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$800(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setPrice(F)V

    .line 270
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getQuantityValue()I
    invoke-static {v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$900(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)I

    move-result v2

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->updatePriceValue(I)V
    invoke-static {v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1000(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;I)V

    .line 271
    return-void
.end method

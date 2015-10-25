.class Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$5;
.super Ljava/lang/Object;
.source "CategoryItemDetailFragment.java"

# interfaces
.implements Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->initOptionsSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$5;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(ZLcom/biznessapps/food_ordering/entities/OrderOptionEntity;)V
    .locals 2
    .param p1, "isSelected"    # Z
    .param p2, "option"    # Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$5;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$800(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->updateOptions(Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;Z)V

    .line 295
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$5;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$5;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getQuantityValue()I
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$900(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)I

    move-result v1

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->updatePriceValue(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1000(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;I)V

    .line 296
    return-void
.end method

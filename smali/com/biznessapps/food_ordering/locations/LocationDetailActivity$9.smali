.class Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$9;
.super Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
.source "LocationDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->checkAvailability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

.field final synthetic val$orderedItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$9;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$9;->val$orderedItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 466
    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$9;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 467
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$9;->getResulItems()Ljava/util/List;

    move-result-object v0

    .line 469
    .local v0, "availableItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$9;->val$orderedItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 470
    .local v3, "orderedSize":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 473
    .local v1, "availableSize":I
    if-ne v3, v1, :cond_1

    .line 474
    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$9;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->openCategoriesScreen()V
    invoke-static {v4}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$1800(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    .line 479
    .end local v0    # "availableItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    .end local v1    # "availableSize":I
    .end local v3    # "orderedSize":I
    :cond_0
    :goto_0
    return-void

    .line 476
    .restart local v0    # "availableItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    .restart local v1    # "availableSize":I
    .restart local v3    # "orderedSize":I
    :cond_1
    sget v4, Lcom/biznessapps/layout/R$string;->fo_selected_items_not_available:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "CategoryItemDetailFragment.java"


# instance fields
.field private addItemButton:Landroid/widget/Button;

.field private cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

.field private descriptionView:Landroid/widget/TextView;

.field private item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

.field private locker:Lcom/biznessapps/api/Locker;

.field private moreText:Ljava/lang/String;

.field private order:Lcom/biznessapps/food_ordering/entities/OrderEntity;

.field private priceView:Landroid/widget/TextView;

.field private quantitiesContainer:Landroid/widget/LinearLayout;

.field private quantityViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private sizesContainer:Landroid/widget/LinearLayout;

.field private sizesViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private specialInstructionView:Landroid/widget/EditText;

.field private thumbnailView:Landroid/widget/ImageView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantityViewList:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->sizesViewList:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/biznessapps/api/Locker;

    invoke-direct {v0}, Lcom/biznessapps/api/Locker;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->locker:Lcom/biznessapps/api/Locker;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->showConfirmationDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->moreText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->updatePriceValue(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->specialInstructionView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/food_ordering/entities/OrderEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->order:Lcom/biznessapps/food_ordering/entities/OrderEntity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->checkAvailability()V

    return-void
.end method

.method static synthetic access$1400(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/api/Locker;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->locker:Lcom/biznessapps/api/Locker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->goToNextStep(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->activateViewByValue(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->showQuantityDialog(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantityViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->deactivateViews(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->activateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->updateQuantityAndPrice(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->sizesViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getQuantityValue()I

    move-result v0

    return v0
.end method

.method private activateView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 503
    sget v2, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 504
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 505
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 506
    sget v2, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 507
    .local v1, "valueView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    return-void
.end method

.method private activateViewByValue(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 492
    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantityViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 493
    .local v1, "view":Landroid/view/View;
    sget v3, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 494
    .local v2, "viewValue":I
    if-ne v2, p1, :cond_0

    .line 495
    invoke-direct {p0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->activateView(Landroid/view/View;)V

    .line 496
    invoke-direct {p0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->updateQuantityAndPrice(Landroid/view/View;)V

    .line 500
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "viewValue":I
    :cond_1
    return-void
.end method

.method private checkAvailability()V
    .locals 12

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    .line 392
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 393
    new-instance v7, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$8;

    invoke-direct {v7, p0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$8;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/app/Activity;)V

    .line 400
    .local v7, "successRunnable":Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v11

    .line 401
    .local v11, "cart":Lcom/biznessapps/food_ordering/entities/CartEntity;
    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTimeStamp()J

    move-result-wide v4

    .line 402
    .local v4, "timeStamp":J
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getChosenLocation()Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getId()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "locationId":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setCategoryId(Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getViewsRef()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->tabId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .local v0, "task":Lcom/biznessapps/food_ordering/CheckAvailabilityTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 410
    .end local v0    # "task":Lcom/biznessapps/food_ordering/CheckAvailabilityTask;
    .end local v3    # "locationId":Ljava/lang/String;
    .end local v4    # "timeStamp":J
    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    .end local v7    # "successRunnable":Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
    .end local v11    # "cart":Lcom/biznessapps/food_ordering/entities/CartEntity;
    :cond_0
    return-void
.end method

.method private deactivateViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 476
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 477
    .local v4, "view":Landroid/view/View;
    sget v5, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 478
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 479
    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 480
    sget v5, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 481
    .local v3, "valueView":Landroid/widget/TextView;
    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    sget v5, Lcom/biznessapps/layout/R$id;->BOOL_VALUE_TAG:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 483
    sget v5, Lcom/biznessapps/layout/R$id;->BOOL_VALUE_TAG:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 484
    .local v2, "isMoreView":Z
    if-eqz v2, :cond_0

    .line 485
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->moreText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 489
    .end local v0    # "backgroundView":Landroid/widget/ImageView;
    .end local v2    # "isMoreView":Z
    .end local v3    # "valueView":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getItemView(Ljava/lang/String;Ljava/util/List;I)Landroid/view/View;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p3, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 542
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 543
    .local v1, "resultView":Landroid/view/View;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 544
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 545
    .local v2, "storedTimeTag":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    move-object v1, v3

    .line 550
    .end local v2    # "storedTimeTag":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private getQuantityValue()I
    .locals 4

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 521
    .local v1, "quantity":I
    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantityViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 522
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    sget v3, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 527
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return v1
.end method

.method private getSizeValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 531
    const-string v1, ""

    .line 532
    .local v1, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->sizesViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 533
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    invoke-virtual {v2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 538
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private goToNextStep(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 413
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-virtual {v2, v3}, Lcom/biznessapps/food_ordering/entities/CartEntity;->addToCart(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V

    .line 415
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FO_CONFIRMATION_PAGE"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "FO_CONFIRMATION_PAGE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v2, "TAB_LABEL"

    sget v3, Lcom/biznessapps/layout/R$string;->fo_confirmation:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 421
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v0, "closeIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 424
    return-void
.end method

.method private initOptionsSection()V
    .locals 6

    .prologue
    .line 283
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->order:Lcom/biznessapps/food_ordering/entities/OrderEntity;

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getOptions()Ljava/util/List;

    move-result-object v2

    .line 284
    .local v2, "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 285
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->options_container:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->options_list_view:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/widgets/RefreshableListView;

    .line 287
    .local v3, "optionsListView":Lcom/biznessapps/widgets/RefreshableListView;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/food_ordering/FOUtils;->addLineSeparator(Landroid/widget/ListView;Landroid/content/Context;)V

    .line 289
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "currencySign":Ljava/lang/String;
    new-instance v0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v4, v2, v5, v1}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;Ljava/lang/String;)V

    .line 291
    .local v0, "adapter":Lcom/biznessapps/food_ordering/categories/OptionsAdapter;
    new-instance v4, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$5;

    invoke-direct {v4, p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$5;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V

    invoke-virtual {v0, v4}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->setListener(Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;)V

    .line 298
    invoke-virtual {v3, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    .end local v0    # "adapter":Lcom/biznessapps/food_ordering/categories/OptionsAdapter;
    .end local v1    # "currencySign":Ljava/lang/String;
    .end local v3    # "optionsListView":Lcom/biznessapps/widgets/RefreshableListView;
    :cond_0
    return-void
.end method

.method private initQuantitiesSection()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v8, 0x1

    .line 199
    iget-object v7, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->quantity_gallery_container:I

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantitiesContainer:Landroid/widget/LinearLayout;

    .line 200
    iget-object v7, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantitiesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 201
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v10, :cond_4

    .line 202
    if-ne v1, v10, :cond_2

    move v2, v8

    .line 203
    .local v2, "isMoreView":Z
    :goto_1
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->moreText:Ljava/lang/String;

    .line 204
    .local v4, "text":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantityViewList:Ljava/util/List;

    sget v9, Lcom/biznessapps/layout/R$id;->STRING_VALUE_TAG:I

    invoke-direct {p0, v4, v7, v9}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getItemView(Ljava/lang/String;Ljava/util/List;I)Landroid/view/View;

    move-result-object v3

    .line 205
    .local v3, "storedView":Landroid/view/View;
    if-nez v3, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/biznessapps/layout/R$layout;->fo_category_quantity_item:I

    invoke-static {v7, v9}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "storedView":Landroid/view/View;
    check-cast v3, Landroid/view/ViewGroup;

    .line 207
    .restart local v3    # "storedView":Landroid/view/View;
    sget v7, Lcom/biznessapps/layout/R$id;->STRING_VALUE_TAG:I

    invoke-virtual {v3, v7, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 208
    sget v7, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 209
    iget-object v7, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantityViewList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    sget v7, Lcom/biznessapps/layout/R$id;->BOOL_VALUE_TAG:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 213
    move-object v6, v3

    .line 214
    .local v6, "view":Landroid/view/View;
    sget v7, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 215
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v7, v9}, Lcom/biznessapps/food_ordering/FOUtils;->setBackground(Landroid/widget/ImageView;Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V

    .line 216
    sget v7, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 217
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v7, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;

    invoke-direct {v7, p0, v6}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$3;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    if-ne v1, v8, :cond_1

    .line 233
    invoke-virtual {v6}, Landroid/view/View;->performClick()Z

    .line 235
    :cond_1
    iget-object v7, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantitiesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "backgroundView":Landroid/widget/ImageView;
    .end local v2    # "isMoreView":Z
    .end local v3    # "storedView":Landroid/view/View;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 203
    .restart local v2    # "isMoreView":Z
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 237
    .end local v2    # "isMoreView":Z
    :cond_4
    return-void
.end method

.method private initSizesSection()V
    .locals 11

    .prologue
    .line 240
    iget-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->order:Lcom/biznessapps/food_ordering/entities/OrderEntity;

    invoke-virtual {v9}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getSizes()Ljava/util/List;

    move-result-object v4

    .line 241
    .local v4, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 242
    iget-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->sizes_container:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->size_gallery_container:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->sizesContainer:Landroid/widget/LinearLayout;

    .line 244
    iget-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->sizesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 245
    const/4 v2, 0x1

    .line 246
    .local v2, "isFirst":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;

    .line 247
    .local v3, "size":Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->getSizeName()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->sizesViewList:Ljava/util/List;

    sget v10, Lcom/biznessapps/layout/R$id;->STRING_VALUE_TAG:I

    invoke-direct {p0, v6, v9, v10}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getItemView(Ljava/lang/String;Ljava/util/List;I)Landroid/view/View;

    move-result-object v5

    .line 249
    .local v5, "storedView":Landroid/view/View;
    if-nez v5, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$layout;->fo_category_size_item:I

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "storedView":Landroid/view/View;
    check-cast v5, Landroid/view/ViewGroup;

    .line 251
    .restart local v5    # "storedView":Landroid/view/View;
    sget v9, Lcom/biznessapps/layout/R$id;->STRING_ID_VALUE_TAG:I

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 252
    sget v9, Lcom/biznessapps/layout/R$id;->STRING_VALUE_TAG:I

    invoke-virtual {v5, v9, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 253
    sget v9, Lcom/biznessapps/layout/R$id;->FLOAT_VALUE_TAG:I

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->getPrice()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 254
    iget-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->sizesViewList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    move-object v8, v5

    .line 258
    .local v8, "view":Landroid/view/View;
    sget v9, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 259
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->setBackground(Landroid/widget/ImageView;Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V

    .line 260
    sget v9, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 261
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v9, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;

    invoke-direct {v9, p0, v8}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$4;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {v8}, Landroid/view/View;->performClick()Z

    .line 275
    const/4 v2, 0x0

    .line 277
    :cond_1
    iget-object v9, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->sizesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 280
    .end local v0    # "backgroundView":Landroid/widget/ImageView;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isFirst":Z
    .end local v3    # "size":Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
    .end local v5    # "storedView":Landroid/view/View;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private showConfirmationDialog()V
    .locals 28

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->locker:Lcom/biznessapps/api/Locker;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 304
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->locker:Lcom/biznessapps/api/Locker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/biznessapps/api/Locker;->isLocked()Z

    move-result v23

    if-nez v23, :cond_1

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->locker:Lcom/biznessapps/api/Locker;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/Locker;->setLocked(Z)V

    .line 306
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    .local v4, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    sget v25, Lcom/biznessapps/layout/R$layout;->fo_category_confirmation_dialog:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v22

    .line 309
    .local v22, "view":Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 311
    .local v8, "dialog":Landroid/app/AlertDialog;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 313
    sget v23, Lcom/biznessapps/layout/R$id;->add_button:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 314
    .local v3, "addButton":Landroid/widget/Button;
    sget v23, Lcom/biznessapps/layout/R$id;->cancel_button:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 315
    .local v5, "cancelButton":Landroid/widget/Button;
    sget v23, Lcom/biznessapps/layout/R$id;->thumbnail_view:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 316
    .local v19, "thumbnailView":Landroid/widget/ImageView;
    sget v23, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 317
    .local v20, "titleView":Landroid/widget/TextView;
    sget v23, Lcom/biznessapps/layout/R$id;->name_view:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 318
    .local v11, "nameView":Landroid/widget/TextView;
    sget v23, Lcom/biznessapps/layout/R$id;->description_view:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 319
    .local v7, "descriptionView":Landroid/widget/TextView;
    sget v23, Lcom/biznessapps/layout/R$id;->price_view:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 321
    .local v13, "priceView":Landroid/widget/TextView;
    sget v23, Lcom/biznessapps/layout/R$string;->fo_confirmation:I

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getTitle()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getQuantityValue()I

    move-result v14

    .line 324
    .local v14, "quantityValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPrice()F

    move-result v23

    int-to-float v0, v14

    move/from16 v25, v0

    mul-float v21, v23, v25

    .line 325
    .local v21, "totalPriceValue":F
    sget v23, Lcom/biznessapps/layout/R$id;->STRING_ID_VALUE_TAG:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getSizeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 326
    .local v17, "sizeValue":Ljava/lang/String;
    sget v23, Lcom/biznessapps/layout/R$id;->STRING_VALUE_TAG:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getSizeValue(I)Ljava/lang/String;

    move-result-object v15

    .line 327
    .local v15, "sizeLabel":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    const-string v23, "%s: %s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget v27, Lcom/biznessapps/layout/R$string;->fo_size:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v15, v25, v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 329
    .local v16, "sizeText":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPriceWithoutOptions()F

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v10

    .line 330
    .local v10, "itemPrice":Ljava/lang/String;
    const-string v23, "%s: %d <br/> %s <br/> %s: %s"

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget v27, Lcom/biznessapps/layout/R$string;->fo_quantity:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getQuantityValue()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    aput-object v16, v25, v26

    const/16 v26, 0x3

    sget v27, Lcom/biznessapps/layout/R$string;->fo_item_price:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x4

    aput-object v10, v25, v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 333
    .local v18, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v10}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getImageUrl()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    .line 338
    .local v9, "hasThumbnailImage":Z
    if-eqz v9, :cond_0

    .line 339
    new-instance v12, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v12}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 340
    .local v12, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getImageUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 342
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 343
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 346
    .end local v12    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_0
    if-eqz v9, :cond_3

    const/16 v23, 0x0

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    sget v25, Lcom/biznessapps/layout/R$string;->fo_add:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    sget v25, Lcom/biznessapps/layout/R$string;->cancel:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const/high16 v6, -0x1000000

    .line 353
    .local v6, "color":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 360
    new-instance v23, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v14, v2, v8}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;ILjava/lang/String;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    new-instance v23, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$7;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 387
    .end local v3    # "addButton":Landroid/widget/Button;
    .end local v4    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "cancelButton":Landroid/widget/Button;
    .end local v6    # "color":I
    .end local v7    # "descriptionView":Landroid/widget/TextView;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    .end local v9    # "hasThumbnailImage":Z
    .end local v10    # "itemPrice":Ljava/lang/String;
    .end local v11    # "nameView":Landroid/widget/TextView;
    .end local v13    # "priceView":Landroid/widget/TextView;
    .end local v14    # "quantityValue":I
    .end local v15    # "sizeLabel":Ljava/lang/String;
    .end local v16    # "sizeText":Ljava/lang/String;
    .end local v17    # "sizeValue":Ljava/lang/String;
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "thumbnailView":Landroid/widget/ImageView;
    .end local v20    # "titleView":Landroid/widget/TextView;
    .end local v21    # "totalPriceValue":F
    .end local v22    # "view":Landroid/view/View;
    :cond_1
    monitor-exit v24

    .line 388
    return-void

    .restart local v3    # "addButton":Landroid/widget/Button;
    .restart local v4    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .restart local v5    # "cancelButton":Landroid/widget/Button;
    .restart local v7    # "descriptionView":Landroid/widget/TextView;
    .restart local v8    # "dialog":Landroid/app/AlertDialog;
    .restart local v11    # "nameView":Landroid/widget/TextView;
    .restart local v13    # "priceView":Landroid/widget/TextView;
    .restart local v14    # "quantityValue":I
    .restart local v15    # "sizeLabel":Ljava/lang/String;
    .restart local v17    # "sizeValue":Ljava/lang/String;
    .restart local v19    # "thumbnailView":Landroid/widget/ImageView;
    .restart local v20    # "titleView":Landroid/widget/TextView;
    .restart local v21    # "totalPriceValue":F
    .restart local v22    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v16, v15

    .line 327
    goto/16 :goto_0

    .line 346
    .restart local v9    # "hasThumbnailImage":Z
    .restart local v10    # "itemPrice":Ljava/lang/String;
    .restart local v16    # "sizeText":Ljava/lang/String;
    .restart local v18    # "text":Ljava/lang/String;
    :cond_3
    const/16 v23, 0x8

    goto/16 :goto_1

    .line 387
    .end local v3    # "addButton":Landroid/widget/Button;
    .end local v4    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "cancelButton":Landroid/widget/Button;
    .end local v7    # "descriptionView":Landroid/widget/TextView;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    .end local v9    # "hasThumbnailImage":Z
    .end local v10    # "itemPrice":Ljava/lang/String;
    .end local v11    # "nameView":Landroid/widget/TextView;
    .end local v13    # "priceView":Landroid/widget/TextView;
    .end local v14    # "quantityValue":I
    .end local v15    # "sizeLabel":Ljava/lang/String;
    .end local v16    # "sizeText":Ljava/lang/String;
    .end local v17    # "sizeValue":Ljava/lang/String;
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "thumbnailView":Landroid/widget/ImageView;
    .end local v20    # "titleView":Landroid/widget/TextView;
    .end local v21    # "totalPriceValue":F
    .end local v22    # "view":Landroid/view/View;
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23
.end method

.method private showQuantityDialog(Landroid/view/View;)V
    .locals 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$layout;->fo_category_quantity_dialog:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 429
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 430
    sget v3, Lcom/biznessapps/layout/R$string;->fo_quantity_message:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 431
    sget v3, Lcom/biznessapps/layout/R$string;->done:I

    new-instance v4, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;

    invoke-direct {v4, p0, v2, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 462
    sget v3, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v4, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$10;

    invoke-direct {v4, p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$10;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 472
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 473
    return-void
.end method

.method private updatePriceValue(I)V
    .locals 4
    .param p1, "quantity"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->priceView:Landroid/widget/TextView;

    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v1

    int-to-float v2, p1

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPrice()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    return-void
.end method

.method private updateQuantityAndPrice(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 511
    sget v1, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 512
    .local v0, "quantity":I
    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->updatePriceValue(I)V

    .line 513
    return-void
.end method


# virtual methods
.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    const-string v0, "food_ordering_item.php?app_code=%s&tab_id=%s&id=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewsRef()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->addItemButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/biznessapps/food_ordering/FOUtils;->initCartViews(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    move-result-object v5

    iput-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    .line 116
    sget v5, Lcom/biznessapps/layout/R$id;->specific_instructions_edit_text:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->specialInstructionView:Landroid/widget/EditText;

    .line 117
    sget v5, Lcom/biznessapps/layout/R$id;->thumbnail_view:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->thumbnailView:Landroid/widget/ImageView;

    .line 118
    sget v5, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->titleView:Landroid/widget/TextView;

    .line 119
    sget v5, Lcom/biznessapps/layout/R$id;->description_view:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->descriptionView:Landroid/widget/TextView;

    .line 121
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->titleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->descriptionView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget v5, Lcom/biznessapps/layout/R$id;->price_view:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->priceView:Landroid/widget/TextView;

    .line 125
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->priceView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 127
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->titleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->descriptionView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->priceView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    sget v5, Lcom/biznessapps/layout/R$id;->description_scroll_container:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/CustomScrollView;

    .line 132
    .local v0, "descriptionScrollView":Lcom/biznessapps/widgets/CustomScrollView;
    new-instance v5, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$1;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V

    invoke-virtual {v0, v5}, Lcom/biznessapps/widgets/CustomScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    sget v5, Lcom/biznessapps/layout/R$id;->add_item_to_order:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->addItemButton:Landroid/widget/Button;

    .line 142
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->addItemButton:Landroid/widget/Button;

    new-instance v6, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$2;

    invoke-direct {v6, p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$2;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v7, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->addItemButton:Landroid/widget/Button;

    invoke-virtual {v5, v6, v7}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 150
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->addItemButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->fo_add_item_to_order:I

    invoke-static {v6, v7}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget v5, Lcom/biznessapps/layout/R$id;->quantity_text_view:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, "quantityTextView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->sizes_text_view:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    .local v3, "sizesTextView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->options_text_view:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 156
    .local v1, "optionsTextView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->specific_instr_text_view:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 158
    .local v4, "specInstrTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->fo_quantity:I

    invoke-static {v5, v6, v2, v7}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 159
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->fo_size:I

    invoke-static {v5, v6, v3, v7}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 160
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->fo_options:I

    invoke-static {v5, v6, v1, v7}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 161
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->fo_specific_instructions:I

    invoke-static {v5, v6, v4, v7}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 162
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_category_item_detail:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    .line 85
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 87
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->initSettingsData()V

    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 89
    sget v0, Lcom/biznessapps/layout/R$string;->more:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->moreText:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 91
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->loadData()V

    .line 92
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->stopAnim()V

    .line 104
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onPause()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->startAnim()V

    .line 99
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->parseOrder(Ljava/lang/String;)Lcom/biznessapps/food_ordering/entities/OrderEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->order:Lcom/biznessapps/food_ordering/entities/OrderEntity;

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 185
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 186
    .local v0, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 188
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->order:Lcom/biznessapps/food_ordering/entities/OrderEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 190
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 191
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 193
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->initSizesSection()V

    .line 194
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->initOptionsSection()V

    .line 195
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->initQuantitiesSection()V

    .line 196
    return-void
.end method

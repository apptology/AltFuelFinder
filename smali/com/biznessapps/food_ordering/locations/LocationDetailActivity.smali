.class public Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;
.super Lcom/biznessapps/common/activities/CommonShareableMapActivity;
.source "LocationDetailActivity.java"


# static fields
.field private static final NULL_MODE:I


# instance fields
.field private chooseItemsButton:Landroid/widget/Button;

.field private dateContainer:Landroid/widget/LinearLayout;

.field private dateTimeContainer:Landroid/view/ViewGroup;

.field private dateViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private deliveryButton:Landroid/widget/Button;

.field private dineInButton:Landroid/widget/Button;

.field private item:Lcom/biznessapps/location/entities/LocationEntity;

.field private mode:I

.field private takeoutButton:Landroid/widget/Button;

.field private timeContainer:Landroid/widget/LinearLayout;

.field private timeStamp:J

.field private timeViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->mode:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateViewList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeViewList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineTime(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineDay()V

    return-void
.end method

.method static synthetic access$1400(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateTimeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->openCategoriesScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deactivateView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->activateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->mode:I

    return v0
.end method

.method static synthetic access$502(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->mode:I

    return p1
.end method

.method static synthetic access$600(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeStamp:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeStamp:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->checkAvailability()V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method private activateView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 423
    sget v3, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 424
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 425
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 426
    sget v3, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 427
    .local v2, "valueView":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->number_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 428
    .local v1, "numberView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    return-void
.end method

.method private checkAvailability()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 457
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v11

    .line 458
    .local v11, "cart":Lcom/biznessapps/food_ordering/entities/CartEntity;
    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getItems()Ljava/util/List;

    move-result-object v6

    .line 459
    .local v6, "orderedItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->openCategoriesScreen()V

    .line 493
    :goto_0
    return-void

    .line 462
    :cond_0
    new-instance v12, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$9;

    invoke-direct {v12, p0, v6}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$9;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Ljava/util/List;)V

    .line 482
    .local v12, "customHandler":Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getChosenLocation()Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/location/entities/LocationEntity;->getId()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "locationId":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v2, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->chooseItemsButton:Landroid/widget/Button;

    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;

    iget-wide v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeStamp:J

    iget-object v9, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->tabId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    move-object v8, v7

    invoke-direct/range {v0 .. v10}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .local v0, "task":Lcom/biznessapps/food_ordering/CheckAvailabilityTask;
    invoke-virtual {v0, v12}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->setCustomHandling(Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;)V

    .line 491
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private deactivateView(Ljava/util/List;)V
    .locals 8
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
    const/4 v7, 0x0

    const/high16 v6, -0x1000000

    .line 433
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 434
    .local v4, "view":Landroid/view/View;
    sget v5, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 435
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 436
    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 437
    sget v5, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 438
    .local v3, "valueView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->number_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 439
    .local v2, "numberView":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 442
    .end local v0    # "backgroundView":Landroid/widget/ImageView;
    .end local v2    # "numberView":Landroid/widget/TextView;
    .end local v3    # "valueView":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private defineActiveServiceButtons()V
    .locals 7

    .prologue
    .line 569
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v4

    .line 570
    .local v4, "restaurantEntity":Lcom/biznessapps/food_ordering/entities/RestaurantEntity;
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDineIn()Z

    move-result v2

    .line 571
    .local v2, "isDineIn":Z
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDelivery()Z

    move-result v1

    .line 572
    .local v1, "isDelivery":Z
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isTakeout()Z

    move-result v3

    .line 574
    .local v3, "isTakeout":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v0, "activeButtons":Ljava/util/List;, "Ljava/util/List<Landroid/widget/Button;>;"
    if-eqz v2, :cond_0

    .line 576
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_0
    if-eqz v1, :cond_1

    .line 579
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_1
    if-eqz v3, :cond_2

    .line 582
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 585
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->performClick()Z

    .line 587
    :cond_3
    return-void
.end method

.method private defineDay()V
    .locals 20

    .prologue
    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 161
    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 163
    .local v15, "today":I
    const/4 v11, 0x0

    .line 164
    .local v11, "numberOfDays":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 165
    const/4 v11, 0x1

    .line 172
    :cond_0
    :goto_0
    sget v17, Lcom/biznessapps/layout/R$id;->date_gallery_container:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateContainer:Landroid/widget/LinearLayout;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateViewList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deactivateView(Ljava/util/List;)V

    .line 175
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    if-gt v10, v11, :cond_7

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 177
    const/16 v17, 0x5

    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 178
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 179
    .local v13, "selectedDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->item:Lcom/biznessapps/location/entities/LocationEntity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/location/entities/LocationEntity;->getFoOpeningTime()Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->getInterval(I)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 175
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 166
    .end local v10    # "i":I
    .end local v13    # "selectedDay":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 167
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getTakeoutDays()I

    move-result v17

    add-int/lit8 v11, v17, 0x1

    goto :goto_0

    .line 168
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 169
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getDeliveryDays()I

    move-result v17

    add-int/lit8 v11, v17, 0x1

    goto/16 :goto_0

    .line 183
    .restart local v10    # "i":I
    .restart local v13    # "selectedDay":I
    :cond_3
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v17, "EE"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    .local v9, "formatter":Ljava/text/SimpleDateFormat;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    sget v18, Lcom/biznessapps/layout/R$string;->fo_today:I

    invoke-static/range {v17 .. v18}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "dayString":Ljava/lang/String;
    :goto_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "dayOfMonth":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateViewList:Ljava/util/List;

    move-object/from16 v18, v0

    sget v19, Lcom/biznessapps/layout/R$id;->DATE_STRING_TAG:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getItemView(Ljava/lang/String;Ljava/util/List;I)Landroid/view/View;

    move-result-object v14

    .line 188
    .local v14, "storedView":Landroid/view/View;
    if-nez v14, :cond_4

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    sget v18, Lcom/biznessapps/layout/R$layout;->fo_location_date_item:I

    invoke-static/range {v17 .. v18}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "storedView":Landroid/view/View;
    check-cast v14, Landroid/view/ViewGroup;

    .line 190
    .restart local v14    # "storedView":Landroid/view/View;
    sget v17, Lcom/biznessapps/layout/R$id;->DATE_STRING_TAG:I

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateViewList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v16, v14

    .line 194
    check-cast v16, Landroid/view/ViewGroup;

    .line 195
    .local v16, "view":Landroid/view/ViewGroup;
    sget v17, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 196
    .local v4, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/biznessapps/food_ordering/FOUtils;->setBackground(Landroid/widget/ImageView;Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V

    .line 197
    sget v17, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 198
    .local v8, "dayView":Landroid/widget/TextView;
    sget v17, Lcom/biznessapps/layout/R$id;->number_view:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 200
    .local v12, "numberView":Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    sget v17, Lcom/biznessapps/layout/R$id;->CALENDAR_TAG:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 203
    new-instance v17, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Landroid/view/ViewGroup;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_5

    .line 216
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->performClick()Z

    .line 218
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 184
    .end local v4    # "backgroundView":Landroid/widget/ImageView;
    .end local v6    # "dayOfMonth":Ljava/lang/String;
    .end local v7    # "dayString":Ljava/lang/String;
    .end local v8    # "dayView":Landroid/widget/TextView;
    .end local v12    # "numberView":Landroid/widget/TextView;
    .end local v14    # "storedView":Landroid/view/View;
    .end local v16    # "view":Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 220
    .end local v9    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v13    # "selectedDay":I
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineTime(I)V

    .line 221
    return-void
.end method

.method private defineServiceButtons()V
    .locals 10

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 530
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v4

    .line 531
    .local v4, "restaurantEntity":Lcom/biznessapps/food_ordering/entities/RestaurantEntity;
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDineIn()Z

    move-result v2

    .line 532
    .local v2, "isDineIn":Z
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDelivery()Z

    move-result v1

    .line 533
    .local v1, "isDelivery":Z
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isTakeout()Z

    move-result v3

    .line 535
    .local v3, "isTakeout":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 536
    sget v5, Lcom/biznessapps/layout/R$id;->first_button:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    .line 537
    sget v5, Lcom/biznessapps/layout/R$id;->third_button:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    .line 538
    sget v5, Lcom/biznessapps/layout/R$id;->second_button:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    .line 548
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->fo_dine_in:I

    invoke-static {v8, v9}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->fo_takeout:I

    invoke-static {v8, v9}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->fo_delivery:I

    invoke-static {v8, v9}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v8, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    iget-object v8, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 554
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    move v7, v6

    :cond_0
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    const/4 v0, 0x1

    .line 557
    .local v0, "isAllDisabled":Z
    :goto_3
    if-eqz v0, :cond_1

    .line 558
    sget v5, Lcom/biznessapps/layout/R$string;->fo_no_service_options_available:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$11;

    invoke-direct {v7, p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$11;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    invoke-static {p0, v5, v7, v6}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 566
    :cond_1
    return-void

    .line 539
    .end local v0    # "isAllDisabled":Z
    :cond_2
    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 540
    sget v5, Lcom/biznessapps/layout/R$id;->first_button:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    .line 541
    sget v5, Lcom/biznessapps/layout/R$id;->second_button:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    .line 542
    sget v5, Lcom/biznessapps/layout/R$id;->third_button:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    goto :goto_0

    .line 544
    :cond_3
    sget v5, Lcom/biznessapps/layout/R$id;->first_button:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    .line 545
    sget v5, Lcom/biznessapps/layout/R$id;->second_button:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    .line 546
    sget v5, Lcom/biznessapps/layout/R$id;->third_button:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 552
    goto :goto_1

    :cond_5
    move v5, v7

    .line 553
    goto :goto_2

    :cond_6
    move v0, v6

    .line 556
    goto :goto_3
.end method

.method private defineTime(I)V
    .locals 31
    .param p1, "day"    # I

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->item:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v3}, Lcom/biznessapps/location/entities/LocationEntity;->getFoOpeningTime()Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->getInterval(I)Ljava/util/List;

    move-result-object v18

    .line 225
    .local v18, "intervals":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeViewList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deactivateView(Ljava/util/List;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v19

    .line 228
    .local v19, "is24hoursFormat":Z
    new-instance v14, Ljava/text/SimpleDateFormat;

    if-eqz v19, :cond_3

    const-string v3, "H:mm"

    :goto_0
    invoke-direct {v14, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 229
    .local v14, "formatter":Ljava/text/SimpleDateFormat;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v24

    .line 231
    .local v24, "size":I
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getLeadTime()I

    move-result v23

    .line 233
    .local v23, "leadTime":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 234
    .local v9, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 235
    .local v10, "currentHours":I
    const/16 v3, 0xc

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 237
    .local v11, "currentMins":I
    rem-int/lit8 v3, v11, 0x5

    if-eqz v3, :cond_0

    .line 238
    rem-int/lit8 v3, v11, 0x5

    rsub-int/lit8 v3, v3, 0x5

    add-int/2addr v11, v3

    .line 241
    :cond_0
    const/4 v3, 0x7

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move/from16 v0, p1

    if-ne v3, v0, :cond_4

    const/16 v21, 0x1

    .line 242
    .local v21, "isToday":Z
    :goto_1
    const/4 v13, 0x1

    .line 243
    .local v13, "firstTime":Z
    const/16 v20, 0x0

    .line 244
    .local v20, "isFromTimeUpdated":Z
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 245
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;

    .line 246
    .local v17, "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->getFrom()I

    move-result v15

    .line 247
    .local v15, "from":I
    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->getTo()I

    move-result v28

    .line 249
    .local v28, "to":I
    if-eqz v21, :cond_6

    if-nez v20, :cond_6

    .line 250
    mul-int/lit8 v3, v10, 0x3c

    add-int v12, v3, v11

    .line 251
    .local v12, "currentValue":I
    if-le v12, v15, :cond_1

    .line 252
    move v15, v12

    .line 254
    :cond_1
    move/from16 v0, v28

    if-le v15, v0, :cond_5

    .line 244
    .end local v12    # "currentValue":I
    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 228
    .end local v9    # "calendar":Ljava/util/Calendar;
    .end local v10    # "currentHours":I
    .end local v11    # "currentMins":I
    .end local v13    # "firstTime":Z
    .end local v14    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v15    # "from":I
    .end local v17    # "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    .end local v20    # "isFromTimeUpdated":Z
    .end local v21    # "isToday":Z
    .end local v22    # "j":I
    .end local v23    # "leadTime":I
    .end local v24    # "size":I
    .end local v28    # "to":I
    :cond_3
    const-string v3, "h:mm a"

    goto :goto_0

    .line 241
    .restart local v9    # "calendar":Ljava/util/Calendar;
    .restart local v10    # "currentHours":I
    .restart local v11    # "currentMins":I
    .restart local v14    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v23    # "leadTime":I
    .restart local v24    # "size":I
    :cond_4
    const/16 v21, 0x0

    goto :goto_1

    .line 257
    .restart local v12    # "currentValue":I
    .restart local v13    # "firstTime":Z
    .restart local v15    # "from":I
    .restart local v17    # "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    .restart local v20    # "isFromTimeUpdated":Z
    .restart local v21    # "isToday":Z
    .restart local v22    # "j":I
    .restart local v28    # "to":I
    :cond_5
    const/16 v20, 0x1

    .line 260
    .end local v12    # "currentValue":I
    :cond_6
    add-int v15, v15, v23

    .line 261
    move/from16 v16, v15

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v28

    if-gt v0, v1, :cond_2

    .line 262
    div-int/lit8 v6, v16, 0x3c

    .line 263
    .local v6, "hours":I
    rem-int/lit8 v7, v16, 0x3c

    .line 265
    .local v7, "mins":I
    if-nez v6, :cond_7

    if-nez v7, :cond_7

    .line 261
    :goto_4
    add-int v16, v16, v23

    goto :goto_3

    .line 268
    :cond_7
    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Ljava/util/Date;-><init>(IIIII)V

    .line 269
    .local v2, "date":Ljava/util/Date;
    const/16 v26, 0x0

    .line 270
    .local v26, "text":Ljava/lang/String;
    if-eqz v13, :cond_a

    if-eqz v21, :cond_a

    .line 271
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v30, Lcom/biznessapps/layout/R$string;->fo_asap:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 272
    const/4 v13, 0x0

    .line 277
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeViewList:Ljava/util/List;

    sget v4, Lcom/biznessapps/layout/R$id;->TIME_TAG:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v3, v4}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getItemView(Ljava/lang/String;Ljava/util/List;I)Landroid/view/View;

    move-result-object v25

    .line 278
    .local v25, "storedView":Landroid/view/View;
    if-nez v25, :cond_8

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$layout;->fo_location_time_item:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "storedView":Landroid/view/View;
    check-cast v25, Landroid/view/ViewGroup;

    .line 280
    .restart local v25    # "storedView":Landroid/view/View;
    sget v3, Lcom/biznessapps/layout/R$id;->TIME_TAG:I

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 281
    sget v3, Lcom/biznessapps/layout/R$id;->TIME_HOURS_TAG:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 282
    sget v3, Lcom/biznessapps/layout/R$id;->TIME_MINS_TAG:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeViewList:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v29, v25

    .line 286
    check-cast v29, Landroid/view/ViewGroup;

    .line 287
    .local v29, "view":Landroid/view/ViewGroup;
    sget v3, Lcom/biznessapps/layout/R$id;->background_view:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 288
    .local v8, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v8, v3, v4}, Lcom/biznessapps/food_ordering/FOUtils;->setBackground(Landroid/widget/ImageView;Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V

    .line 289
    sget v3, Lcom/biznessapps/layout/R$id;->value_view:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 290
    .local v27, "timeView":Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    :cond_9
    new-instance v3, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v3, v0, v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$4;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Landroid/view/ViewGroup;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 274
    .end local v8    # "backgroundView":Landroid/widget/ImageView;
    .end local v25    # "storedView":Landroid/view/View;
    .end local v27    # "timeView":Landroid/widget/TextView;
    .end local v29    # "view":Landroid/view/ViewGroup;
    :cond_a
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_5

    .line 305
    .end local v2    # "date":Ljava/util/Date;
    .end local v6    # "hours":I
    .end local v7    # "mins":I
    .end local v15    # "from":I
    .end local v16    # "i":I
    .end local v17    # "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    .end local v26    # "text":Ljava/lang/String;
    .end local v28    # "to":I
    :cond_b
    return-void
.end method

.method private getItemView(Ljava/lang/String;Ljava/util/List;I)Landroid/view/View;
    .locals 5
    .param p1, "timeTag"    # Ljava/lang/String;
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
    .line 445
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 446
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

    .line 447
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 448
    .local v2, "storedTimeTag":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    move-object v1, v3

    .line 453
    .end local v2    # "storedTimeTag":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private getTimeStamp()J
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 392
    const-wide/16 v4, 0x0

    .line 394
    .local v4, "result":J
    const/4 v0, 0x0

    .line 395
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v7, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateViewList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 396
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 397
    sget v7, Lcom/biznessapps/layout/R$id;->CALENDAR_TAG:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "calendar":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .restart local v0    # "calendar":Ljava/util/Calendar;
    goto :goto_0

    .line 400
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_3

    .line 403
    iget-object v7, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeViewList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 404
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 405
    sget v7, Lcom/biznessapps/layout/R$id;->TIME_HOURS_TAG:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 406
    .local v1, "hours":I
    sget v7, Lcom/biznessapps/layout/R$id;->TIME_MINS_TAG:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 408
    .local v3, "mins":I
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 409
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 410
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 411
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 412
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 413
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v4, v7, v9

    .line 418
    .end local v1    # "hours":I
    .end local v3    # "mins":I
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    return-wide v4
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->chooseItemsButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$6;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$7;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/high16 v6, -0x1000000

    .line 308
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineServiceButtons()V

    .line 310
    sget v3, Lcom/biznessapps/layout/R$id;->choose_items_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->chooseItemsButton:Landroid/widget/Button;

    .line 311
    sget v3, Lcom/biznessapps/layout/R$id;->date_time_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateTimeContainer:Landroid/view/ViewGroup;

    .line 313
    sget v3, Lcom/biznessapps/layout/R$id;->date_gallery_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateContainer:Landroid/widget/LinearLayout;

    .line 314
    sget v3, Lcom/biznessapps/layout/R$id;->time_gallery_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeContainer:Landroid/widget/LinearLayout;

    .line 316
    sget v3, Lcom/biznessapps/layout/R$id;->date_text_view:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 317
    .local v1, "dateTextView":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->time_text_view:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 319
    .local v2, "timeTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->date:I

    invoke-static {v3, v4, v1, v5}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 320
    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->time:I

    invoke-static {v3, v4, v2, v5}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 322
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->chooseItemsButton:Landroid/widget/Button;

    invoke-virtual {v3, v4, v5}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 323
    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->chooseItemsButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->fo_choose_items:I

    invoke-static {v4, v5}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$color;->fo_buttom_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 326
    .local v0, "bgColorPassive":I
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;

    invoke-virtual {v3, v0, v6, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 327
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;

    invoke-virtual {v3, v0, v6, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 328
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;

    invoke-virtual {v3, v0, v6, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 330
    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->item:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->showAddressInfo(Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 331
    return-void
.end method

.method private loadBgUrl()V
    .locals 8

    .prologue
    .line 127
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->bgUrl:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getViewForBg()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->bgUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 131
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCache()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->bgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BLUR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 132
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getViewForBg()Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->bgUrl:Ljava/lang/String;

    new-instance v3, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$2;

    invoke-direct {v3, p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$2;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual/range {v0 .. v6}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;ILcom/biznessapps/api/UiSettings;)V

    .line 145
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v2    # "view":Landroid/view/View;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getViewForBg()Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getViewForBg()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private openCategoriesScreen()V
    .locals 4

    .prologue
    .line 496
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->mode:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/food_ordering/entities/CartEntity;->setDeliveryOption(I)V

    .line 497
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v1

    iget-wide v2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeStamp:J

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/food_ordering/entities/CartEntity;->setTimeStamp(J)V

    .line 499
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_CATEGORIES"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_CATEGORIES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v1, "TAB_LABEL"

    sget v2, Lcom/biznessapps/layout/R$string;->fo_categories:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v1, "TIMESTAMP_EXTRA"

    iget-wide v2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeStamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 504
    const-string v1, "LOCATION_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "LOCATION_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 507
    return-void
.end method

.method private showAddressInfo(Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 7
    .param p1, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 510
    sget v5, Lcom/biznessapps/layout/R$id;->location_city_text:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 511
    .local v1, "cityView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->location_address_text:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 512
    .local v0, "addressView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->distance_text:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 513
    .local v2, "distanceView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->switch_map_view:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 515
    .local v4, "switchMapView":Landroid/widget/ImageView;
    sget v5, Lcom/biznessapps/layout/R$id;->location_ping:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 516
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 517
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 518
    invoke-static {v1, v0, p1}, Lcom/biznessapps/location/LocationUtils;->setAddress(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 519
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, p1}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 520
    new-instance v5, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$10;

    invoke-direct {v5, p0, p1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$10;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Lcom/biznessapps/location/entities/LocationEntity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    return-void
.end method


# virtual methods
.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 154
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LOCATION_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 155
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_location_detail:I

    return v0
.end method

.method public getProgressBarContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 117
    sget v1, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    .local v0, "progressBarContainer":Landroid/view/ViewGroup;
    return-object v0
.end method

.method public getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    sget v0, Lcom/biznessapps/layout/R$id;->container_layout:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    .line 92
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onBackPressed()V

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x0

    sget v0, Lcom/biznessapps/layout/R$string;->fo_location_warning:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$1;-><init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    const/4 v4, 0x1

    sget v0, Lcom/biznessapps/layout/R$string;->go_back:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/biznessapps/layout/R$string;->stay_here:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget v0, Lcom/biznessapps/layout/R$id;->container_layout:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 80
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getChosenLocation()Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->item:Lcom/biznessapps/location/entities/LocationEntity;

    .line 81
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->item:Lcom/biznessapps/location/entities/LocationEntity;

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->initViews()V

    .line 83
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->initListeners()V

    .line 84
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->loadBgUrl()V

    .line 85
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->item:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->addPins(Lcom/biznessapps/common/entities/MapEntity;)V

    .line 86
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineActiveServiceButtons()V

    .line 88
    :cond_0
    return-void
.end method

.method protected useMapInfoWindow()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

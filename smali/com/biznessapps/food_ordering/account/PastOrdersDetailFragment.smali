.class public Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "PastOrdersDetailFragment.java"


# static fields
.field private static final NULL_MODE:I


# instance fields
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

.field private hasAddedItems:Z

.field private item:Lcom/biznessapps/location/entities/LocationEntity;

.field private listView:Lcom/biznessapps/widgets/ExpandableListView;

.field private locId:Ljava/lang/String;

.field private mode:I

.field private onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field private pastOrder:Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

.field private reorderButton:Landroid/widget/Button;

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
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->mode:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateViewList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeViewList:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineTime(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineDay()V

    return-void
.end method

.method static synthetic access$1400(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateTimeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->openConfirmationScreen(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deactivateView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->activateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->mode:I

    return v0
.end method

.method static synthetic access$502(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->mode:I

    return p1
.end method

.method static synthetic access$600(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeStamp:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeStamp:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->checkAvailability()V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method private activateView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 475
    sget v3, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 476
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 477
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 478
    sget v3, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 479
    .local v2, "valueView":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->number_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 480
    .local v1, "numberView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    return-void
.end method

.method private checkAvailability()V
    .locals 11

    .prologue
    .line 589
    new-instance v7, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$11;

    invoke-direct {v7, p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$11;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V

    .line 596
    .local v7, "successRunnable":Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
    new-instance v0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getViewsRef()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->pastOrder:Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getLocationId()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeStamp:J

    iget-object v6, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->pastOrder:Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getOrderedItems()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->tabId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .local v0, "task":Lcom/biznessapps/food_ordering/CheckAvailabilityTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 599
    return-void
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

    .line 485
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

    .line 486
    .local v4, "view":Landroid/view/View;
    sget v5, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 487
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 488
    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 489
    sget v5, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 490
    .local v3, "valueView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->number_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 491
    .local v2, "numberView":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 494
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
    .line 568
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v4

    .line 569
    .local v4, "restaurantEntity":Lcom/biznessapps/food_ordering/entities/RestaurantEntity;
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDineIn()Z

    move-result v2

    .line 570
    .local v2, "isDineIn":Z
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDelivery()Z

    move-result v1

    .line 571
    .local v1, "isDelivery":Z
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isTakeout()Z

    move-result v3

    .line 573
    .local v3, "isTakeout":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v0, "activeButtons":Ljava/util/List;, "Ljava/util/List<Landroid/widget/Button;>;"
    if-eqz v2, :cond_0

    .line 575
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_0
    if-eqz v1, :cond_1

    .line 578
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_1
    if-eqz v3, :cond_2

    .line 581
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 584
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->performClick()Z

    .line 586
    :cond_3
    return-void
.end method

.method private defineDay()V
    .locals 20

    .prologue
    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 200
    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 202
    .local v15, "today":I
    const/4 v11, 0x0

    .line 203
    .local v11, "numberOfDays":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 204
    const/4 v11, 0x1

    .line 211
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    sget v18, Lcom/biznessapps/layout/R$id;->date_gallery_container:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateContainer:Landroid/widget/LinearLayout;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateViewList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deactivateView(Ljava/util/List;)V

    .line 214
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    if-gt v10, v11, :cond_7

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 216
    const/16 v17, 0x5

    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 217
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 218
    .local v13, "selectedDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->item:Lcom/biznessapps/location/entities/LocationEntity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/location/entities/LocationEntity;->getFoOpeningTime()Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->getInterval(I)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 214
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 205
    .end local v10    # "i":I
    .end local v13    # "selectedDay":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 206
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getTakeoutDays()I

    move-result v17

    add-int/lit8 v11, v17, 0x1

    goto :goto_0

    .line 207
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->mode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 208
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getDeliveryDays()I

    move-result v17

    add-int/lit8 v11, v17, 0x1

    goto/16 :goto_0

    .line 222
    .restart local v10    # "i":I
    .restart local v13    # "selectedDay":I
    :cond_3
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v17, "EE"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 223
    .local v9, "formatter":Ljava/text/SimpleDateFormat;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    sget v18, Lcom/biznessapps/layout/R$string;->fo_today:I

    invoke-static/range {v17 .. v18}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 224
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

    .line 226
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

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateViewList:Ljava/util/List;

    move-object/from16 v18, v0

    sget v19, Lcom/biznessapps/layout/R$id;->DATE_STRING_TAG:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getItemView(Ljava/lang/String;Ljava/util/List;I)Landroid/view/View;

    move-result-object v14

    .line 227
    .local v14, "storedView":Landroid/view/View;
    if-nez v14, :cond_4

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    sget v18, Lcom/biznessapps/layout/R$layout;->fo_location_date_item:I

    invoke-static/range {v17 .. v18}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "storedView":Landroid/view/View;
    check-cast v14, Landroid/view/ViewGroup;

    .line 229
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

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateViewList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v16, v14

    .line 233
    check-cast v16, Landroid/view/ViewGroup;

    .line 234
    .local v16, "view":Landroid/view/ViewGroup;
    sget v17, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 235
    .local v4, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/biznessapps/food_ordering/FOUtils;->setBackground(Landroid/widget/ImageView;Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V

    .line 236
    sget v17, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 237
    .local v8, "dayView":Landroid/widget/TextView;
    sget v17, Lcom/biznessapps/layout/R$id;->number_view:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 239
    .local v12, "numberView":Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
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

    .line 241
    sget v17, Lcom/biznessapps/layout/R$id;->CALENDAR_TAG:I

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 242
    new-instance v17, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Landroid/view/ViewGroup;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_5

    .line 255
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->performClick()Z

    .line 257
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 223
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

    .line 259
    .end local v9    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v13    # "selectedDay":I
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineTime(I)V

    .line 260
    return-void
.end method

.method private defineServiceButtons()V
    .locals 10

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 529
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v4

    .line 530
    .local v4, "restaurantEntity":Lcom/biznessapps/food_ordering/entities/RestaurantEntity;
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDineIn()Z

    move-result v2

    .line 531
    .local v2, "isDineIn":Z
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDelivery()Z

    move-result v1

    .line 532
    .local v1, "isDelivery":Z
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isTakeout()Z

    move-result v3

    .line 534
    .local v3, "isTakeout":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 535
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->first_button:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    .line 536
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->third_button:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    .line 537
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->second_button:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    .line 547
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->fo_dine_in:I

    invoke-static {v8, v9}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->fo_takeout:I

    invoke-static {v8, v9}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->fo_delivery:I

    invoke-static {v8, v9}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 552
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    move v7, v6

    :cond_0
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 555
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    const/4 v0, 0x1

    .line 556
    .local v0, "isAllDisabled":Z
    :goto_3
    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    sget v7, Lcom/biznessapps/layout/R$string;->fo_no_service_options_available:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$10;

    invoke-direct {v8, p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$10;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V

    invoke-static {v5, v7, v8, v6}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 565
    :cond_1
    return-void

    .line 538
    .end local v0    # "isAllDisabled":Z
    :cond_2
    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 539
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->first_button:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    .line 540
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->second_button:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    .line 541
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->third_button:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    goto/16 :goto_0

    .line 543
    :cond_3
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->first_button:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    .line 544
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->second_button:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    .line 545
    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->third_button:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 551
    goto :goto_1

    :cond_5
    move v5, v7

    .line 552
    goto :goto_2

    :cond_6
    move v0, v6

    .line 555
    goto :goto_3
.end method

.method private defineTime(I)V
    .locals 30
    .param p1, "day"    # I

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->item:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v3}, Lcom/biznessapps/location/entities/LocationEntity;->getFoOpeningTime()Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->getInterval(I)Ljava/util/List;

    move-result-object v18

    .line 264
    .local v18, "intervals":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeViewList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deactivateView(Ljava/util/List;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v19

    .line 267
    .local v19, "is24hoursFormat":Z
    new-instance v14, Ljava/text/SimpleDateFormat;

    if-eqz v19, :cond_3

    const-string v3, "H:mm"

    :goto_0
    invoke-direct {v14, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 268
    .local v14, "formatter":Ljava/text/SimpleDateFormat;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    .line 270
    .local v23, "size":I
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getLeadTime()I

    move-result v22

    .line 272
    .local v22, "leadTime":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 273
    .local v9, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 274
    .local v10, "currentHours":I
    const/16 v3, 0xc

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 276
    .local v11, "currentMins":I
    rem-int/lit8 v3, v11, 0x5

    if-eqz v3, :cond_0

    .line 277
    rem-int/lit8 v3, v11, 0x5

    rsub-int/lit8 v3, v3, 0x5

    add-int/2addr v11, v3

    .line 280
    :cond_0
    const/4 v3, 0x7

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move/from16 v0, p1

    if-ne v3, v0, :cond_4

    const/16 v20, 0x1

    .line 281
    .local v20, "isToday":Z
    :goto_1
    const/4 v13, 0x1

    .line 282
    .local v13, "firstTime":Z
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 283
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;

    .line 284
    .local v17, "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->getFrom()I

    move-result v15

    .line 285
    .local v15, "from":I
    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->getTo()I

    move-result v27

    .line 287
    .local v27, "to":I
    if-eqz v20, :cond_5

    if-nez v21, :cond_5

    .line 288
    mul-int/lit8 v3, v10, 0x3c

    add-int v12, v3, v11

    .line 289
    .local v12, "currentValue":I
    if-le v12, v15, :cond_1

    .line 290
    move v15, v12

    .line 292
    :cond_1
    move/from16 v0, v27

    if-le v15, v0, :cond_5

    .line 282
    .end local v12    # "currentValue":I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 267
    .end local v9    # "calendar":Ljava/util/Calendar;
    .end local v10    # "currentHours":I
    .end local v11    # "currentMins":I
    .end local v13    # "firstTime":Z
    .end local v14    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v15    # "from":I
    .end local v17    # "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    .end local v20    # "isToday":Z
    .end local v21    # "j":I
    .end local v22    # "leadTime":I
    .end local v23    # "size":I
    .end local v27    # "to":I
    :cond_3
    const-string v3, "h:mm a"

    goto :goto_0

    .line 280
    .restart local v9    # "calendar":Ljava/util/Calendar;
    .restart local v10    # "currentHours":I
    .restart local v11    # "currentMins":I
    .restart local v14    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v22    # "leadTime":I
    .restart local v23    # "size":I
    :cond_4
    const/16 v20, 0x0

    goto :goto_1

    .line 297
    .restart local v13    # "firstTime":Z
    .restart local v15    # "from":I
    .restart local v17    # "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    .restart local v20    # "isToday":Z
    .restart local v21    # "j":I
    .restart local v27    # "to":I
    :cond_5
    add-int v15, v15, v22

    .line 298
    move/from16 v16, v15

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v27

    if-gt v0, v1, :cond_2

    .line 299
    div-int/lit8 v6, v16, 0x3c

    .line 300
    .local v6, "hours":I
    rem-int/lit8 v7, v16, 0x3c

    .line 302
    .local v7, "mins":I
    if-nez v6, :cond_6

    if-nez v7, :cond_6

    .line 298
    :goto_4
    add-int v16, v16, v22

    goto :goto_3

    .line 305
    :cond_6
    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Ljava/util/Date;-><init>(IIIII)V

    .line 306
    .local v2, "date":Ljava/util/Date;
    const/16 v25, 0x0

    .line 307
    .local v25, "text":Ljava/lang/String;
    if-eqz v13, :cond_9

    if-eqz v20, :cond_9

    .line 308
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v29, Lcom/biznessapps/layout/R$string;->fo_asap:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 309
    const/4 v13, 0x0

    .line 314
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeViewList:Ljava/util/List;

    sget v4, Lcom/biznessapps/layout/R$id;->TIME_TAG:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3, v4}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getItemView(Ljava/lang/String;Ljava/util/List;I)Landroid/view/View;

    move-result-object v24

    .line 315
    .local v24, "storedView":Landroid/view/View;
    if-nez v24, :cond_7

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$layout;->fo_location_time_item:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v24

    .end local v24    # "storedView":Landroid/view/View;
    check-cast v24, Landroid/view/ViewGroup;

    .line 317
    .restart local v24    # "storedView":Landroid/view/View;
    sget v3, Lcom/biznessapps/layout/R$id;->TIME_TAG:I

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 318
    sget v3, Lcom/biznessapps/layout/R$id;->TIME_HOURS_TAG:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 319
    sget v3, Lcom/biznessapps/layout/R$id;->TIME_MINS_TAG:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeViewList:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v28, v24

    .line 323
    check-cast v28, Landroid/view/ViewGroup;

    .line 324
    .local v28, "view":Landroid/view/ViewGroup;
    sget v3, Lcom/biznessapps/layout/R$id;->background_view:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 325
    .local v8, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v8, v3, v4}, Lcom/biznessapps/food_ordering/FOUtils;->setBackground(Landroid/widget/ImageView;Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V

    .line 326
    sget v3, Lcom/biznessapps/layout/R$id;->value_view:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 327
    .local v26, "timeView":Landroid/widget/TextView;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    :cond_8
    new-instance v3, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v3, v0, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$5;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Landroid/view/ViewGroup;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 311
    .end local v8    # "backgroundView":Landroid/widget/ImageView;
    .end local v24    # "storedView":Landroid/view/View;
    .end local v26    # "timeView":Landroid/widget/TextView;
    .end local v28    # "view":Landroid/view/ViewGroup;
    :cond_9
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_5

    .line 342
    .end local v2    # "date":Ljava/util/Date;
    .end local v6    # "hours":I
    .end local v7    # "mins":I
    .end local v15    # "from":I
    .end local v16    # "i":I
    .end local v17    # "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    .end local v25    # "text":Ljava/lang/String;
    .end local v27    # "to":I
    :cond_a
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
    .line 497
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 498
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

    .line 499
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 500
    .local v2, "storedTimeTag":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    move-object v1, v3

    .line 505
    .end local v2    # "storedTimeTag":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private getTimeStamp()J
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 444
    const-wide/16 v4, 0x0

    .line 446
    .local v4, "result":J
    const/4 v0, 0x0

    .line 447
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v7, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateViewList:Ljava/util/List;

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

    .line 448
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 449
    sget v7, Lcom/biznessapps/layout/R$id;->CALENDAR_TAG:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "calendar":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    .restart local v0    # "calendar":Ljava/util/Calendar;
    goto :goto_0

    .line 452
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_3

    .line 455
    iget-object v7, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeViewList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 456
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 457
    sget v7, Lcom/biznessapps/layout/R$id;->TIME_HOURS_TAG:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 458
    .local v1, "hours":I
    sget v7, Lcom/biznessapps/layout/R$id;->TIME_MINS_TAG:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 460
    .local v3, "mins":I
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 461
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 462
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 463
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 464
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 465
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v4, v7, v9

    .line 470
    .end local v1    # "hours":I
    .end local v3    # "mins":I
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    return-wide v4
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->reorderButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$7;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$9;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    return-void
.end method

.method private initOrdersListView()V
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/ExpandableListView;

    iput-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->listView:Lcom/biznessapps/widgets/ExpandableListView;

    .line 191
    new-instance v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->pastOrder:Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getOrderedItems()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 192
    .local v0, "adapter":Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->listView:Lcom/biznessapps/widgets/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/ExpandableListView;->setItemsCanFocus(Z)V

    .line 193
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->listView:Lcom/biznessapps/widgets/ExpandableListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/ExpandableListView;->setExpandOn(Z)V

    .line 194
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->listView:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    return-void
.end method

.method private initViews()V
    .locals 12

    .prologue
    const/high16 v11, -0x1000000

    .line 345
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineServiceButtons()V

    .line 347
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->reorder_button:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->reorderButton:Landroid/widget/Button;

    .line 348
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->date_time_container:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateTimeContainer:Landroid/view/ViewGroup;

    .line 350
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->date_gallery_container:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateContainer:Landroid/widget/LinearLayout;

    .line 351
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->time_gallery_container:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeContainer:Landroid/widget/LinearLayout;

    .line 353
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->date_text_view:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 354
    .local v2, "dateTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->time_text_view:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 356
    .local v5, "timeTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->date:I

    invoke-static {v8, v9, v2, v10}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 357
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->time:I

    invoke-static {v8, v9, v5, v10}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 359
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v10, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->reorderButton:Landroid/widget/Button;

    invoke-virtual {v8, v9, v10}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 360
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->reorderButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->fo_reorder:I

    invoke-static {v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$color;->fo_buttom_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 363
    .local v0, "bgColorPassive":I
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    invoke-virtual {v8, v0, v11, v9}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 364
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    invoke-virtual {v8, v0, v11, v9}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 365
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    invoke-virtual {v8, v0, v11, v9}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 367
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->reorder_text_view:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 368
    .local v4, "reorderTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->reorder_text2_view:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 369
    .local v3, "reorderText2View":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    sget v8, Lcom/biznessapps/layout/R$string;->fo_reorder_text1:I

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 372
    sget v8, Lcom/biznessapps/layout/R$string;->fo_reorder_text2:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 374
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->total_charges_value_view:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 375
    .local v6, "totalChargesValueView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    sget v9, Lcom/biznessapps/layout/R$id;->total_charges_view:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 376
    .local v7, "totalChargesView":Landroid/widget/TextView;
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v1

    .line 377
    .local v1, "cart":Lcom/biznessapps/food_ordering/entities/CartEntity;
    const-string v8, "%s (%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lcom/biznessapps/layout/R$string;->fo_total_charges:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getCurrency()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->pastOrder:Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getTotalAmount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    return-void
.end method

.method private openConfirmationScreen(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "orderedItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->mode:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/food_ordering/entities/CartEntity;->setDeliveryOption(I)V

    .line 511
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v1

    iget-wide v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeStamp:J

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/food_ordering/entities/CartEntity;->setTimeStamp(J)V

    .line 512
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->item:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v1, v2}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->setChosenLocation(Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 514
    iget-boolean v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->hasAddedItems:Z

    if-nez v1, :cond_0

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->hasAddedItems:Z

    .line 516
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->addToCart(Ljava/util/List;)V

    .line 519
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_CONFIRMATION_PAGE"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_CONFIRMATION_PAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v1, "TAB_LABEL"

    sget v2, Lcom/biznessapps/layout/R$string;->fo_confirmation:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v1, "TIMESTAMP_EXTRA"

    iget-wide v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeStamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 523
    const-string v1, "LOCATION_ID"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->pastOrder:Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getLocationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 526
    return-void
.end method

.method private showLocationNotAvailableDialog(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    const/4 v0, 0x0

    sget v1, Lcom/biznessapps/layout/R$string;->location_is_not_available:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$3;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    const-string v0, "food_ordering_location_detail.php?app_code=%s&tab_id=%s&location_id=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->locId:Ljava/lang/String;

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
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->reorderButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_past_orders_detail:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    .line 105
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->pastOrder:Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    .line 106
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->pastOrder:Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    if-nez v0, :cond_1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->pastOrder:Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getLocationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->locId:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->initSettingsData()V

    .line 111
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->initViews()V

    .line 112
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->initOrdersListView()V

    .line 113
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->initListeners()V

    .line 114
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->loadBgUrl()V

    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->loadData()V

    .line 116
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 124
    .local v0, "activity":Lcom/biznessapps/common/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroy()V

    .line 128
    return-void
.end method

.method protected onError(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 161
    const/4 v0, 0x0

    sget v1, Lcom/biznessapps/layout/R$string;->network_error:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$2;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->locId:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmptyValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->showLocationNotAvailableDialog(Landroid/app/Activity;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;Lcom/biznessapps/api/ParseStateEntity;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;
    .param p2, "parseResult"    # Lcom/biznessapps/api/ParseStateEntity;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->parseLocation(Ljava/lang/String;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->item:Lcom/biznessapps/location/entities/LocationEntity;

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 172
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->item:Lcom/biznessapps/location/entities/LocationEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->item:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getFoOpeningTime()Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    move-result-object v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->showLocationNotAvailableDialog(Landroid/app/Activity;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineActiveServiceButtons()V

    goto :goto_0
.end method

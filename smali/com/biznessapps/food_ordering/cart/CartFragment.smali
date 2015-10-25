.class public Lcom/biznessapps/food_ordering/cart/CartFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "CartFragment.java"


# static fields
.field private static final CARD_TYPE:I = 0x2

.field private static final CASH_TYPE:I = 0x1

.field private static final FIRST_TIP_OPTION:I = 0xa

.field private static final PLUS_TEXT:Ljava/lang/String; = " + "

.field private static final SECOND_TIP_OPTION:I = 0xf

.field private static final THIRD_TIP_OPTION:I = 0x14


# instance fields
.field private activeTipButton:Landroid/widget/Button;

.field private address2View:Landroid/widget/EditText;

.field private addressView:Landroid/widget/TextView;

.field private cardButton:Landroid/widget/Button;

.field private cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

.field private cashButton:Landroid/widget/Button;

.field private checkoutButton:Landroid/widget/Button;

.field private chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

.field private emailView:Landroid/widget/EditText;

.field private firstNameView:Landroid/widget/EditText;

.field private firstTipButton:Landroid/widget/Button;

.field private lastNameView:Landroid/widget/EditText;

.field private listView:Lcom/biznessapps/widgets/ExpandableListView;

.field private paymentType:I

.field private phoneView:Landroid/widget/EditText;

.field private secondTipButton:Landroid/widget/Button;

.field private selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

.field private thirdTipButton:Landroid/widget/Button;

.field private tipValueView:Landroid/widget/TextView;

.field private totalChargesValueView:Landroid/widget/TextView;

.field private useNewLocationData:Z

.field private usedMode:I

.field private zipView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->paymentType:I

    return-void
.end method

.method static synthetic access$002(Lcom/biznessapps/food_ordering/cart/CartFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->paymentType:I

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->thirdTipButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/food_ordering/cart/CartFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->updateCharges()V

    return-void
.end method

.method static synthetic access$1200(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/food_ordering/cart/CartFragment;Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;
    .param p1, "x1"    # Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->showRemoveItemDialog(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/food_ordering/account/AccountEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/biznessapps/food_ordering/cart/CartFragment;Lcom/biznessapps/food_ordering/account/AccountEntity;)Lcom/biznessapps/food_ordering/account/AccountEntity;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;
    .param p1, "x1"    # Lcom/biznessapps/food_ordering/account/AccountEntity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/biznessapps/food_ordering/cart/CartFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->useNewLocationData:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/biznessapps/food_ordering/cart/CartFragment;Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;
    .param p1, "x1"    # Lcom/biznessapps/food_ordering/account/AccountEntity;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->initAcccountData(Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/biznessapps/food_ordering/cart/CartFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cardButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/biznessapps/food_ordering/cart/CartFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->initCartListView()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cashButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/food_ordering/cart/CartFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->checkout()V

    return-void
.end method

.method static synthetic access$602(Lcom/biznessapps/food_ordering/cart/CartFragment;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->activeTipButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$700(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstTipButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->secondTipButton:Landroid/widget/Button;

    return-object v0
.end method

.method private checkAvailability()V
    .locals 11

    .prologue
    .line 345
    new-instance v7, Lcom/biznessapps/food_ordering/cart/CartFragment$5;

    invoke-direct {v7, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$5;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    .line 352
    .local v7, "successRunnable":Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTimeStamp()J

    move-result-wide v4

    .line 353
    .local v4, "timeStamp":J
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getChosenLocation()Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/location/entities/LocationEntity;->getId()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "locationId":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getItems()Ljava/util/List;

    move-result-object v6

    .line 355
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    new-instance v0, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getViewsRef()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->tabId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v0, "task":Lcom/biznessapps/food_ordering/CheckAvailabilityTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 358
    return-void
.end method

.method private checkDeliveryRadius()Z
    .locals 11

    .prologue
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 602
    const/4 v2, 0x1

    .line 603
    .local v2, "isOk":Z
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getDeliveryRadius()F

    move-result v0

    .line 605
    .local v0, "deliveryRadius":F
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_0

    .line 607
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getChosenLocation()Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v5

    .line 608
    .local v5, "restaurantLocation":Lcom/biznessapps/location/entities/LocationEntity;
    iget-object v6, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    if-eqz v6, :cond_3

    .line 609
    iget-boolean v6, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->useNewLocationData:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v6}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "latitude":Ljava/lang/String;
    :goto_0
    iget-boolean v6, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->useNewLocationData:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v6}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "longitude":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v6, v7}, Lcom/biznessapps/location/LocationUtils;->getDistanceToPlace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    div-float v1, v6, v10

    .line 615
    .local v1, "distance":F
    cmpl-float v6, v1, v0

    if-lez v6, :cond_0

    .line 617
    const/4 v2, 0x0

    .line 618
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->fo_delivery_address_alert:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    .end local v1    # "distance":F
    .end local v3    # "latitude":Ljava/lang/String;
    .end local v4    # "longitude":Ljava/lang/String;
    .end local v5    # "restaurantLocation":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_0
    :goto_2
    return v2

    .line 609
    .restart local v5    # "restaurantLocation":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_1
    iget-object v6, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLatitude()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 610
    .restart local v3    # "latitude":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLongitude()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 623
    .end local v3    # "latitude":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v6}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v7}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/biznessapps/location/LocationUtils;->getDistanceToPlace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    div-float v1, v6, v10

    .line 625
    .restart local v1    # "distance":F
    cmpl-float v6, v1, v0

    if-lez v6, :cond_0

    .line 627
    const/4 v2, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->fo_delivery_address_alert:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkout()V
    .locals 14

    .prologue
    .line 556
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstNameView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "firstName":Ljava/lang/String;
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->lastNameView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, "lastName":Ljava/lang/String;
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->phoneView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 559
    .local v5, "phone":Ljava/lang/String;
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->zipView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 560
    .local v8, "zipCode":Ljava/lang/String;
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->addressView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "address1":Ljava/lang/String;
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->emailView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "email":Ljava/lang/String;
    iget v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 565
    :cond_0
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->email_container:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v6, 0x1

    .line 566
    .local v6, "shouldHasEmail":Z
    :goto_0
    if-eqz v6, :cond_4

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    const/4 v10, 0x3

    aput-object v2, v9, v10

    invoke-static {v9}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v1

    .line 569
    .local v1, "areEmpty":Z
    :goto_1
    if-nez v1, :cond_6

    .line 570
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isCorrectEmail(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    if-nez v6, :cond_5

    .line 571
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->checkAvailability()V

    .line 599
    .end local v1    # "areEmpty":Z
    .end local v6    # "shouldHasEmail":Z
    :cond_2
    :goto_2
    return-void

    .line 565
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 566
    .restart local v6    # "shouldHasEmail":Z
    :cond_4
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v9}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 573
    .restart local v1    # "areEmpty":Z
    :cond_5
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 576
    :cond_6
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_2

    .line 579
    .end local v1    # "areEmpty":Z
    .end local v6    # "shouldHasEmail":Z
    :cond_7
    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v8, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    const/4 v10, 0x4

    aput-object v0, v9, v10

    const/4 v10, 0x5

    aput-object v2, v9, v10

    invoke-static {v9}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 580
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isCorrectEmail(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 583
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v9}, Lcom/biznessapps/food_ordering/entities/CartEntity;->isMeetDeliveryMinumum()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 584
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->checkDeliveryRadius()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 585
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->checkAvailability()V

    goto :goto_2

    .line 588
    :cond_8
    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/biznessapps/layout/R$string;->fo_delivery_minimum_alert:I

    invoke-virtual {p0, v12}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    iget-object v13, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getDeliveryMin()F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 590
    .local v7, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 593
    .end local v7    # "text":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 596
    :cond_a
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto/16 :goto_2
.end method

.method private getConfirmationDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x7

    .line 728
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 729
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 731
    .local v1, "currentDay":I
    new-instance v2, Ljava/util/Date;

    iget-object v4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTimeStamp()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 732
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 735
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 736
    sget v4, Lcom/biznessapps/layout/R$string;->fo_today:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "day":Ljava/lang/String;
    :goto_0
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, v2}, Lcom/biznessapps/food_ordering/FOUtils;->getDeviceDateFormat(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 738
    .end local v3    # "day":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "EEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "day":Ljava/lang/String;
    goto :goto_0
.end method

.method private getTip()I
    .locals 3

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "tip":I
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->activeTipButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->activeTipButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->activeTipButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 421
    :cond_0
    return v0
.end method

.method private initAcccountData(Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    .locals 2
    .param p1, "account"    # Lcom/biznessapps/food_ordering/account/AccountEntity;

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->phoneView:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_1
    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->lastNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :cond_2
    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->emailView:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_3
    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->addressView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_4
    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 377
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->address2View:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 379
    :cond_5
    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getZipcode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->zipView:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getZipcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_6
    return-void
.end method

.method private initCartListView()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/ExpandableListView;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->listView:Lcom/biznessapps/widgets/ExpandableListView;

    .line 501
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->listView:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x333334

    invoke-static {v0, v1, v2}, Lcom/biznessapps/food_ordering/FOUtils;->addLineSeparator(Landroid/widget/ListView;Landroid/content/Context;I)V

    .line 503
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getItems()Ljava/util/List;

    move-result-object v8

    .line 504
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/biznessapps/layout/R$string;->fo_cart_is_empty:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/food_ordering/cart/CartFragment$10;

    invoke-direct {v3, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$10;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    sget v5, Lcom/biznessapps/layout/R$string;->ok:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    new-instance v7, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v7, v0, v8, v1}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 516
    .local v7, "adapter":Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;
    new-instance v0, Lcom/biznessapps/food_ordering/cart/CartFragment$11;

    invoke-direct {v0, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$11;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->setListener(Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;)V

    .line 527
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->listView:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/ExpandableListView;->setItemsCanFocus(Z)V

    .line 528
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->listView:Lcom/biznessapps/widgets/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/ExpandableListView;->setExpandOn(Z)V

    .line 529
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->listView:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v0, v7}, Lcom/biznessapps/widgets/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 530
    return-void
.end method

.method private initDeliveryTypeSection()V
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x3

    const/4 v11, 0x1

    .line 533
    iget-object v7, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->delivery_text_view:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 534
    .local v6, "deliveryTextView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$color;->fo_cart_item_background:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 536
    .local v1, "color":I
    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 537
    iget v7, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    if-ne v7, v11, :cond_0

    sget v7, Lcom/biznessapps/layout/R$string;->fo_delivery:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, "deliveryText":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 541
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 543
    .local v2, "currentDay":I
    new-instance v3, Ljava/util/Date;

    iget-object v7, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTimeStamp()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 544
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 547
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v2, v7, :cond_2

    .line 548
    sget v7, Lcom/biznessapps/layout/R$string;->fo_today:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "day":Ljava/lang/String;
    :goto_1
    const-string v7, "%s %s @ %s"

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    aput-object v4, v8, v11

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/biznessapps/food_ordering/FOUtils;->getDeviceDateFormat(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    return-void

    .line 537
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "currentDay":I
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "day":Ljava/lang/String;
    .end local v5    # "deliveryText":Ljava/lang/String;
    :cond_0
    iget v7, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    if-ne v7, v12, :cond_1

    sget v7, Lcom/biznessapps/layout/R$string;->fo_dine_in:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    sget v7, Lcom/biznessapps/layout/R$string;->fo_takeout:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 550
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v2    # "currentDay":I
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v5    # "deliveryText":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "EEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "day":Ljava/lang/String;
    goto :goto_1
.end method

.method private initEmailReceiptSection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 472
    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->email_receipt_container:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 473
    .local v2, "emailReceiptContainer":Landroid/view/ViewGroup;
    iget v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 474
    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->email_container:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 475
    .local v1, "emailLabelContainer":Landroid/view/ViewGroup;
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 476
    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->email_receipt_text_view:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 477
    .local v3, "emailReceiptView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->email_receipt:I

    invoke-static {v5, v6, v3, v7}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 479
    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->turn_function_button:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 480
    .local v4, "turnButton":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->turn_circle_view:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 481
    .local v0, "circleView":Landroid/widget/ImageView;
    new-instance v5, Lcom/biznessapps/food_ordering/cart/CartFragment$9;

    invoke-direct {v5, p0, v4, v0, v1}, Lcom/biznessapps/food_ordering/cart/CartFragment$9;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v8, v0, v4, v5}, Lcom/biznessapps/utils/ViewUtils;->updateTurnOnOffViewState(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V

    .line 494
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 496
    .end local v0    # "circleView":Landroid/widget/ImageView;
    .end local v1    # "emailLabelContainer":Landroid/view/ViewGroup;
    .end local v3    # "emailReceiptView":Landroid/widget/TextView;
    .end local v4    # "turnButton":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private initMyAddressesSection()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    .line 639
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->my_addresses_container:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 640
    .local v4, "myAddressContainer":Landroid/view/ViewGroup;
    iget v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    if-ne v9, v5, :cond_2

    .line 641
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 643
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->my_addresses_gallery_container:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 644
    .local v2, "galleryContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 646
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/storage/StorageKeeper;->getFOAccouns()Ljava/util/List;

    move-result-object v1

    .line 648
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/account/AccountEntity;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    .line 649
    .local v5, "size":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 650
    add-int/lit8 v9, v5, -0x1

    if-ne v3, v9, :cond_1

    const-string v6, " + "

    .line 652
    .local v6, "text":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$layout;->fo_category_quantity_item:I

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v8

    .line 653
    .local v8, "view":Landroid/view/View;
    sget v9, Lcom/biznessapps/layout/R$id;->background_view:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 654
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->setBackground(Landroid/widget/ImageView;Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V

    .line 655
    sget v9, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 656
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    sget v9, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 658
    new-instance v9, Lcom/biznessapps/food_ordering/cart/CartFragment$12;

    invoke-direct {v9, p0, v6, v1}, Lcom/biznessapps/food_ordering/cart/CartFragment$12;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 650
    .end local v0    # "backgroundView":Landroid/widget/ImageView;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-virtual {v9}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 675
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/account/AccountEntity;>;"
    .end local v2    # "galleryContainer":Landroid/widget/LinearLayout;
    .end local v3    # "i":I
    .end local v5    # "size":I
    :cond_2
    return-void
.end method

.method private initTipSection()V
    .locals 6

    .prologue
    .line 425
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->first_tip_button:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstTipButton:Landroid/widget/Button;

    .line 426
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->second_tip_button:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->secondTipButton:Landroid/widget/Button;

    .line 427
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->third_tip_button:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->thirdTipButton:Landroid/widget/Button;

    .line 428
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->allowTips()Z

    move-result v0

    .line 429
    .local v0, "allowTip":Z
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->tips_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    if-eqz v0, :cond_0

    .line 431
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v2

    .line 432
    .local v2, "tipTextColor":I
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$color;->fo_item_background:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 433
    .local v1, "tipBgColor":I
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstTipButton:Landroid/widget/Button;

    invoke-virtual {v3, v1, v2, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 434
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->secondTipButton:Landroid/widget/Button;

    invoke-virtual {v3, v1, v2, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 435
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->thirdTipButton:Landroid/widget/Button;

    invoke-virtual {v3, v1, v2, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 437
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstTipButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 438
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->secondTipButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 439
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->thirdTipButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 440
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstTipButton:Landroid/widget/Button;

    const-string v4, "10%"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->secondTipButton:Landroid/widget/Button;

    const-string v4, "15%"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->thirdTipButton:Landroid/widget/Button;

    const-string v4, "20%"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstTipButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/food_ordering/cart/CartFragment$6;

    invoke-direct {v4, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$6;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->secondTipButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/food_ordering/cart/CartFragment$7;

    invoke-direct {v4, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$7;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->thirdTipButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/food_ordering/cart/CartFragment$8;

    invoke-direct {v4, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$8;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .end local v1    # "tipBgColor":I
    .end local v2    # "tipTextColor":I
    :cond_0
    return-void

    .line 429
    :cond_1
    const/16 v3, 0x8

    goto/16 :goto_0
.end method

.method private postOrderToServer(Ljava/lang/String;)V
    .locals 23
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstNameView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 772
    .local v7, "firstName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->lastNameView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 773
    .local v12, "lastName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->emailView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 774
    .local v6, "email":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->phoneView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 775
    .local v15, "phone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->addressView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "address1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->address2View:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, "address2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->zipView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 780
    .local v18, "zip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setFirstName(Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLastName(Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setEmail(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setPhone(Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setZipcode(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress1(Ljava/lang/String;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress2(Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->useNewLocationData:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLatitude(Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setLongitude(Ljava/lang/String;)V

    .line 793
    :cond_0
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->selectedAccount:Lcom/biznessapps/food_ordering/account/AccountEntity;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/biznessapps/storage/StorageKeeper;->addFOAccount(Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    .line 795
    :cond_1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 796
    .local v14, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "first_name"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v19, "last_name"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v19, "phone"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 800
    const-string v19, "address1"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_2
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 803
    const-string v19, "address2"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :cond_3
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 806
    const-string v19, "email"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :cond_4
    invoke-static/range {v18 .. v18}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 809
    const-string v19, "zipcode"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :cond_5
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getChosenLocation()Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/location/entities/LocationEntity;->getId()Ljava/lang/String;

    move-result-object v13

    .line 812
    .local v13, "locationId":Ljava/lang/String;
    const-string v19, "location_id"

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v19, "order_type"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getDeliveryOption()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string v20, "payment_method"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->paymentType:I

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const-string v19, "5"

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, "categoryId":Ljava/lang/String;
    const-string v17, "[%s]"

    .line 819
    .local v17, "rootJson":Ljava/lang/String;
    const/4 v4, 0x0

    .line 820
    .local v4, "categories":Ljava/lang/String;
    const-string v8, "{\"category_id\":\"%s\",\"item_id\":\"%s\",\"size_id\":\"%s\",\"options\":[%s],\"quantity\":\"%d\",\"note\":\"%s\"}"

    .line 821
    .local v8, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getItems()Ljava/util/List;

    move-result-object v11

    .line 822
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 823
    .local v10, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    if-nez v5, :cond_6

    .line 824
    invoke-virtual {v10}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    .line 826
    :cond_6
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v10}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-virtual {v10}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getSizeValue()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-virtual {v10}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getOptionsIds()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-virtual {v10}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getQuantity()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x5

    invoke-virtual {v10}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getNote()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 827
    .local v16, "result":Ljava/lang/String;
    if-nez v4, :cond_8

    .line 828
    move-object/from16 v4, v16

    goto :goto_1

    .line 816
    .end local v4    # "categories":Ljava/lang/String;
    .end local v5    # "categoryId":Ljava/lang/String;
    .end local v8    # "format":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "rootJson":Ljava/lang/String;
    :cond_7
    const-string v19, "4"

    goto :goto_0

    .line 830
    .restart local v4    # "categories":Ljava/lang/String;
    .restart local v5    # "categoryId":Ljava/lang/String;
    .restart local v8    # "format":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .restart local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v17    # "rootJson":Ljava/lang/String;
    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 833
    .end local v10    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v16    # "result":Ljava/lang/String;
    :cond_9
    const-string v19, "items"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v4, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string v19, "timestamp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTimeStamp()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string v19, "tip_percent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getTip()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string v19, "app_code"

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v19, "tab_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->tabId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    invoke-static/range {p1 .. p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 839
    const-string v19, "nonce"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string v19, "store_customer"

    const-string v20, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v19, "action"

    const-string v20, "sale"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :cond_a
    const-string v19, "total_price"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTotalCharges()F

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/biznessapps/food_ordering/FOUtils;->getRoundValue(F)F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v19, "app_id"

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 847
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/biznessapps/food_ordering/cart/CartFragment;->loadPostData(Ljava/util/Map;)V

    .line 848
    return-void
.end method

.method private showConfirmationSuccessDialog(Landroid/app/Activity;)V
    .locals 17
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 679
    :try_start_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 680
    .local v3, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 682
    .local v5, "context":Landroid/content/Context;
    sget v13, Lcom/biznessapps/layout/R$layout;->fo_confirmation_success_dialog:I

    invoke-static {v5, v13}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v12

    .line 683
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 684
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 685
    .local v6, "dialog":Landroid/app/AlertDialog;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 687
    sget v13, Lcom/biznessapps/layout/R$id;->ok_button:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 688
    .local v8, "okButton":Landroid/widget/Button;
    sget v13, Lcom/biznessapps/layout/R$string;->ok:I

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 689
    sget v13, Lcom/biznessapps/layout/R$id;->success_image_view:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 690
    .local v10, "successImageView":Landroid/widget/ImageView;
    sget v13, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 691
    .local v11, "titleView":Landroid/widget/TextView;
    sget v13, Lcom/biznessapps/layout/R$id;->order_info_view:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 692
    .local v9, "orderInfoView":Landroid/widget/TextView;
    sget v13, Lcom/biznessapps/layout/R$id;->additional_text_view:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 694
    .local v2, "additionalInfoView":Landroid/widget/TextView;
    sget v13, Lcom/biznessapps/layout/R$string;->success:I

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    sget v13, Lcom/biznessapps/layout/R$string;->fo_order_info:I

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getConfirmationDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    sget v13, Lcom/biznessapps/layout/R$string;->thank_you:I

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    const/high16 v4, -0x1000000

    .line 700
    .local v4, "color":I
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 702
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 703
    invoke-static {v5}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v13

    invoke-virtual {v13, v4, v10}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(ILjava/lang/Object;)V

    .line 704
    invoke-static {v5}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v13, v14, v8}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 706
    sget v13, Lcom/biznessapps/layout/R$string;->ok:I

    invoke-static {v5, v13}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 707
    new-instance v13, Lcom/biznessapps/food_ordering/cart/CartFragment$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v5, v1}, Lcom/biznessapps/food_ordering/cart/CartFragment$13;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    .end local v2    # "additionalInfoView":Landroid/widget/TextView;
    .end local v3    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "color":I
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    .end local v8    # "okButton":Landroid/widget/Button;
    .end local v9    # "orderInfoView":Landroid/widget/TextView;
    .end local v10    # "successImageView":Landroid/widget/ImageView;
    .end local v11    # "titleView":Landroid/widget/TextView;
    .end local v12    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v7

    .line 723
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showRemoveItemDialog(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .prologue
    .line 744
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->fo_remove_cart_message:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 746
    sget v2, Lcom/biznessapps/layout/R$string;->yes:I

    new-instance v3, Lcom/biznessapps/food_ordering/cart/CartFragment$14;

    invoke-direct {v3, p0, p1}, Lcom/biznessapps/food_ordering/cart/CartFragment$14;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 757
    sget v2, Lcom/biznessapps/layout/R$string;->no:I

    new-instance v3, Lcom/biznessapps/food_ordering/cart/CartFragment$15;

    invoke-direct {v3, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$15;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 766
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 767
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 768
    return-void
.end method

.method private updateCharges()V
    .locals 14

    .prologue
    .line 385
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getTip()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/biznessapps/food_ordering/entities/CartEntity;->setTip(F)V

    .line 386
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/CartEntity;->updateValues()V

    .line 387
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->tipValueView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    iget-object v13, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTipValue()F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->totalChargesValueView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    iget-object v13, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTotalCharges()F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v12, Lcom/biznessapps/layout/R$id;->convenience_fee_value_view:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 391
    .local v2, "convenienceFeeView":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v12, Lcom/biznessapps/layout/R$id;->delivery_fee_value_view:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 392
    .local v4, "deliveryFeeView":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getConvenienceFee()F

    move-result v1

    .line 393
    .local v1, "convenienceFee":F
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getDeliveryFee()F

    move-result v3

    .line 394
    .local v3, "deliveryFee":F
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v11, v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v11, v3}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v11}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v11}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v12, Lcom/biznessapps/layout/R$id;->convenience_container:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-lez v11, :cond_1

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_2

    const/4 v6, 0x1

    .line 400
    .local v6, "showDeliveryFee":Z
    :goto_1
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v12, Lcom/biznessapps/layout/R$id;->delivery_container:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v6, :cond_3

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v12, Lcom/biznessapps/layout/R$id;->tax_list_view:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/widgets/RefreshableListView;

    .line 403
    .local v10, "taxListView":Lcom/biznessapps/widgets/RefreshableListView;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 404
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getTaxes()Ljava/util/List;

    move-result-object v9

    .line 405
    .local v9, "taxList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v8, "taxCalculatedList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/food_ordering/entities/TaxEntity;

    .line 408
    .local v7, "tax":Lcom/biznessapps/food_ordering/entities/TaxEntity;
    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getCaclulatedTax()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    .line 409
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 398
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "showDeliveryFee":Z
    .end local v7    # "tax":Lcom/biznessapps/food_ordering/entities/TaxEntity;
    .end local v8    # "taxCalculatedList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    .end local v9    # "taxList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    .end local v10    # "taxListView":Lcom/biznessapps/widgets/RefreshableListView;
    :cond_1
    const/16 v11, 0x8

    goto :goto_0

    .line 399
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 400
    .restart local v6    # "showDeliveryFee":Z
    :cond_3
    const/16 v11, 0x8

    goto :goto_2

    .line 412
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v8    # "taxCalculatedList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    .restart local v9    # "taxList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    .restart local v10    # "taxListView":Lcom/biznessapps/widgets/RefreshableListView;
    :cond_4
    new-instance v0, Lcom/biznessapps/food_ordering/cart/TaxAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v11, v8, v12}, Lcom/biznessapps/food_ordering/cart/TaxAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 413
    .local v0, "adapter":Lcom/biznessapps/food_ordering/cart/TaxAdapter;
    invoke-virtual {v10, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 414
    return-void
.end method


# virtual methods
.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const-string v0, "food_ordering_post.php"

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->content_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

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
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->checkoutButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cardButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cashButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 13
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 176
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->initCartListView()V

    .line 177
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->initTipSection()V

    .line 178
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->initEmailReceiptSection()V

    .line 179
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->initDeliveryTypeSection()V

    .line 181
    sget v8, Lcom/biznessapps/layout/R$id;->card_button:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cardButton:Landroid/widget/Button;

    .line 182
    sget v8, Lcom/biznessapps/layout/R$id;->cash_button:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cashButton:Landroid/widget/Button;

    .line 184
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cardButton:Landroid/widget/Button;

    new-instance v9, Lcom/biznessapps/food_ordering/cart/CartFragment$1;

    invoke-direct {v9, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$1;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cashButton:Landroid/widget/Button;

    new-instance v9, Lcom/biznessapps/food_ordering/cart/CartFragment$2;

    invoke-direct {v9, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$2;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cardButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->fo_card:I

    invoke-static {v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cashButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->cash:I

    invoke-static {v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getPaymentGateways()Ljava/util/List;

    move-result-object v6

    .line 204
    .local v6, "payments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v2, 0x1

    .line 205
    .local v2, "hasPayments":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 206
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;

    .line 207
    .local v4, "payment":Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    .line 208
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cardButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cardButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->performClick()Z

    goto :goto_1

    .line 204
    .end local v2    # "hasPayments":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "payment":Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 211
    .restart local v2    # "hasPayments":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "payment":Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;
    :cond_2
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;->getType()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 212
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cashButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cardButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_0

    .line 215
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cashButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->performClick()Z

    goto :goto_1

    .line 221
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "payment":Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;
    :cond_3
    sget v8, Lcom/biznessapps/layout/R$id;->checkout_button:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->checkoutButton:Landroid/widget/Button;

    .line 222
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->checkoutButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->fo_checkout:I

    invoke-static {v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->checkoutButton:Landroid/widget/Button;

    new-instance v9, Lcom/biznessapps/food_ordering/cart/CartFragment$3;

    invoke-direct {v9, p0, v2}, Lcom/biznessapps/food_ordering/cart/CartFragment$3;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Z)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v10, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->checkoutButton:Landroid/widget/Button;

    invoke-virtual {v8, v9, v10}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 236
    sget v8, Lcom/biznessapps/layout/R$id;->first_name_editview:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstNameView:Landroid/widget/EditText;

    .line 237
    sget v8, Lcom/biznessapps/layout/R$id;->last_name_editview:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->lastNameView:Landroid/widget/EditText;

    .line 238
    sget v8, Lcom/biznessapps/layout/R$id;->phone_editview:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->phoneView:Landroid/widget/EditText;

    .line 239
    sget v8, Lcom/biznessapps/layout/R$id;->email_editview:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->emailView:Landroid/widget/EditText;

    .line 240
    sget v8, Lcom/biznessapps/layout/R$id;->address_editview:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->addressView:Landroid/widget/TextView;

    .line 241
    sget v8, Lcom/biznessapps/layout/R$id;->address2_editview:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->address2View:Landroid/widget/EditText;

    .line 242
    sget v8, Lcom/biznessapps/layout/R$id;->zip_editview:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->zipView:Landroid/widget/EditText;

    .line 245
    iget v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 246
    :cond_4
    sget v8, Lcom/biznessapps/layout/R$id;->address_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 247
    sget v8, Lcom/biznessapps/layout/R$id;->address2_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 248
    sget v8, Lcom/biznessapps/layout/R$id;->zip_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_5
    sget v8, Lcom/biznessapps/layout/R$id;->zip_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->zipView:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 252
    sget v8, Lcom/biznessapps/layout/R$id;->address_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->addressView:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 253
    sget v8, Lcom/biznessapps/layout/R$id;->address2_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->address2View:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 254
    sget v8, Lcom/biznessapps/layout/R$id;->firstname_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->firstNameView:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 255
    sget v8, Lcom/biznessapps/layout/R$id;->lastname_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->lastNameView:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 256
    sget v8, Lcom/biznessapps/layout/R$id;->phone_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->phoneView:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 257
    sget v8, Lcom/biznessapps/layout/R$id;->email_container:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->emailView:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/biznessapps/food_ordering/FOUtils;->plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 259
    sget v8, Lcom/biznessapps/layout/R$id;->address_label_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/biznessapps/layout/R$string;->fo_address:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 260
    sget v8, Lcom/biznessapps/layout/R$id;->zip_label_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/biznessapps/layout/R$string;->zip:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 261
    sget v8, Lcom/biznessapps/layout/R$id;->address2_label_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/biznessapps/layout/R$string;->fo_apt:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 262
    sget v8, Lcom/biznessapps/layout/R$id;->first_name_label_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/biznessapps/layout/R$string;->first_name:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 263
    sget v8, Lcom/biznessapps/layout/R$id;->last_name_label_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/biznessapps/layout/R$string;->last_name:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 264
    sget v8, Lcom/biznessapps/layout/R$id;->phone_label_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/biznessapps/layout/R$string;->phone:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 265
    sget v8, Lcom/biznessapps/layout/R$id;->email_label_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 266
    sget v8, Lcom/biznessapps/layout/R$id;->convenience_fee_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/biznessapps/layout/R$string;->fo_convenience_fee:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 267
    sget v8, Lcom/biznessapps/layout/R$id;->convenience_fee_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    sget v8, Lcom/biznessapps/layout/R$id;->delivery_fee_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/biznessapps/layout/R$string;->fo_delivery_fee:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 269
    sget v8, Lcom/biznessapps/layout/R$id;->delivery_fee_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    sget v8, Lcom/biznessapps/layout/R$id;->tip_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "%s?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/biznessapps/layout/R$string;->fo_tip:I

    invoke-virtual {p0, v12}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    sget v8, Lcom/biznessapps/layout/R$id;->tip_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    sget v8, Lcom/biznessapps/layout/R$id;->total_charges_value_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->totalChargesValueView:Landroid/widget/TextView;

    .line 274
    sget v8, Lcom/biznessapps/layout/R$id;->tip_value_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->tipValueView:Landroid/widget/TextView;

    .line 276
    sget v8, Lcom/biznessapps/layout/R$id;->total_charges_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 277
    .local v7, "totalChargesView":Landroid/widget/TextView;
    const-string v8, "%s (%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lcom/biznessapps/layout/R$string;->fo_total_charges:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v11}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getCurrency()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->totalChargesValueView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->tipValueView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->updateCharges()V

    .line 286
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->addressView:Landroid/widget/TextView;

    new-instance v9, Lcom/biznessapps/food_ordering/cart/CartFragment$4;

    invoke-direct {v9, p0}, Lcom/biznessapps/food_ordering/cart/CartFragment$4;-><init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    sget v8, Lcom/biznessapps/layout/R$id;->address_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    .local v0, "addressView":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->contacts_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 300
    .local v1, "contactView":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->payment_text_view:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 301
    .local v5, "paymentView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->fo_address:I

    invoke-static {v8, v9, v0, v10}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 302
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->contact:I

    invoke-static {v8, v9, v1, v10}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 303
    iget-object v8, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->fo_payment:I

    invoke-static {v8, v9, v5, v10}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 304
    return-void
.end method

.method protected loadBgUrl()V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->bgUrl:Ljava/lang/String;

    .line 155
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->loadBgUrl()V

    .line 156
    return-void
.end method

.method protected loadData()V
    .locals 6

    .prologue
    .line 313
    iget v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->paymentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 314
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getClientToken()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "clientToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    const-string v3, "com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    new-instance v3, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;

    invoke-direct {v3}, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;-><init>()V

    sget v4, Lcom/biznessapps/layout/R$string;->fo_cart:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->primaryDescription(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v5}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTotalCharges()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->amount(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->fo_checkout:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->submitButtonText(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/braintreepayments/api/dropin/Customization$CustomizationBuilder;->build()Lcom/braintreepayments/api/dropin/Customization;

    move-result-object v1

    .line 323
    .local v1, "customization":Lcom/braintreepayments/api/dropin/Customization;
    const-string v3, "com.braintreepayments.api.dropin.EXTRA_CUSTOMIZATION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 324
    const/16 v3, 0x17

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/food_ordering/cart/CartFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 331
    .end local v0    # "clientToken":Ljava/lang/String;
    .end local v1    # "customization":Lcom/braintreepayments/api/dropin/Customization;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 326
    .restart local v0    # "clientToken":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->fo_card_payment_not_available:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    .end local v0    # "clientToken":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/biznessapps/food_ordering/cart/CartFragment;->postOrderToServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    packed-switch p2, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    const/16 v3, 0x17

    if-ne p1, v3, :cond_1

    .line 145
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 146
    const-string v3, "com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD_NONCE"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "paymentMethodNonce":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->postOrderToServer(Ljava/lang/String;)V

    .line 150
    .end local v2    # "paymentMethodNonce":Ljava/lang/String;
    :cond_1
    return-void

    .line 134
    :pswitch_0
    const-string v3, "ITEM_EXTRA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/location/entities/LocationEntity;

    .line 135
    .local v1, "newChosenLocation":Lcom/biznessapps/location/entities/LocationEntity;
    if-eqz v1, :cond_0

    .line 137
    iput-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    .line 138
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->useNewLocationData:Z

    .line 139
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v3}, Lcom/biznessapps/location/entities/LocationEntity;->getAddress1()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->addressView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_cart:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    .line 111
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    return-object v0

    .line 114
    :cond_0
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    .line 115
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getDeliveryOption()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->usedMode:I

    .line 116
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->initSettingsData()V

    .line 117
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 118
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->loadBgUrl()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->initMyAddressesSection()V

    .line 127
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->showConfirmationSuccessDialog(Landroid/app/Activity;)V

    .line 342
    return-void
.end method

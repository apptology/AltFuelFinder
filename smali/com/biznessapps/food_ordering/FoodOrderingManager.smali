.class public Lcom/biznessapps/food_ordering/FoodOrderingManager;
.super Ljava/lang/Object;
.source "FoodOrderingManager.java"


# static fields
.field private static instance:Lcom/biznessapps/food_ordering/FoodOrderingManager;


# instance fields
.field private cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

.field private chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

.field private commonInfo:Lcom/biznessapps/food_ordering/entities/CommonInfo;

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private pastOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/PastOrderEntity;",
            ">;"
        }
    .end annotation
.end field

.field private restaurantEntity:Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

.field private taxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/TaxEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/biznessapps/food_ordering/entities/CommonInfo;

    invoke-direct {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->commonInfo:Lcom/biznessapps/food_ordering/entities/CommonInfo;

    .line 35
    new-instance v0, Lcom/biznessapps/food_ordering/entities/CartEntity;

    invoke-direct {v0}, Lcom/biznessapps/food_ordering/entities/CartEntity;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->instance:Lcom/biznessapps/food_ordering/FoodOrderingManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/biznessapps/food_ordering/FoodOrderingManager;

    invoke-direct {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;-><init>()V

    sput-object v0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->instance:Lcom/biznessapps/food_ordering/FoodOrderingManager;

    .line 21
    :cond_0
    sget-object v0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->instance:Lcom/biznessapps/food_ordering/FoodOrderingManager;

    return-object v0
.end method


# virtual methods
.method public getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->cart:Lcom/biznessapps/food_ordering/entities/CartEntity;

    return-object v0
.end method

.method public getChosenLocation()Lcom/biznessapps/location/entities/LocationEntity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    return-object v0
.end method

.method public getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->commonInfo:Lcom/biznessapps/food_ordering/entities/CommonInfo;

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getPastOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/PastOrderEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->pastOrders:Ljava/util/List;

    return-object v0
.end method

.method public getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->restaurantEntity:Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    return-object v0
.end method

.method public getTaxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/TaxEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->taxes:Ljava/util/List;

    return-object v0
.end method

.method public setChosenLocation(Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 0
    .param p1, "chosenLocation"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->chosenLocation:Lcom/biznessapps/location/entities/LocationEntity;

    .line 47
    return-void
.end method

.method public setLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->locations:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setPastOrders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/PastOrderEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "pastOrders":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/PastOrderEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->pastOrders:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setRestaurantEntity(Lcom/biznessapps/food_ordering/entities/RestaurantEntity;)V
    .locals 0
    .param p1, "restaurantEntity"    # Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->restaurantEntity:Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    .line 71
    return-void
.end method

.method public setTaxes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/TaxEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "taxes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/FoodOrderingManager;->taxes:Ljava/util/List;

    .line 79
    return-void
.end method

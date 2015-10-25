.class public Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;
.super Lcom/biznessapps/common/activities/CommonShareableMapActivity;
.source "LocationsMapActivity.java"


# instance fields
.field private listButton:Landroid/widget/ImageView;

.field private selectButton:Landroid/widget/Button;

.field private selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->markersHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)Lcom/biznessapps/location/entities/LocationEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;
    .param p1, "x1"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->openDetail(Lcom/biznessapps/location/entities/LocationEntity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->markersHashMap:Ljava/util/Map;

    return-object v0
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 92
    sget v1, Lcom/biznessapps/layout/R$id;->list_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->listButton:Landroid/widget/ImageView;

    .line 93
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->listButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$2;-><init>(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v1, Lcom/biznessapps/layout/R$id;->select_this_location_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectButton:Landroid/widget/Button;

    .line 106
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;-><init>(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectButton:Landroid/widget/Button;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 122
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->fo_select_this_location:I

    invoke-static {v2, v3}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$4;

    invoke-direct {v2, p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$4;-><init>(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 135
    sget v1, Lcom/biznessapps/layout/R$id;->location_ping:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 137
    return-void
.end method

.method private openDetail(Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_LOCATION_DETAIL"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_LOCATION_DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "LOCATION_ID"

    invoke-virtual {p1}, Lcom/biznessapps/location/entities/LocationEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->setChosenLocation(Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 152
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method private showAddressInfo(Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 140
    sget v3, Lcom/biznessapps/layout/R$id;->location_city_text:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 141
    .local v1, "cityView":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->location_address_text:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, "addressView":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->distance_text:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 143
    .local v2, "distanceView":Landroid/widget/TextView;
    invoke-static {v1, v0, p1}, Lcom/biznessapps/location/LocationUtils;->setAddress(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 144
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, p1}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected defineMapItemClickAction(Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 57
    instance-of v0, p1, Lcom/biznessapps/location/entities/LocationEntity;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/biznessapps/location/entities/LocationEntity;

    .end local p1    # "item":Lcom/biznessapps/common/entities/MapEntity;
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;

    .line 59
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->showAddressInfo(Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;-><init>(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_locations_map:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->initViews()V

    .line 41
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getLocations()Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->addPins(Ljava/util/List;)V

    .line 43
    return-void
.end method

.method protected useMapInfoWindow()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

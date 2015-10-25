.class public Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "ChooseLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/location/entities/LocationEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_RESULTS:I = 0x5


# instance fields
.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private markersHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/biznessapps/common/entities/MapEntity;",
            ">;"
        }
    .end annotation
.end field

.field private selectButton:Landroid/widget/Button;

.field private selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->markersHashMap:Ljava/util/Map;

    .line 253
    return-void
.end method

.method static synthetic access$002(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->searchAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)Lcom/biznessapps/location/entities/LocationEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
    .param p1, "x1"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->openDetail(Lcom/biznessapps/location/entities/LocationEntity;)V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->markersHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
    .param p1, "x1"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->showAddressInfo(Lcom/biznessapps/common/entities/MapEntity;)V

    return-void
.end method

.method static synthetic access$800(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getConvertedAddresses(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method private addMapPoint(Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 9
    .param p1, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/MapEntity;->getLatitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/common/entities/MapEntity;->getLongitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/MapEntity;->getLatitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 163
    .local v1, "latitude":D
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/MapEntity;->getLongitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 164
    .local v3, "longitude":D
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 167
    .local v6, "myLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-direct {p0, v6, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getMarkerOptions(Lcom/google/android/gms/maps/model/LatLng;Lcom/biznessapps/common/entities/MapEntity;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    .line 168
    .local v5, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    iget-object v7, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 169
    .local v0, "currentMarker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v7, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->markersHashMap:Ljava/util/Map;

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v7, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 172
    iget-object v7, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$4;

    invoke-direct {v8, p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$4;-><init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 180
    .end local v0    # "currentMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v1    # "latitude":D
    .end local v3    # "longitude":D
    .end local v5    # "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    .end local v6    # "myLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method

.method private getConvertedAddresses(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v3, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 240
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    new-instance v2, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v2}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 242
    .local v2, "location":Lcom/biznessapps/location/entities/LocationEntity;
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/location/entities/LocationEntity;->setTitle(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress1(Ljava/lang/String;)V

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/location/entities/LocationEntity;->setLatitude(Ljava/lang/String;)V

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/location/entities/LocationEntity;->setLongitude(Ljava/lang/String;)V

    .line 246
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_1
    return-object v3
.end method

.method private getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$5;-><init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)V

    return-object v0
.end method

.method private getMarkerOptions(Lcom/google/android/gms/maps/model/LatLng;Lcom/biznessapps/common/entities/MapEntity;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 5
    .param p1, "myLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 211
    sget v2, Lcom/biznessapps/layout/R$drawable;->contact_map_pin:I

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/biznessapps/location/MapUtils;->customizeMarkerBitmap(ILandroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    .local v0, "customizedBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 216
    .local v1, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    return-object v1
.end method

.method private openDetail(Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress1(Ljava/lang/String;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v0, "closeIntent":Landroid/content/Intent;
    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 228
    return-void
.end method

.method private plugListView(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0, p2}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->showOnTheMap(Ljava/util/List;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private searchAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "locName"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getViewsRef()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;-><init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Landroid/app/Activity;Ljava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    :cond_0
    return-void
.end method

.method private showAddressInfo(Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->location_address_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    .local v0, "addressView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/MapEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    instance-of v1, p1, Lcom/biznessapps/location/entities/LocationEntity;

    if-eqz v1, :cond_0

    .line 186
    check-cast p1, Lcom/biznessapps/location/entities/LocationEntity;

    .end local p1    # "item":Lcom/biznessapps/common/entities/MapEntity;
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;

    .line 188
    :cond_0
    return-void
.end method

.method private showOnTheMap(Ljava/util/List;)V
    .locals 6
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
    .line 147
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 148
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->markersHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/location/entities/LocationEntity;

    .line 151
    .local v1, "location":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-direct {p0, v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->addMapPoint(Lcom/biznessapps/common/entities/MapEntity;)V

    goto :goto_0

    .line 154
    .end local v1    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->markersHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->markersHashMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/biznessapps/location/MapUtils;->defineZoom(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/Set;IZ)V

    .line 157
    :cond_1
    return-void
.end method


# virtual methods
.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 74
    sget v3, Lcom/biznessapps/layout/R$id;->search_icon_close:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, "searchCloseView":Landroid/widget/ImageView;
    sget v3, Lcom/biznessapps/layout/R$id;->search_edit_view:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 76
    .local v1, "searchEditText":Landroid/widget/EditText;
    sget v3, Lcom/biznessapps/layout/R$string;->search:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 77
    new-instance v3, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;-><init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Landroid/widget/EditText;)V

    invoke-static {v3}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 86
    new-instance v3, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$2;-><init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v3

    invoke-static {v3, v0, v1}, Lcom/biznessapps/utils/ViewUtils;->updateSearchBarWithColor(ILandroid/widget/ImageView;Landroid/widget/EditText;)V

    .line 99
    sget v3, Lcom/biznessapps/layout/R$id;->search_bar_container:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->map:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 104
    .local v2, "supportMapFragment":Lcom/google/android/gms/maps/SupportMapFragment;
    invoke-virtual {v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 106
    sget v3, Lcom/biznessapps/layout/R$id;->select_this_location_button:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->selectButton:Landroid/widget/Button;

    .line 107
    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->selectButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$3;

    invoke-direct {v4, p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$3;-><init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->selectButton:Landroid/widget/Button;

    invoke-virtual {v3, v4, v5}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 119
    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->selectButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->fo_select_this_location:I

    invoke-static {v4, v5}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 64
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_location_chooser:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->root:Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->initSettingsData()V

    .line 66
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 67
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/location/entities/LocationEntity;

    .line 125
    .local v0, "item":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->openDetail(Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 126
    return-void
.end method

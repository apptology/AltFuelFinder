.class public abstract Lcom/biznessapps/common/activities/CommonMapActivity;
.super Landroid/app/Activity;
.source "CommonMapActivity.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;
.implements Lcom/biznessapps/api/LoadingDataInterface;
.implements Lcom/biznessapps/api/BackgroundInterface;


# static fields
.field protected static final FIRST_LOAD_TAB_INDEX:I = 0x0

.field protected static final NO_TAB_DEFINED:J = -0x1L


# instance fields
.field protected bgUrl:Ljava/lang/String;

.field protected googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field protected imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field protected itemId:Ljava/lang/String;

.field protected mapFragment:Lcom/google/android/gms/maps/MapFragment;

.field protected markersHashMap:Ljava/util/Map;
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

.field private resources:Landroid/content/res/Resources;

.field protected screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

.field protected settings:Lcom/biznessapps/api/UiSettings;

.field protected tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->markersHashMap:Ljava/util/Map;

    return-void
.end method

.method private addMapPoint(Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 9
    .param p1, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 312
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

    .line 314
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/MapEntity;->getLatitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 315
    .local v1, "latitude":D
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/MapEntity;->getLongitude()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 316
    .local v3, "longitude":D
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 319
    .local v6, "myLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0, v6, p1}, Lcom/biznessapps/common/activities/CommonMapActivity;->getMarkerOptions(Lcom/google/android/gms/maps/model/LatLng;Lcom/biznessapps/common/entities/MapEntity;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    .line 320
    .local v5, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    iget-object v7, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 321
    .local v0, "currentMarker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v7, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->markersHashMap:Ljava/util/Map;

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->useMapInfoWindow()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 324
    iget-object v7, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 326
    iget-object v7, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/biznessapps/common/activities/CommonMapActivity$2;

    invoke-direct {v8, p0}, Lcom/biznessapps/common/activities/CommonMapActivity$2;-><init>(Lcom/biznessapps/common/activities/CommonMapActivity;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 335
    .end local v0    # "currentMarker":Lcom/google/android/gms/maps/model/Marker;
    .end local v1    # "latitude":D
    .end local v3    # "longitude":D
    .end local v5    # "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    .end local v6    # "myLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addPins(Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/biznessapps/common/activities/CommonMapActivity;->addMapPoint(Lcom/biznessapps/common/entities/MapEntity;)V

    .line 254
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->markersHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->markersHashMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getZoomLevel()I

    move-result v2

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->useConstantZoom()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/location/MapUtils;->defineZoom(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/Set;IZ)V

    .line 257
    :cond_0
    return-void
.end method

.method protected addPins(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/biznessapps/common/entities/MapEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/biznessapps/common/entities/MapEntity;>;"
    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 261
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/MapEntity;

    .line 263
    .local v1, "item":Lcom/biznessapps/common/entities/MapEntity;
    invoke-direct {p0, v1}, Lcom/biznessapps/common/activities/CommonMapActivity;->addMapPoint(Lcom/biznessapps/common/entities/MapEntity;)V

    goto :goto_0

    .line 265
    .end local v1    # "item":Lcom/biznessapps/common/entities/MapEntity;
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->markersHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v3, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->markersHashMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getZoomLevel()I

    move-result v4

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->useConstantZoom()Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/biznessapps/location/MapUtils;->defineZoom(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/Set;IZ)V

    .line 269
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public applyBackground()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getViewForBg()Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->bgUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 101
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->bgUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0, v2, v1, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 103
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    return-void
.end method

.method protected cacher()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method protected defineMapItemClickAction(Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 0
    .param p1, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 300
    return-void
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/biznessapps/common/entities/AnalyticEntity;

    invoke-direct {v0}, Lcom/biznessapps/common/entities/AnalyticEntity;-><init>()V

    .line 127
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    .line 128
    .local v1, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setContext(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getGaAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setAccountId(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setAppId(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setTabId(Ljava/lang/String;)V

    .line 132
    return-object v0
.end method

.method protected getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/biznessapps/common/activities/CommonMapActivity$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/activities/CommonMapActivity$1;-><init>(Lcom/biznessapps/common/activities/CommonMapActivity;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected getMapView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->mapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getMarkerOptions(Lcom/google/android/gms/maps/model/LatLng;Lcom/biznessapps/common/entities/MapEntity;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 5
    .param p1, "myLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 272
    sget v2, Lcom/biznessapps/layout/R$drawable;->contact_map_pin:I

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/biznessapps/location/MapUtils;->customizeMarkerBitmap(ILandroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    .local v0, "customizedBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 277
    .local v1, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    return-object v1
.end method

.method protected getNewImageManager()Lcom/biznessapps/images/NewImageManager;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getNewImageManager()Lcom/biznessapps/images/NewImageManager;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 137
    sget v1, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/activities/CommonMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    .local v0, "progressBarContainer":Landroid/view/ViewGroup;
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    .local v0, "oldResources":Landroid/content/res/Resources;
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/biznessapps/localization/CustomResources;->getInstance(Landroid/content/Context;Landroid/content/res/Resources;)Lcom/biznessapps/localization/CustomResources;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->resources:Landroid/content/res/Resources;

    .line 163
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->resources:Landroid/content/res/Resources;

    return-object v1
.end method

.method public getTabId()J
    .locals 6

    .prologue
    .line 167
    const-wide/16 v0, -0x1

    .line 168
    .local v0, "tabId":J
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_UNIQUE_ID"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 171
    :cond_0
    return-wide v0
.end method

.method public getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getZoomLevel()I
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0xf

    return v0
.end method

.method protected hasNavigationMenu()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method protected initAds()V
    .locals 2

    .prologue
    .line 201
    sget v1, Lcom/biznessapps/layout/R$id;->ads_layout_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/activities/CommonMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 202
    .local v0, "adsContainer":Landroid/view/ViewGroup;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 203
    return-void
.end method

.method protected initAdsWithAlpha()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 206
    sget v1, Lcom/biznessapps/layout/R$id;->ads_layout_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/activities/CommonMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 207
    .local v0, "adsContainer":Landroid/view/ViewGroup;
    invoke-static {p0, v0, v2, v2}, Lcom/biznessapps/utils/ViewUtils;->showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    .line 208
    return-void
.end method

.method protected initGoogleMap()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->mapFragment:Lcom/google/android/gms/maps/MapFragment;

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$id;->mapview_v2:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment;

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->mapFragment:Lcom/google/android/gms/maps/MapFragment;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->mapFragment:Lcom/google/android/gms/maps/MapFragment;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->mapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 222
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 226
    :cond_1
    return-void
.end method

.method protected initSettingsData()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->tabId:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->itemId:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AppCore;->getUiSettings(Ljava/lang/String;)Lcom/biznessapps/api/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    .line 114
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 197
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->initAds()V

    .line 198
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/activities/CommonMapActivity;->requestWindowFeature(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/activities/CommonMapActivity;->setContentView(I)V

    .line 79
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AppCore;->init(Landroid/content/Context;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->initSettingsData()V

    .line 83
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 84
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 86
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->initGoogleMap()V

    .line 88
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->tabId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/biznessapps/utils/ViewUtils;->showEmailCollectPropmtIfNeeded(Landroid/app/Activity;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->initAds()V

    .line 182
    sget v1, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/activities/CommonMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 183
    .local v0, "titleBarRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;Lcom/biznessapps/api/UiSettings;)V

    .line 185
    invoke-static {p0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 187
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    invoke-interface {v1}, Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;->onResumed()V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->initGoogleMap()V

    .line 192
    return-void
.end method

.method public setBgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "bgUrl"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->bgUrl:Ljava/lang/String;

    .line 94
    return-void
.end method

.method protected setMapVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->mapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity;->mapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_0
    return-void

    .line 231
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected useConstantZoom()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method protected useMapInfoWindow()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

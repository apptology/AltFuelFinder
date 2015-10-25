.class public Lcom/biznessapps/around_us/AroundUsActivity;
.super Lcom/biznessapps/common/activities/CommonMapActivity;
.source "AroundUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;,
        Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;
    }
.end annotation


# instance fields
.field private buttonContainer:Landroid/view/ViewGroup;

.field private colorKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greenButton:Landroid/widget/Button;

.field private greenButtonView:Landroid/view/View;

.field private isListMode:Z

.field private item:Lcom/biznessapps/around_us/AroundUsEntity;

.field private listTab:Landroid/widget/Button;

.field private listView:Landroid/widget/ListView;

.field private mapPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mapTab:Landroid/widget/Button;

.field private preloadedItem:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

.field private purpleButton:Landroid/widget/Button;

.field private purpleButtonView:Landroid/view/View;

.field private redButton:Landroid/widget/Button;

.field private redButtonView:Landroid/view/View;

.field private searchQuery:Ljava/lang/String;

.field private updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->preloadedItem:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-direct {v0}, Lcom/biznessapps/around_us/AroundUsEntity;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->isListMode:Z

    .line 528
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/around_us/AroundUsActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->markersHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/around_us/AroundUsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->loadData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/biznessapps/around_us/AroundUsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->initDataWithPoints()V

    return-void
.end method

.method static synthetic access$1200(Lcom/biznessapps/around_us/AroundUsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/biznessapps/around_us/AroundUsActivity;Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;
    .param p1, "x1"    # Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/biznessapps/around_us/AroundUsActivity;->openDetailScreen(Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/around_us/AroundUsEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/biznessapps/around_us/AroundUsActivity;Lcom/biznessapps/around_us/AroundUsEntity;)Lcom/biznessapps/around_us/AroundUsEntity;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;
    .param p1, "x1"    # Lcom/biznessapps/around_us/AroundUsEntity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    return-object p1
.end method

.method static synthetic access$300(Lcom/biznessapps/around_us/AroundUsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->greenButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/around_us/AroundUsActivity;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/Button;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/around_us/AroundUsActivity;->updateItems(Ljava/lang/String;Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/around_us/AroundUsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->redButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/around_us/AroundUsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$702(Lcom/biznessapps/around_us/AroundUsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->isListMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/biznessapps/around_us/AroundUsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->updateButtonsState()V

    return-void
.end method

.method static synthetic access$902(Lcom/biznessapps/around_us/AroundUsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    const/4 v0, 0x0

    .line 367
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    if-eqz p1, :cond_0

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .restart local v0    # "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 370
    move-object v0, p1

    .line 384
    :cond_0
    return-object v0

    .line 372
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .line 374
    .local v2, "item":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/around_us/AroundUsActivity;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initDataWithPoints()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getPoi()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/biznessapps/around_us/AroundUsActivity;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 295
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    invoke-direct {p0, v0}, Lcom/biznessapps/around_us/AroundUsActivity;->initPointsMap(Ljava/util/List;)V

    .line 297
    invoke-direct {p0, v0}, Lcom/biznessapps/around_us/AroundUsActivity;->initPoints(Ljava/util/List;)V

    .line 298
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/biznessapps/around_us/AroundUsActivity;->plugListView(Landroid/content/Context;Ljava/util/List;)V

    .line 299
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->setButtonsData()V

    .line 305
    :goto_1
    return-void

    .end local v0    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    :cond_0
    move-object v1, v2

    .line 294
    goto :goto_0

    .line 301
    .restart local v0    # "points":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    goto :goto_1
.end method

.method private initPoints(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 390
    .local v2, "pins":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 391
    .local v1, "myLocation":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 392
    new-instance v0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-direct {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;-><init>()V

    .line 393
    .local v0, "item":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setLatitude(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setLongitude(Ljava/lang/String;)V

    .line 395
    sget v3, Lcom/biznessapps/layout/R$string;->current_location:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setAddress1(Ljava/lang/String;)V

    .line 396
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setCurrentLocoation(Z)V

    .line 397
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setId(Ljava/lang/String;)V

    .line 398
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    .end local v0    # "item":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/around_us/AroundUsActivity;->addPins(Ljava/util/List;)V

    .line 401
    return-void
.end method

.method private initPointsMap(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    const/4 v2, 0x0

    .line 309
    .local v2, "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 310
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 311
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .line 312
    .local v1, "poi":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 317
    .restart local v2    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    :goto_1
    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v4}, Lcom/biznessapps/around_us/AroundUsEntity;->getRedColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v3}, Lcom/biznessapps/around_us/AroundUsEntity;->getRedTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setCategoryName(Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    goto :goto_1

    .line 319
    :cond_2
    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v4}, Lcom/biznessapps/around_us/AroundUsEntity;->getGreenColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v3}, Lcom/biznessapps/around_us/AroundUsEntity;->getGreenTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setCategoryName(Ljava/lang/String;)V

    goto :goto_2

    .line 321
    :cond_3
    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v4}, Lcom/biznessapps/around_us/AroundUsEntity;->getPurpleColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v3}, Lcom/biznessapps/around_us/AroundUsEntity;->getPurpleTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setCategoryName(Ljava/lang/String;)V

    goto :goto_2

    .line 328
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "poi":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    :cond_4
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    .line 187
    sget v3, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 188
    .local v2, "topButtonsContainer":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 189
    sget v3, Lcom/biznessapps/layout/R$id;->map_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapTab:Landroid/widget/Button;

    .line 190
    sget v3, Lcom/biznessapps/layout/R$id;->list_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listTab:Landroid/widget/Button;

    .line 191
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapTab:Landroid/widget/Button;

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 192
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listTab:Landroid/widget/Button;

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 194
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapTab:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->map:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 195
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listTab:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->list:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 197
    sget v3, Lcom/biznessapps/layout/R$id;->bottom_buttons_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->buttonContainer:Landroid/view/ViewGroup;

    .line 198
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->buttonContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->customizeFooterNavigationBar(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 199
    sget v3, Lcom/biznessapps/layout/R$id;->around_us_green_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->greenButton:Landroid/widget/Button;

    .line 200
    sget v3, Lcom/biznessapps/layout/R$id;->around_us_red_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->redButton:Landroid/widget/Button;

    .line 201
    sget v3, Lcom/biznessapps/layout/R$id;->around_us_purple_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    .line 202
    sget v3, Lcom/biznessapps/layout/R$id;->around_us_green_view:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->greenButtonView:Landroid/view/View;

    .line 203
    sget v3, Lcom/biznessapps/layout/R$id;->around_us_red_view:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->redButtonView:Landroid/view/View;

    .line 204
    sget v3, Lcom/biznessapps/layout/R$id;->around_us_purple_view:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->purpleButtonView:Landroid/view/View;

    .line 205
    sget v3, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listView:Landroid/widget/ListView;

    .line 206
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 207
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->greenButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/around_us/AroundUsActivity$2;

    invoke-direct {v4, p0}, Lcom/biznessapps/around_us/AroundUsActivity$2;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->redButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/around_us/AroundUsActivity$3;

    invoke-direct {v4, p0}, Lcom/biznessapps/around_us/AroundUsActivity$3;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/around_us/AroundUsActivity$4;

    invoke-direct {v4, p0}, Lcom/biznessapps/around_us/AroundUsActivity$4;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listTab:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/around_us/AroundUsActivity$5;

    invoke-direct {v4, p0}, Lcom/biznessapps/around_us/AroundUsActivity$5;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapTab:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/around_us/AroundUsActivity$6;

    invoke-direct {v4, p0}, Lcom/biznessapps/around_us/AroundUsActivity$6;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v0, Lcom/biznessapps/around_us/AroundUsActivity$7;

    invoke-direct {v0, p0}, Lcom/biznessapps/around_us/AroundUsActivity$7;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    .line 246
    .local v0, "dataLoadRunnable":Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
    new-instance v1, Lcom/biznessapps/common/components/SearchTopBar;

    sget v3, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, p0, v3, v0, v4}, Lcom/biznessapps/common/components/SearchTopBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;Lcom/biznessapps/api/UiSettings;)V

    .line 247
    .local v1, "searchBar":Lcom/biznessapps/common/components/SearchTopBar;
    invoke-virtual {v1}, Lcom/biznessapps/common/components/SearchTopBar;->getScreenListener()Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    .line 248
    return-void
.end method

.method private loadData()V
    .locals 9

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "TAB_SPECIAL_ID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "tabId":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    .line 262
    .local v0, "cacher":Lcom/biznessapps/api/CachingManager;
    const-string v5, "around_us.php?app_code=%s&tab_id=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "requestUrl":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v4, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Lcom/biznessapps/api/LoadDataTaskExternal;

    invoke-direct {v1, p0, v4}, Lcom/biznessapps/api/LoadDataTaskExternal;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 265
    .local v1, "loadDataTask":Lcom/biznessapps/api/LoadDataTaskExternal;
    invoke-virtual {v1, v2}, Lcom/biznessapps/api/LoadDataTaskExternal;->setRequestUrl(Ljava/lang/String;)V

    .line 266
    new-instance v5, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-direct {v5}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    invoke-virtual {v1, v5}, Lcom/biznessapps/api/LoadDataTaskExternal;->setCanUseCachingRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 267
    new-instance v5, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-direct {v5}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    invoke-virtual {v1, v5}, Lcom/biznessapps/api/LoadDataTaskExternal;->setHandleInBgRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 268
    new-instance v5, Lcom/biznessapps/around_us/AroundUsActivity$8;

    invoke-direct {v5, p0}, Lcom/biznessapps/around_us/AroundUsActivity$8;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    invoke-virtual {v1, v5}, Lcom/biznessapps/api/LoadDataTaskExternal;->setParseDataRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 274
    new-instance v5, Lcom/biznessapps/around_us/AroundUsActivity$9;

    invoke-direct {v5, p0}, Lcom/biznessapps/around_us/AroundUsActivity$9;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    iput-object v5, p0, Lcom/biznessapps/around_us/AroundUsActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 289
    iget-object v5, p0, Lcom/biznessapps/around_us/AroundUsActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v1, v5}, Lcom/biznessapps/api/LoadDataTaskExternal;->setUpdateControlsRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 290
    invoke-virtual {v1}, Lcom/biznessapps/api/LoadDataTaskExternal;->launch()V

    .line 291
    return-void
.end method

.method private openDetailScreen(Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .prologue
    .line 447
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AROUND_US_DETAIL_FRAGMENT"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AROUND_US_ITEM_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 450
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "AROUND_US_DETAIL_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0, v0}, Lcom/biznessapps/around_us/AroundUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 455
    return-void
.end method

.method private plugListView(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 422
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 423
    .local v3, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .line 424
    .local v2, "item":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/around_us/AroundUsActivity;->itemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->preloadedItem:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    if-nez v4, :cond_0

    .line 425
    iput-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity;->preloadedItem:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .line 427
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    .end local v2    # "item":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    :cond_1
    new-instance v0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, p0, p1, v3, v4}, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 430
    .local v0, "ex":Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listView:Landroid/widget/ListView;

    new-instance v5, Lcom/biznessapps/around_us/AroundUsActivity$10;

    invoke-direct {v5, p0}, Lcom/biznessapps/around_us/AroundUsActivity$10;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 438
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->preloadedItem:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->preloadedItem:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v4}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->isUseAgain()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->preloadedItem:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-direct {p0, v4}, Lcom/biznessapps/around_us/AroundUsActivity;->openDetailScreen(Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;)V

    .line 441
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->preloadedItem:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setUseAgain(Z)V

    .line 444
    .end local v0    # "ex":Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    :cond_2
    return-void
.end method

.method private setButtonsData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 404
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->buttonContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->greenButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getGreenTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 406
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->greenButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getGreenColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 407
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->greenButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getGreenTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->redButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getRedTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 409
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->redButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getRedColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 410
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->redButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getRedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getPurpleTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 412
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->purpleButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getPurpleColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 413
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getPurpleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity;->getRedColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->redButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->updateButtonState(Ljava/lang/String;Landroid/widget/Button;Ljava/util/Set;Z)V

    .line 416
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity;->getGreenColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->greenButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->updateButtonState(Ljava/lang/String;Landroid/widget/Button;Ljava/util/Set;Z)V

    .line 417
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity;->getPurpleColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->updateButtonState(Ljava/lang/String;Landroid/widget/Button;Ljava/util/Set;Z)V

    .line 418
    return-void
.end method

.method private updateButtonState(Ljava/lang/String;Landroid/widget/Button;Ljava/util/Set;Z)V
    .locals 1
    .param p1, "itemsColor"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/widget/Button;
    .param p4, "canDisableClicking"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/Button;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p3, "map":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 360
    if-eqz p4, :cond_0

    .line 361
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 363
    :cond_0
    return-void
.end method

.method private updateButtonsState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    iget-boolean v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->isListMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/biznessapps/around_us/AroundUsActivity;->setMapVisibility(Z)V

    .line 252
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapTab:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/biznessapps/around_us/AroundUsActivity;->isListMode:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 253
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->isListMode:Z

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listTab:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/biznessapps/around_us/AroundUsActivity;->isListMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 255
    return-void

    :cond_0
    move v0, v2

    .line 251
    goto :goto_0

    :cond_1
    move v1, v2

    .line 252
    goto :goto_1

    .line 253
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateItems(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 6
    .param p1, "itemsColor"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    .line 332
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->colorKeys:Ljava/util/Set;

    if-nez v4, :cond_0

    .line 333
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->colorKeys:Ljava/util/Set;

    .line 335
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->colorKeys:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 336
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->colorKeys:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 340
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v2, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->colorKeys:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 343
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 338
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    :cond_2
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->colorKeys:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    :cond_3
    invoke-direct {p0, v2}, Lcom/biznessapps/around_us/AroundUsActivity;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 347
    .local v3, "points":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 348
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->colorKeys:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/biznessapps/around_us/AroundUsActivity;->updateButtonState(Ljava/lang/String;Landroid/widget/Button;Ljava/util/Set;Z)V

    .line 349
    invoke-direct {p0, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->initPoints(Ljava/util/List;)V

    .line 350
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/biznessapps/around_us/AroundUsActivity;->plugListView(Landroid/content/Context;Ljava/util/List;)V

    .line 356
    :goto_2
    return-void

    .line 352
    :cond_4
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/around_us/AroundUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 354
    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsActivity;->listView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method


# virtual methods
.method protected defineMapItemClickAction(Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 181
    instance-of v0, p1, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->isCurrentLocoation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    check-cast p1, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .end local p1    # "item":Lcom/biznessapps/common/entities/MapEntity;
    invoke-direct {p0, p1}, Lcom/biznessapps/around_us/AroundUsActivity;->openDetailScreen(Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;)V

    .line 184
    :cond_0
    return-void
.end method

.method protected getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/biznessapps/around_us/AroundUsActivity$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/around_us/AroundUsActivity$1;-><init>(Lcom/biznessapps/around_us/AroundUsActivity;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/biznessapps/layout/R$layout;->around_us_layout:I

    return v0
.end method

.method protected getMarkerOptions(Lcom/google/android/gms/maps/model/LatLng;Lcom/biznessapps/common/entities/MapEntity;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 8
    .param p1, "myLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "customizedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->isCurrentLocoation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$drawable;->my_location_bubble:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$dimen;->map_pin_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 116
    .local v3, "flagWidth":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 117
    .local v2, "flagHeight":F
    float-to-int v5, v3

    float-to-int v6, v2

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "flagHeight":F
    .end local v3    # "flagWidth":F
    :goto_0
    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v5, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 125
    .local v4, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    return-object v4

    .line 119
    .end local v4    # "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_0
    sget v5, Lcom/biznessapps/layout/R$drawable;->contact_map_pin:I

    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->getColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/biznessapps/location/MapUtils;->customizeMarkerBitmap(ILandroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    .line 96
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->initViews()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->onResume()V

    .line 102
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsActivity;->loadData()V

    .line 103
    return-void
.end method

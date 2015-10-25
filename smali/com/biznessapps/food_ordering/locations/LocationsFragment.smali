.class public Lcom/biznessapps/food_ordering/locations/LocationsFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "LocationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/location/entities/LocationEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mapButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private openDetail(Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_LOCATION_DETAIL"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_LOCATION_DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "LOCATION_ID"

    invoke-virtual {p1}, Lcom/biznessapps/location/entities/LocationEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->setChosenLocation(Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 121
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->items:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v0, Lcom/biznessapps/food_ordering/locations/LocationAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->items:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/food_ordering/locations/LocationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 107
    .local v0, "ex":Lcom/biznessapps/food_ordering/locations/LocationAdapter;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->initListViewListener()V

    .line 112
    .end local v0    # "ex":Lcom/biznessapps/food_ordering/locations/LocationAdapter;
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_locations:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    const-string v0, "food_ordering_locations.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->tabId:Ljava/lang/String;

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
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->mapButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-object v0
.end method

.method protected initSettingsData()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->initSettingsData()V

    .line 46
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->bgUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 59
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/FOUtils;->addLineSeparator(Landroid/widget/ListView;Landroid/content/Context;)V

    .line 60
    sget v0, Lcom/biznessapps/layout/R$id;->map_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->mapButton:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->mapButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/food_ordering/locations/LocationsFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment$1;-><init>(Lcom/biznessapps/food_ordering/locations/LocationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 34
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->loadBgUrl()V

    .line 35
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/location/entities/LocationEntity;

    .line 83
    .local v0, "item":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->openDetail(Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->fo_no_available_service:I

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->parseLocations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->items:Ljava/util/List;

    .line 93
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->setLocations(Ljava/util/List;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/locations/LocationsFragment;->plugListView(Landroid/app/Activity;)V

    .line 101
    return-void
.end method

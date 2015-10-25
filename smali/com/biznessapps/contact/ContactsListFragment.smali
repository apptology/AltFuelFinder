.class public Lcom/biznessapps/contact/ContactsListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "ContactsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/location/entities/LocationEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v2, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    iget-object v5, p0, Lcom/biznessapps/contact/ContactsListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    move-object v2, p1

    .line 115
    :cond_0
    return-object v2

    .line 97
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/location/entities/LocationEntity;

    .line 99
    .local v4, "item":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v4}, Lcom/biznessapps/location/entities/LocationEntity;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "city":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/biznessapps/location/entities/LocationEntity;->getAddress1()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "address":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/contact/ContactsListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_3
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/contact/ContactsListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 9
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 71
    iget-object v7, p0, Lcom/biznessapps/contact/ContactsListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/biznessapps/contact/ContactsListFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "filteredLocations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    invoke-static {v1}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v2

    .line 73
    .local v2, "hasNoData":Z
    if-eqz v2, :cond_0

    .line 74
    iget-object v7, p0, Lcom/biznessapps/contact/ContactsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/contact/ContactsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v6, 0x0

    .line 78
    .local v6, "preLoadedItem":Lcom/biznessapps/location/entities/LocationEntity;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 79
    .local v5, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/location/entities/LocationEntity;

    .line 80
    .local v4, "item":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v4}, Lcom/biznessapps/location/entities/LocationEntity;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/contact/ContactsListFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    move-object v6, v4

    .line 83
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/biznessapps/contact/ContactsListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    .end local v4    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_2
    new-instance v0, Lcom/biznessapps/contact/ContactListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/contact/ContactsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v7, v5, v8}, Lcom/biznessapps/contact/ContactListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 86
    .local v0, "adapter":Lcom/biznessapps/contact/ContactListAdapter;
    iget-object v7, p0, Lcom/biznessapps/contact/ContactsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v7, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsListFragment;->initListViewListener()V

    .line 88
    invoke-direct {p0, p1, v6}, Lcom/biznessapps/contact/ContactsListFragment;->startContactActivity(Landroid/app/Activity;Lcom/biznessapps/location/entities/LocationEntity;)V

    goto :goto_0
.end method

.method private startContactActivity(Landroid/app/Activity;Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .param p2, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 119
    if-eqz p2, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CONTACTS_FRAGMENT"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "LOCATION_ID"

    invoke-virtual {p2}, Lcom/biznessapps/location/entities/LocationEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "CONTACTS_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "TAB_UNIQUE_ID"

    check-cast p1, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    .end local p1    # "holdActivity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 125
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/biznessapps/contact/ContactsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCATION_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/contact/ContactsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/contact/ContactsListFragment;->items:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/biznessapps/layout/R$layout;->search_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    const-string v0, "location_list.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/contact/ContactsListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/location/entities/LocationEntity;

    .line 67
    .local v0, "item":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/biznessapps/contact/ContactsListFragment;->startContactActivity(Landroid/app/Activity;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 68
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/contact/ContactsListFragment;->items:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCATION_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/contact/ContactsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/contact/ContactsListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/biznessapps/contact/ContactsListFragment;->plugListView(Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

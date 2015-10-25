.class public Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "MenuSectionItemsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/menu_items/MenuSectionEntities;",
        ">;"
    }
.end annotation


# instance fields
.field private menuItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
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
            "Lcom/biznessapps/menu_items/MenuSectionEntities;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/menu_items/MenuSectionEntities;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/menu_items/MenuSectionEntities;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/menu_items/MenuSectionEntities;>;"
    iget-object v5, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    move-object v0, p1

    .line 136
    :cond_0
    return-object v0

    .line 119
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/menu_items/MenuSectionEntities;

    .line 120
    .local v2, "item":Lcom/biznessapps/menu_items/MenuSectionEntities;
    invoke-virtual {v2}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getPrice()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "price":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_3
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private openMenuItems(Lcom/biznessapps/menu_items/MenuSectionEntities;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/menu_items/MenuSectionEntities;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "menuviewcontroller"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MENU_ITEM_DETAIL_ID"

    invoke-virtual {p1}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "SECTION_ID"

    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->menuItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "menuviewcontroller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "TAB_LABEL"

    invoke-virtual {p1}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    iget-object v7, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/menu_items/MenuSectionEntities;>;"
    invoke-static {v1}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v2

    .line 93
    .local v2, "hasNoData":Z
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    .line 112
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v5, 0x0

    .line 97
    .local v5, "preLoadedItem":Lcom/biznessapps/menu_items/MenuSectionEntities;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 98
    .local v6, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/menu_items/MenuSectionEntities;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/menu_items/MenuSectionEntities;

    .line 99
    .local v4, "item":Lcom/biznessapps/menu_items/MenuSectionEntities;
    invoke-virtual {v4}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    move-object v5, v4

    .line 102
    :cond_1
    invoke-virtual {p0, v4, v6}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v4    # "item":Lcom/biznessapps/menu_items/MenuSectionEntities;
    :cond_2
    new-instance v0, Lcom/biznessapps/menu_items/MenuSectionItemAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$layout;->menu_row:I

    iget-object v9, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/biznessapps/menu_items/MenuSectionItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 108
    .local v0, "ex":Lcom/biznessapps/menu_items/MenuSectionItemAdapter;
    iget-object v7, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v7, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->initListViewListener()V

    .line 110
    invoke-direct {p0, v5}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->openMenuItems(Lcom/biznessapps/menu_items/MenuSectionEntities;)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MENU_SECTIONS_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->menuItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->items:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "bgUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "BG_URL_EXTRA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 56
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MENU_ITEM_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setCatId(Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/biznessapps/layout/R$layout;->search_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    const-string v0, "menu_items.php?id=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->menuItemId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->tabId:Ljava/lang/String;

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
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/menu_items/MenuSectionEntities;

    .line 87
    .local v0, "item":Lcom/biznessapps/menu_items/MenuSectionEntities;
    invoke-direct {p0, v0}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->openMenuItems(Lcom/biznessapps/menu_items/MenuSectionEntities;)V

    .line 88
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MENU_ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->menuItemId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseMenuItemsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->items:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MENU_SECTIONS_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->menuItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/biznessapps/menu_items/MenuSectionItemsListFragment;->plugListView(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

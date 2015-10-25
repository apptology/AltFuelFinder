.class public Lcom/biznessapps/info_items/InfoItemsFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.source "InfoItemsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragmentNew",
        "<",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;-><init>()V

    return-void
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    move-object v0, p1

    .line 133
    :cond_0
    return-object v0

    .line 123
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

    check-cast v2, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 124
    .local v2, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v2}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private openInfoDetail(Lcom/biznessapps/common/activities/CommonFragmentActivity;Lcom/biznessapps/common/entities/CommonListEntity;)V
    .locals 4
    .param p1, "activity"    # Lcom/biznessapps/common/activities/CommonFragmentActivity;
    .param p2, "item"    # Lcom/biznessapps/common/entities/CommonListEntity;

    .prologue
    .line 137
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "infodetailviewcontroller"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ITEM_ID"

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "HEADER_IMAGE"

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getHeaderImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "HAS_NEW_DESIGN"

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->hasNewDesign()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const-string v1, "SECTION_ID"

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 145
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "TAB_LABEL"

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "CHILDREN_TAB_LABEL"

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "CHILDREN_TAB_LABEL_PRESENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "infodetailviewcontroller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p1, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 14
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 79
    iget-object v10, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->items:Ljava/util/List;

    invoke-direct {p0, v10}, Lcom/biznessapps/info_items/InfoItemsFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    invoke-static {v0}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v1

    .line 81
    .local v1, "hasNoData":Z
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/biznessapps/info_items/InfoItemsFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    .line 116
    .end local p1    # "holdActivity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 84
    .restart local p1    # "holdActivity":Landroid/app/Activity;
    :cond_0
    const/4 v5, 0x0

    .line 85
    .local v5, "preLoadedItem":Lcom/biznessapps/common/entities/CommonListEntity;
    new-instance v10, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/biznessapps/layout/R$layout;->section_header:I

    iget-object v13, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v10, v11, v12, v13}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;ILcom/biznessapps/api/UiSettings;)V

    iput-object v10, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 88
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 89
    .local v9, "sectionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 90
    .local v3, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 91
    move-object v5, v3

    .line 93
    :cond_1
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getSection()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "section":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 95
    const-string v6, ""

    .line 97
    :cond_2
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 98
    .local v4, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    if-nez v4, :cond_3

    .line 99
    new-instance v4, Ljava/util/LinkedList;

    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 101
    .restart local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/info_items/InfoItemsFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 104
    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    .end local v6    # "section":Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 105
    .local v8, "sections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 106
    .restart local v6    # "section":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 107
    .restart local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 108
    new-instance v7, Lcom/biznessapps/common/adapters/SimpleListType1Adapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v7, v10, v4, v11}, Lcom/biznessapps/common/adapters/SimpleListType1Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 109
    .local v7, "sectionAdapter":Lcom/biznessapps/common/adapters/SimpleListType1Adapter;
    iget-object v10, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    check-cast v10, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {v10, v6, v7}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_2

    .line 112
    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    .end local v6    # "section":Ljava/lang/String;
    .end local v7    # "sectionAdapter":Lcom/biznessapps/common/adapters/SimpleListType1Adapter;
    :cond_6
    iget-object v10, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v11, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v10, v11}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoItemsFragment;->initListViewListener()V

    .line 114
    check-cast p1, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    .end local p1    # "holdActivity":Landroid/app/Activity;
    invoke-direct {p0, p1, v5}, Lcom/biznessapps/info_items/InfoItemsFragment;->openInfoDetail(Lcom/biznessapps/common/activities/CommonFragmentActivity;Lcom/biznessapps/common/entities/CommonListEntity;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoItemsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->items:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 55
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoItemsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SECTION_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setCatId(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/biznessapps/layout/R$layout;->search_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    const-string v0, "info_items.php?app_code=%s&id=%s&tab_id=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoItemsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->sectionId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->tabId:Ljava/lang/String;

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
    .line 74
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 75
    .local v0, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoItemsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/biznessapps/info_items/InfoItemsFragment;->openInfoDetail(Lcom/biznessapps/common/activities/CommonFragmentActivity;Lcom/biznessapps/common/entities/CommonListEntity;)V

    .line 76
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->items:Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoItemsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoItemsFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->updateControlsWithData(Landroid/app/Activity;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/biznessapps/info_items/InfoItemsFragment;->plugListView(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/biznessapps/info_items/InfoSectionsFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "InfoSectionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

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
    .line 110
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    move-object v0, p1

    .line 124
    :cond_0
    return-object v0

    .line 114
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

    .line 115
    .local v2, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v2}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private openInfoItems(Lcom/biznessapps/common/entities/CommonListEntity;Z)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/common/entities/CommonListEntity;
    .param p2, "isPreloadedItem"    # Z

    .prologue
    .line 128
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/biznessapps/common/entities/CommonListEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoSectionsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "infoitemsviewcontroller"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SECTION_ID"

    invoke-virtual {p1}, Lcom/biznessapps/common/entities/CommonListEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    if-eqz p2, :cond_0

    .line 133
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :cond_0
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoSectionsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 136
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoSectionsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "infoitemsviewcontroller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "TAB_LABEL"

    invoke-virtual {p1}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/biznessapps/info_items/InfoSectionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 141
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 14
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 70
    iget-object v10, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->items:Ljava/util/List;

    invoke-direct {p0, v10}, Lcom/biznessapps/info_items/InfoSectionsFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    invoke-static {v0}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v1

    .line 73
    .local v1, "hasNoData":Z
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/biznessapps/info_items/InfoSectionsFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    .line 107
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v5, 0x0

    .line 77
    .local v5, "preLoadedItem":Lcom/biznessapps/common/entities/CommonListEntity;
    new-instance v10, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/biznessapps/layout/R$layout;->section_header:I

    iget-object v13, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v10, v11, v12, v13}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;ILcom/biznessapps/api/UiSettings;)V

    iput-object v10, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 79
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 80
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

    .line 81
    .local v3, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 82
    move-object v5, v3

    .line 84
    :cond_1
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getSection()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "section":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 86
    const-string v6, ""

    .line 88
    :cond_2
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 89
    .local v4, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    if-nez v4, :cond_3

    .line 90
    new-instance v4, Ljava/util/LinkedList;

    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 92
    .restart local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/info_items/InfoSectionsFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    .end local v6    # "section":Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 96
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

    .line 97
    .restart local v6    # "section":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 98
    .restart local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 99
    new-instance v7, Lcom/biznessapps/common/adapters/SimpleListType1Adapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v7, v10, v4, v11}, Lcom/biznessapps/common/adapters/SimpleListType1Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 100
    .local v7, "sectionAdapter":Lcom/biznessapps/common/adapters/SimpleListType1Adapter;
    iget-object v10, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    check-cast v10, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {v10, v6, v7}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_2

    .line 103
    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    .end local v6    # "section":Ljava/lang/String;
    .end local v7    # "sectionAdapter":Lcom/biznessapps/common/adapters/SimpleListType1Adapter;
    :cond_6
    iget-object v10, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v11, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v10, v11}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoSectionsFragment;->initListViewListener()V

    .line 105
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/biznessapps/info_items/InfoSectionsFragment;->openInfoItems(Lcom/biznessapps/common/entities/CommonListEntity;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoSectionsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_SECTIONS_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->items:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->items:Ljava/util/List;

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
    .line 36
    sget v0, Lcom/biznessapps/layout/R$layout;->search_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    const-string v0, "info_sections.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoSectionsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->tabId:Ljava/lang/String;

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
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 66
    .local v0, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/info_items/InfoSectionsFragment;->openInfoItems(Lcom/biznessapps/common/entities/CommonListEntity;Z)V

    .line 67
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->items:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoSectionsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_SECTIONS_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoSectionsFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/info_items/InfoSectionsFragment;->plugListView(Landroid/app/Activity;)V

    .line 55
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

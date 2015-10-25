.class public Lcom/biznessapps/rss/RssListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "RssListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/rss/RssEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 16
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/rss/RssListFragment;->items:Ljava/util/List;

    invoke-static {v12}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v2

    .line 71
    .local v2, "hasNoData":Z
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual/range {p0 .. p1}, Lcom/biznessapps/rss/RssListFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    .line 111
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v12, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/biznessapps/layout/R$layout;->section_header:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/rss/RssListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v12, v13, v14, v15}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;ILcom/biznessapps/api/UiSettings;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/biznessapps/rss/RssListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 76
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 77
    .local v11, "sectionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/rss/RssListFragment;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/rss/RssEntity;

    .line 78
    .local v5, "item":Lcom/biznessapps/rss/RssEntity;
    invoke-virtual {v5}, Lcom/biznessapps/rss/RssEntity;->getSection()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "section":Ljava/lang/String;
    invoke-static {v8}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 80
    const-string v8, ""

    .line 82
    :cond_1
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 83
    .local v6, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    if-nez v6, :cond_2

    .line 84
    new-instance v6, Ljava/util/LinkedList;

    .end local v6    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 86
    .restart local v6    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/biznessapps/rss/RssListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v11, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    .end local v5    # "item":Lcom/biznessapps/rss/RssEntity;
    .end local v6    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    .end local v8    # "section":Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 90
    .local v10, "sections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 91
    .local v7, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 92
    .restart local v8    # "section":Ljava/lang/String;
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 93
    .restart local v6    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 95
    new-instance v9, Lcom/biznessapps/rss/RssAdapter;

    sget v12, Lcom/biznessapps/layout/R$layout;->rss_row:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/rss/RssListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v6, v12, v13}, Lcom/biznessapps/rss/RssAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 96
    .local v9, "sectionAdapter":Lcom/biznessapps/rss/RssAdapter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/rss/RssListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    check-cast v12, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {v12, v8, v9}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 98
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 99
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/rss/RssEntity;

    .line 100
    .restart local v5    # "item":Lcom/biznessapps/rss/RssEntity;
    if-nez v3, :cond_5

    .line 101
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lcom/biznessapps/rss/RssEntity;->setShowSection(Z)V

    .line 103
    :cond_5
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 107
    .end local v3    # "i":I
    .end local v5    # "item":Lcom/biznessapps/rss/RssEntity;
    .end local v6    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    .end local v8    # "section":Ljava/lang/String;
    .end local v9    # "sectionAdapter":Lcom/biznessapps/rss/RssAdapter;
    :cond_6
    new-instance v1, Lcom/biznessapps/rss/RssAdapter;

    sget v12, Lcom/biznessapps/layout/R$layout;->rss_row:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/rss/RssListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v7, v12, v13}, Lcom/biznessapps/rss/RssAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 108
    .local v1, "adapter":Lcom/biznessapps/rss/RssAdapter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/rss/RssListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v12, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/rss/RssListFragment;->initListViewListener()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/biznessapps/rss/RssListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSS_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/rss/RssListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/rss/RssListFragment;->items:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/biznessapps/rss/RssListFragment;->items:Ljava/util/List;

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
    .line 51
    sget v0, Lcom/biznessapps/layout/R$layout;->rss_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    const-string v0, "rss.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/rss/RssListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/rss/RssListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 56
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/rss/RssEntity;

    .line 57
    .local v1, "item":Lcom/biznessapps/rss/RssEntity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/biznessapps/rss/RssEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/rss/RssListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v2, "URL"

    invoke-virtual {v1}, Lcom/biznessapps/rss/RssEntity;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v2, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/rss/RssListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 63
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/rss/RssListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v2, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/rss/RssListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Lcom/biznessapps/rss/RssListFragment;->startActivity(Landroid/content/Intent;)V

    .line 67
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseRssList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/rss/RssListFragment;->items:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Lcom/biznessapps/rss/RssListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSS_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/rss/RssListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/rss/RssListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/biznessapps/rss/RssListFragment;->plugListView(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

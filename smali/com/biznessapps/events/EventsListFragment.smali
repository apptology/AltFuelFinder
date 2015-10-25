.class public Lcom/biznessapps/events/EventsListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "EventsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/events/EventEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/biznessapps/events/EventsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/events/EventsListFragment;->items:Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/biznessapps/events/EventsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/events/EventEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/events/EventEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "comingItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/events/EventEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/events/EventEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/events/EventsListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    iget-object v0, p0, Lcom/biznessapps/events/EventsListFragment;->items:Ljava/util/List;

    .line 137
    :cond_0
    return-object v0

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/events/EventsListFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/events/EventEntity;

    .line 128
    .local v2, "item":Lcom/biznessapps/events/EventEntity;
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/biznessapps/layout/R$layout;->search_list_layout:I

    return v0
.end method

.method protected getListItemLayoutId()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/biznessapps/layout/R$layout;->list_event_v2_item:I

    return v0
.end method

.method protected getNameOfEventDetailFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "EVENTS_DETAIL_FRAGMENT"

    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    const-string v0, "events.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/events/EventsListFragment;->tabId:Ljava/lang/String;

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
    .line 63
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/events/EventEntity;

    .line 64
    .local v0, "item":Lcom/biznessapps/events/EventEntity;
    invoke-virtual {p0}, Lcom/biznessapps/events/EventsListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/biznessapps/events/EventsListFragment;->openEventItem(Landroid/app/Activity;Lcom/biznessapps/events/EventEntity;)V

    .line 65
    return-void
.end method

.method protected openEventItem(Landroid/app/Activity;Lcom/biznessapps/events/EventEntity;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .param p2, "item"    # Lcom/biznessapps/events/EventEntity;

    .prologue
    .line 109
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/biznessapps/events/EventEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsListFragment;->getNameOfEventDetailFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    const-string v2, "TAB_UNIQUE_ID"

    move-object v1, p1

    check-cast v1, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "TAB_FRAGMENT"

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsListFragment;->getNameOfEventDetailFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "TAB_LABEL"

    invoke-virtual {p2}, Lcom/biznessapps/events/EventEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/events/EventsListFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected plugListView(Landroid/app/Activity;)V
    .locals 9
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 85
    iget-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->items:Ljava/util/List;

    iget-object v6, p0, Lcom/biznessapps/events/EventsListFragment;->itemId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/events/EventsListFragment;->findPreloadedItem(Ljava/util/List;Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->items:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/biznessapps/events/EventsListFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/events/EventEntity;>;"
    iget-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->items:Ljava/util/List;

    invoke-static {v5}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v1

    .line 89
    .local v1, "hasNoData":Z
    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventsListFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/events/EventEntity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/events/EventEntity;

    .line 94
    .local v3, "item":Lcom/biznessapps/events/EventEntity;
    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/events/EventsListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    .end local v3    # "item":Lcom/biznessapps/events/EventEntity;
    :cond_2
    new-instance v5, Lcom/biznessapps/events/EventAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsListFragment;->getListItemLayoutId()I

    move-result v7

    iget-object v8, p0, Lcom/biznessapps/events/EventsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/biznessapps/events/EventAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    iput-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 98
    iget-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v6, p0, Lcom/biznessapps/events/EventsListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v5, v6}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {p0}, Lcom/biznessapps/events/EventsListFragment;->initListViewListener()V

    .line 100
    iget-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    check-cast v5, Lcom/biznessapps/events/EventEntity;

    invoke-virtual {v5}, Lcom/biznessapps/events/EventEntity;->isUseAgain()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    check-cast v5, Lcom/biznessapps/events/EventEntity;

    invoke-virtual {p0, p1, v5}, Lcom/biznessapps/events/EventsListFragment;->openEventItem(Landroid/app/Activity;Lcom/biznessapps/events/EventEntity;)V

    .line 103
    iget-object v5, p0, Lcom/biznessapps/events/EventsListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    check-cast v5, Lcom/biznessapps/events/EventEntity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/biznessapps/events/EventEntity;->setUseAgain(Z)V

    goto :goto_0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/events/EventsListFragment;->items:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Lcom/biznessapps/events/EventsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventsListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventsListFragment;->plugListView(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

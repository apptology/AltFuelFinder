.class public Lcom/biznessapps/call_us/CallUsFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "CallUsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/call_us/CallUsFragment$1;,
        Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/call_us/CallUsEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 109
    return-void
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/call_us/CallUsEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/call_us/CallUsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/call_us/CallUsEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/call_us/CallUsEntity;>;"
    iget-object v5, p0, Lcom/biznessapps/call_us/CallUsFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    move-object v0, p1

    .line 106
    :cond_0
    return-object v0

    .line 88
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

    check-cast v2, Lcom/biznessapps/call_us/CallUsEntity;

    .line 90
    .local v2, "item":Lcom/biznessapps/call_us/CallUsEntity;
    invoke-virtual {v2}, Lcom/biznessapps/call_us/CallUsEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/biznessapps/call_us/CallUsEntity;->getPhone()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "phone":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/call_us/CallUsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_3
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/call_us/CallUsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 66
    iget-object v6, p0, Lcom/biznessapps/call_us/CallUsFragment;->items:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/biznessapps/call_us/CallUsFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/call_us/CallUsEntity;>;"
    invoke-static {v1}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v2

    .line 68
    .local v2, "hasNoData":Z
    if-eqz v2, :cond_0

    .line 69
    iget-object v6, p0, Lcom/biznessapps/call_us/CallUsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/call_us/CallUsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 73
    .local v5, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/call_us/CallUsEntity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/call_us/CallUsEntity;

    .line 74
    .local v4, "item":Lcom/biznessapps/call_us/CallUsEntity;
    invoke-virtual {p0, v4, v5}, Lcom/biznessapps/call_us/CallUsFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v4    # "item":Lcom/biznessapps/call_us/CallUsEntity;
    :cond_1
    new-instance v0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/call_us/CallUsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v6, v5, v7}, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 77
    .local v0, "adapter":Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;
    iget-object v6, p0, Lcom/biznessapps/call_us/CallUsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v6, p0, Lcom/biznessapps/call_us/CallUsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget v7, p0, Lcom/biznessapps/call_us/CallUsFragment;->currentItemIndex:I

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/RefreshableListView;->setSelection(I)V

    .line 79
    invoke-virtual {p0}, Lcom/biznessapps/call_us/CallUsFragment;->initListViewListener()V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/biznessapps/call_us/CallUsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL_US_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/call_us/CallUsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/call_us/CallUsFragment;->items:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/biznessapps/call_us/CallUsFragment;->items:Ljava/util/List;

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
    .line 38
    sget v0, Lcom/biznessapps/layout/R$layout;->search_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    const-string v0, "callus_list.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/call_us/CallUsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/call_us/CallUsFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    .line 61
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/call_us/CallUsEntity;

    .line 62
    .local v0, "item":Lcom/biznessapps/call_us/CallUsEntity;
    invoke-virtual {p0}, Lcom/biznessapps/call_us/CallUsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/biznessapps/call_us/CallUsEntity;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->call(Landroid/app/Activity;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseCallUsItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/call_us/CallUsFragment;->items:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Lcom/biznessapps/call_us/CallUsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL_US_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/call_us/CallUsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/call_us/CallUsFragment;->items:Ljava/util/List;

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
    invoke-direct {p0, p1}, Lcom/biznessapps/call_us/CallUsFragment;->plugListView(Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

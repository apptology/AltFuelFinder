.class public Lcom/biznessapps/loyalty/LoyaltyListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.source "LoyaltyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragmentNew",
        "<",
        "Lcom/biznessapps/loyalty/LoyaltyCommonEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private updateNextTime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->updateNextTime:Z

    return-void
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyCommonEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyCommonEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyCommonEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyCommonEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    move-object v0, p1

    .line 145
    :cond_0
    return-object v0

    .line 135
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

    check-cast v2, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;

    .line 136
    .local v2, "item":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private openLoayltyItem(Lcom/biznessapps/loyalty/LoyaltyCommonEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/loyalty/LoyaltyCommonEntity;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->searchTopBar:Lcom/biznessapps/common/components/SearchTopBar;

    invoke-virtual {v1}, Lcom/biznessapps/common/components/SearchTopBar;->closeKeyboard()V

    .line 151
    if-eqz p1, :cond_0

    .line 154
    instance-of v1, p1, Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    if-eqz v1, :cond_1

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "LOYALTY_V1_DETAIL_FRAGMENT"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "LOYALTY_V1_DETAIL_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :goto_0
    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 168
    const-string v1, "TAB_LABEL"

    invoke-virtual {p1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 159
    :cond_1
    instance-of v1, p1, Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "LOYALTY_V2_DETAIL_FRAGMENT"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "LOYALTY_V2_DETAIL_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;Ljava/util/List;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyCommonEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyCommonEntity;>;"
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {p2}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v0

    .line 103
    .local v0, "hasNoData":Z
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    goto :goto_0

    .line 106
    :cond_2
    const/4 v3, 0x0

    .line 107
    .local v3, "preLoadedItem":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 108
    .local v4, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyCommonEntity;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;

    .line 109
    .local v2, "item":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    move-object v3, v2

    .line 112
    :cond_3
    invoke-virtual {p0, v2, v4}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    .end local v2    # "item":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    :cond_4
    new-instance v5, Lcom/biznessapps/loyalty/LoyaltyAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v5, v6, p2, v7}, Lcom/biznessapps/loyalty/LoyaltyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 115
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v6, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v5, v6}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->initListViewListener()V

    .line 119
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 120
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "preLoadedItem":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    check-cast v3, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;

    .line 123
    .restart local v3    # "preLoadedItem":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    :cond_5
    if-eqz v3, :cond_0

    .line 124
    invoke-direct {p0, v3}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->openLoayltyItem(Lcom/biznessapps/loyalty/LoyaltyCommonEntity;)V

    .line 125
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->bgUrl:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/biznessapps/layout/R$layout;->search_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 56
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AppSettings;->getV6DeviceUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "oldDeviceUserId":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 59
    :cond_0
    const-string v2, "loyalties.php?app_code=%s&tab_id=%s&alter_device_user_id=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->tabId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
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
    .line 93
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;

    .line 94
    .local v0, "item":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    invoke-direct {p0, v0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->openLoayltyItem(Lcom/biznessapps/loyalty/LoyaltyCommonEntity;)V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onResume()V

    .line 37
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->updateNextTime:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->loadData()V

    .line 40
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->updateNextTime:Z

    .line 41
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getInstance()Lcom/biznessapps/loyalty/LoyaltyJsonParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->parseLoyaltyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->items:Ljava/util/List;

    .line 65
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOYALTY_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->updateControlsWithData(Landroid/app/Activity;)V

    .line 88
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/loyalty/LoyaltyListFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V

    .line 89
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

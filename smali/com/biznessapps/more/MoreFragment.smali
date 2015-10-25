.class public Lcom/biznessapps/more/MoreFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/api/navigation/TabButton;",
        ">;"
    }
.end annotation


# instance fields
.field private appSettings:Lcom/biznessapps/common/entities/AppSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private opentTab(Landroid/app/Activity;Lcom/biznessapps/api/navigation/TabButton;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .param p2, "item"    # Lcom/biznessapps/api/navigation/TabButton;

    .prologue
    const/4 v3, 0x0

    .line 112
    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/more/MoreFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v2

    invoke-static {v1, v2, v3, v3}, Lcom/biznessapps/utils/ApiUtils;->getTabIntent(Landroid/content/Context;Lcom/biznessapps/more/Tab;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/biznessapps/more/MoreFragment;->startActivity(Landroid/content/Intent;)V

    .line 116
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 7
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 93
    iget-object v5, p0, Lcom/biznessapps/more/MoreFragment;->items:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/biznessapps/more/MoreFragment;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 94
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 95
    .local v4, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    iget-object v5, p0, Lcom/biznessapps/more/MoreFragment;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 97
    iget-object v5, p0, Lcom/biznessapps/more/MoreFragment;->items:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/api/navigation/TabButton;

    invoke-direct {p0, p1, v5}, Lcom/biznessapps/more/MoreFragment;->opentTab(Landroid/app/Activity;Lcom/biznessapps/api/navigation/TabButton;)V

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 109
    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/biznessapps/more/MoreFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 101
    .local v1, "hasMoreBg":Z
    iget-object v5, p0, Lcom/biznessapps/more/MoreFragment;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/api/navigation/TabButton;

    .line 102
    .local v3, "item":Lcom/biznessapps/api/navigation/TabButton;
    iget-object v5, p0, Lcom/biznessapps/more/MoreFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4, v5, v1}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;Z)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    .end local v3    # "item":Lcom/biznessapps/api/navigation/TabButton;
    :cond_2
    new-instance v0, Lcom/biznessapps/more/MoreTabAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/more/MoreFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v5, v4, v6}, Lcom/biznessapps/more/MoreTabAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 105
    .local v0, "adapter":Lcom/biznessapps/more/MoreTabAdapter;
    iget-object v5, p0, Lcom/biznessapps/more/MoreFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v5, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    invoke-virtual {p0}, Lcom/biznessapps/more/MoreFragment;->initListViewListener()V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/more/MoreFragment;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    .line 83
    iget-object v0, p0, Lcom/biznessapps/more/MoreFragment;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "moreBgUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/more/MoreFragment;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->hasMoreButtonNavigation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/biznessapps/more/MoreFragment;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getMoreTabTabletBg()Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/more/MoreFragment;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getMoreTabBg()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/biznessapps/more/MoreFragment;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getMoreTabBg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    const-string v2, "http://www.biznessapps.com/uploads/images/%s/xtra_imgs/%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/biznessapps/more/MoreFragment;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getMoreTabTabletBg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_3
    const-string v2, "http://www.biznessapps.com/uploads/images/%s/xtra_imgs/%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/biznessapps/more/MoreFragment;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getMoreTabBg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    const-string v0, "settings.php?app_code=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/more/MoreFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initSettingsData()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getMoreTabUISettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/more/MoreFragment;->settings:Lcom/biznessapps/api/UiSettings;

    .line 39
    iget-object v0, p0, Lcom/biznessapps/more/MoreFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffectForMoreTab()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/UiSettings;->setUseBlurEffect(Z)V

    .line 40
    return-void
.end method

.method protected initTitleBar()V
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/biznessapps/more/MoreFragment;->hasTitleBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/biznessapps/more/MoreFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 46
    .local v0, "titleBarRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/biznessapps/more/MoreFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/more/MoreFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showMoreTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;Lcom/biznessapps/api/UiSettings;)V

    .line 48
    .end local v0    # "titleBarRoot":Landroid/view/ViewGroup;
    :cond_0
    return-void
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
    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/api/navigation/TabButton;

    .line 89
    .local v0, "item":Lcom/biznessapps/api/navigation/TabButton;
    invoke-virtual {p0}, Lcom/biznessapps/more/MoreFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/biznessapps/more/MoreFragment;->opentTab(Landroid/app/Activity;Lcom/biznessapps/api/navigation/TabButton;)V

    .line 90
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 28
    invoke-static {}, Lcom/biznessapps/more/TabManager;->getInstance()Lcom/biznessapps/more/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/more/TabManager;->getMoreTabsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/more/MoreFragment;->items:Ljava/util/List;

    .line 29
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/more/MoreFragment;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/biznessapps/more/MoreFragment;->plugListView(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.class public abstract Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "CommonListFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">",
        "Lcom/biznessapps/common/fragments/CommonFragment;"
    }
.end annotation


# static fields
.field protected static final FIRST_ITEM:I = 0x0

.field protected static final ONE_ITEM_SIZE:I = 0x1


# instance fields
.field protected adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/common/adapters/AbstractAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected count:I

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected listView:Lcom/biznessapps/widgets/RefreshableListView;

.field protected offset:I

.field protected final positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

.field protected screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

.field protected searchQuery:Ljava/lang/String;

.field protected searchTopBar:Lcom/biznessapps/common/components/SearchTopBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 44
    const/16 v0, 0x14

    iput v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->count:I

    .line 52
    new-instance v0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew$1;-><init>(Lcom/biznessapps/common/fragments/CommonListFragmentNew;)V

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    return-void
.end method


# virtual methods
.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "bgUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->items:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->list_layout:I

    return v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method protected getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    .local p1, "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    .local p2, "itemsList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->bgUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;Z)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v0

    return-object v0
.end method

.method protected handleNoDataEvent(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 132
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    invoke-static {p1}, Lcom/biznessapps/utils/ViewUtils;->showNoDataToast(Landroid/app/Activity;)V

    .line 134
    return-void
.end method

.method protected initListViewListener()V
    .locals 2

    .prologue
    .line 117
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    new-instance v1, Lcom/biznessapps/common/fragments/CommonListFragmentNew$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew$2;-><init>(Lcom/biznessapps/common/fragments/CommonListFragmentNew;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    new-instance v1, Lcom/biznessapps/common/fragments/CommonListFragmentNew$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew$3;-><init>(Lcom/biznessapps/common/fragments/CommonListFragmentNew;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 129
    return-void
.end method

.method protected initSearchBar()V
    .locals 5

    .prologue
    .line 176
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    new-instance v0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew$4;-><init>(Lcom/biznessapps/common/fragments/CommonListFragmentNew;)V

    .line 182
    .local v0, "dataLoadRunnable":Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
    new-instance v1, Lcom/biznessapps/common/components/SearchTopBar;

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->root:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/biznessapps/common/components/SearchTopBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;Lcom/biznessapps/api/UiSettings;)V

    iput-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->searchTopBar:Lcom/biznessapps/common/components/SearchTopBar;

    .line 183
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->searchTopBar:Lcom/biznessapps/common/components/SearchTopBar;

    invoke-virtual {v1}, Lcom/biznessapps/common/components/SearchTopBar;->getScreenListener()Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    .line 184
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 154
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 155
    sget v1, Lcom/biznessapps/layout/R$id;->list_view_root:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 156
    .local v0, "listViewRoot":Landroid/view/ViewGroup;
    sget v1, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 157
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setPositionListener(Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;)V

    .line 158
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setItemsCanFocus(Z)V

    .line 159
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 160
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->useSearchBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->initSearchBar()V

    .line 163
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->initViews(Landroid/view/ViewGroup;)V

    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->loadData()V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/RefreshableListView;->removeListeners()V

    .line 91
    :cond_0
    return-void
.end method

.method protected onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 136
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 80
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onPause()V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/AbstractAdapter;->notifyDataSetChanged()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    invoke-interface {v0}, Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;->onResumed()V

    .line 76
    :cond_1
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 95
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->tabId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

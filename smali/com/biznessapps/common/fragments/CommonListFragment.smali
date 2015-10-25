.class public abstract Lcom/biznessapps/common/fragments/CommonListFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "CommonListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;
    }
.end annotation

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

.field protected currentItemIndex:I

.field protected isOffsetLoading:Z

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected listView:Lcom/biznessapps/widgets/RefreshableListView;

.field protected noDataMore:Z

.field protected offset:I

.field protected offsetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

.field protected preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

.field protected searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 51
    const/16 v0, 0x14

    iput v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->count:I

    .line 59
    new-instance v0, Lcom/biznessapps/common/fragments/CommonListFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/fragments/CommonListFragment$1;-><init>(Lcom/biznessapps/common/fragments/CommonListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    .line 223
    return-void
.end method


# virtual methods
.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    const/4 v2, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "bgUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->items:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->items:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getBackground()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->items:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    return-object v0
.end method

.method protected findPreloadedItem(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "searchParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_1

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 210
    .local v1, "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    if-nez v2, :cond_0

    .line 211
    iput-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    .line 212
    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/entities/CommonListEntity;->setUseAgain(Z)V

    .line 217
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    :cond_1
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->list_layout:I

    return v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

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
    .line 170
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    .local p1, "item":Lcom/biznessapps/common/entities/CommonListEntity;, "TT;"
    .local p2, "itemsList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->bgUrl:Ljava/lang/String;

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
    .line 153
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    invoke-static {p1}, Lcom/biznessapps/utils/ViewUtils;->showNoDataToast(Landroid/app/Activity;)V

    .line 155
    return-void
.end method

.method protected initListViewListener()V
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    new-instance v1, Lcom/biznessapps/common/fragments/CommonListFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/fragments/CommonListFragment$2;-><init>(Lcom/biznessapps/common/fragments/CommonListFragment;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    new-instance v1, Lcom/biznessapps/common/fragments/CommonListFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/fragments/CommonListFragment$3;-><init>(Lcom/biznessapps/common/fragments/CommonListFragment;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 150
    return-void
.end method

.method protected initSearchBar()V
    .locals 5

    .prologue
    .line 197
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    new-instance v0, Lcom/biznessapps/common/fragments/CommonListFragment$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/fragments/CommonListFragment$4;-><init>(Lcom/biznessapps/common/fragments/CommonListFragment;)V

    .line 203
    .local v0, "dataLoadRunnable":Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
    new-instance v1, Lcom/biznessapps/common/components/SearchTopBar;

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->root:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/biznessapps/common/components/SearchTopBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;Lcom/biznessapps/api/UiSettings;)V

    .line 204
    .local v1, "searchBar":Lcom/biznessapps/common/components/SearchTopBar;
    invoke-virtual {v1}, Lcom/biznessapps/common/components/SearchTopBar;->getScreenListener()Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    .line 205
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 176
    sget v1, Lcom/biznessapps/layout/R$id;->list_view_root:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    .local v0, "listViewRoot":Landroid/view/ViewGroup;
    sget v1, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 178
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setPositionListener(Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;)V

    .line 179
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setItemsCanFocus(Z)V

    .line 180
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 181
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->useSearchBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->initSearchBar()V

    .line 184
    :cond_0
    return-void
.end method

.method protected isUsedPositioning()Z
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 80
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->loadData()V

    .line 81
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/RefreshableListView;->removeListeners()V

    .line 95
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroy()V

    .line 96
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
    .line 160
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
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
    .line 157
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    invoke-interface {v0}, Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;->onResumed()V

    .line 90
    :cond_0
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 106
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->tabId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 100
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment;->isOffsetLoading:Z

    .line 102
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment;, "Lcom/biznessapps/common/fragments/CommonListFragment<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

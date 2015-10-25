.class public Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "PastOrdersListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/food_ordering/entities/PastOrderEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private openOrderItem(Lcom/biznessapps/food_ordering/entities/PastOrderEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_PAST_ORDERS_DETAIL"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_PAST_ORDERS_DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "TAB_LABEL"

    sget v2, Lcom/biznessapps/layout/R$string;->fo_details:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->items:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Lcom/biznessapps/food_ordering/PastOrderAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->items:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/food_ordering/PastOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 58
    .local v0, "ex":Lcom/biznessapps/food_ordering/PastOrderAdapter;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->initListViewListener()V

    .line 63
    .end local v0    # "ex":Lcom/biznessapps/food_ordering/PastOrderAdapter;
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method protected initSettingsData()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->initSettingsData()V

    .line 34
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getPastOrders()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->items:Ljava/util/List;

    .line 35
    return-void
.end method

.method protected loadBgUrl()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->bgUrl:Ljava/lang/String;

    .line 40
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->loadBgUrl()V

    .line 41
    return-void
.end method

.method protected loadData()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 24
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 25
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->root:Landroid/view/ViewGroup;

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
    .line 51
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    .line 52
    .local v0, "item":Lcom/biznessapps/food_ordering/entities/PastOrderEntity;
    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->openOrderItem(Lcom/biznessapps/food_ordering/entities/PastOrderEntity;)V

    .line 53
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 46
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/account/PastOrdersListFragment;->plugListView(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

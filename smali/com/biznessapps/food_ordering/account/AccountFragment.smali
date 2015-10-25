.class public Lcom/biznessapps/food_ordering/account/AccountFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "AccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/food_ordering/account/AccountEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private openAccountItem(Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/food_ordering/account/AccountEntity;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getType()I

    move-result v0

    .line 67
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    const-string v1, "FO_PAST_ORDERS_LIST"

    sget v2, Lcom/biznessapps/layout/R$string;->fo_past_orders:I

    invoke-direct {p0, v1, v2}, Lcom/biznessapps/food_ordering/account/AccountFragment;->openTab(Ljava/lang/String;I)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    const-string v1, "FO_MY_ADDRESSES"

    sget v2, Lcom/biznessapps/layout/R$string;->fo_my_addresses:I

    invoke-direct {p0, v1, v2}, Lcom/biznessapps/food_ordering/account/AccountFragment;->openTab(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private openTab(Ljava/lang/String;I)V
    .locals 4
    .param p1, "viewController"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/AccountFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0, p2}, Lcom/biznessapps/food_ordering/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/AccountFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/account/AccountFragment;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 56
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/AccountFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/FOUtils;->addLineSeparator(Landroid/widget/ListView;Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method protected loadBgUrl()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountFragment;->bgUrl:Ljava/lang/String;

    .line 32
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->loadBgUrl()V

    .line 33
    return-void
.end method

.method protected loadData()V
    .locals 7

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/account/AccountEntity;>;"
    new-instance v3, Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-direct {v3}, Lcom/biznessapps/food_ordering/account/AccountEntity;-><init>()V

    .line 39
    .local v3, "pastOrdersEntity":Lcom/biznessapps/food_ordering/account/AccountEntity;
    sget v4, Lcom/biznessapps/layout/R$drawable;->fo_past_orders_icon:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setImageId(I)V

    .line 40
    sget v4, Lcom/biznessapps/layout/R$string;->fo_past_orders:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/food_ordering/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setTitle(Ljava/lang/String;)V

    .line 41
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setType(I)V

    .line 42
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-direct {v2}, Lcom/biznessapps/food_ordering/account/AccountEntity;-><init>()V

    .line 44
    .local v2, "myAddressesEntity":Lcom/biznessapps/food_ordering/account/AccountEntity;
    sget v4, Lcom/biznessapps/layout/R$drawable;->fo_my_addresses:I

    invoke-virtual {v2, v4}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setImageId(I)V

    .line 45
    sget v4, Lcom/biznessapps/layout/R$string;->fo_my_addresses:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/food_ordering/account/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setTitle(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setType(I)V

    .line 47
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/biznessapps/food_ordering/account/AccountAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/AccountFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/AccountFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v5}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/food_ordering/account/AccountFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v4, v5, v6}, Lcom/biznessapps/food_ordering/account/AccountAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 49
    .local v0, "ex":Lcom/biznessapps/food_ordering/account/AccountAdapter;
    iget-object v4, p0, Lcom/biznessapps/food_ordering/account/AccountFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/AccountFragment;->initListViewListener()V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 25
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/AccountFragment;->loadBgUrl()V

    .line 26
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/AccountFragment;->root:Landroid/view/ViewGroup;

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
    .line 61
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/account/AccountEntity;

    .line 62
    .local v0, "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/account/AccountFragment;->openAccountItem(Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    .line 63
    return-void
.end method

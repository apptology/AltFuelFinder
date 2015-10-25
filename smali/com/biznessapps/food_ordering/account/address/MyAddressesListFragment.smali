.class public Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "MyAddressesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/food_ordering/account/AccountEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private addButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;
    .param p1, "x1"    # Lcom/biznessapps/food_ordering/account/AccountEntity;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->deleteAccount(Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    return-void
.end method

.method private deleteAccount(Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    .locals 2
    .param p1, "item"    # Lcom/biznessapps/food_ordering/account/AccountEntity;

    .prologue
    .line 109
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/storage/StorageKeeper;->deleteFOAccount(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static openAccountItem(Landroid/app/Activity;Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "item"    # Lcom/biznessapps/food_ordering/account/AccountEntity;

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_MY_ADDRESS"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_MY_ADDRESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "TAB_LABEL"

    sget v2, Lcom/biznessapps/layout/R$string;->fo_my_addresses:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_my_addresses:I

    return v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 67
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/FOUtils;->addLineSeparator(Landroid/widget/ListView;Landroid/content/Context;)V

    .line 68
    sget v0, Lcom/biznessapps/layout/R$id;->add_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->addButton:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->addButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$1;-><init>(Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method protected loadBgUrl()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->bgUrl:Ljava/lang/String;

    .line 44
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->loadBgUrl()V

    .line 45
    return-void
.end method

.method protected loadData()V
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageKeeper;->getFOAccouns()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/account/AccountEntity;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    new-instance v1, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v3}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, v2, v3, v4}, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 57
    .local v1, "ex":Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v2, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->initListViewListener()V

    .line 62
    .end local v1    # "ex":Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->loadBgUrl()V

    .line 32
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
    .line 80
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/account/AccountEntity;

    .line 82
    .local v0, "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/biznessapps/layout/R$string;->delete:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$2;-><init>(Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    invoke-static {v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 90
    const/4 v1, 0x1

    return v1
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
    .line 95
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/account/AccountEntity;

    .line 96
    .local v0, "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->openAccountItem(Landroid/app/Activity;Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->loadData()V

    .line 39
    return-void
.end method

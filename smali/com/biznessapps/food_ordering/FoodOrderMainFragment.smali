.class public Lcom/biznessapps/food_ordering/FoodOrderMainFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "FoodOrderMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/food_ordering/entities/PastOrderEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private accountView:Landroid/widget/ImageView;

.field private isFirstLoad:Z

.field private searchByLocationButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->isFirstLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/FoodOrderMainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/FoodOrderMainFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/FoodOrderMainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/FoodOrderMainFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method private openOrderItem(Lcom/biznessapps/food_ordering/entities/PastOrderEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_PAST_ORDERS_DETAIL"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_PAST_ORDERS_DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "TAB_LABEL"

    sget v2, Lcom/biznessapps/layout/R$string;->fo_details:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->items:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    new-instance v0, Lcom/biznessapps/food_ordering/PastOrderAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->items:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/food_ordering/PastOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 136
    .local v0, "ex":Lcom/biznessapps/food_ordering/PastOrderAdapter;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->initListViewListener()V

    .line 141
    .end local v0    # "ex":Lcom/biznessapps/food_ordering/PastOrderAdapter;
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_landing_screen:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const-string v0, "food_ordering_main.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewForBg()Landroid/view/View;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->container_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getViewsRef()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->accountView:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->searchByLocationButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 73
    sget v1, Lcom/biznessapps/layout/R$id;->account_view:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->accountView:Landroid/widget/ImageView;

    .line 74
    sget v1, Lcom/biznessapps/layout/R$id;->search_by_location_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->searchByLocationButton:Landroid/widget/Button;

    .line 75
    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->accountView:Landroid/widget/ImageView;

    new-instance v2, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$1;-><init>(Lcom/biznessapps/food_ordering/FoodOrderMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->searchByLocationButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment$2;-><init>(Lcom/biznessapps/food_ordering/FoodOrderMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->searchByLocationButton:Landroid/widget/Button;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 102
    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->searchByLocationButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->fo_search_by_location:I

    invoke-static {v2, v3}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    sget v1, Lcom/biznessapps/layout/R$id;->past_orders_view:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, "pastOrdersView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->fo_past_orders:I

    invoke-static {v1, v2, v0, v3}, Lcom/biznessapps/food_ordering/FOUtils;->setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 39
    iget-object v0, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->root:Landroid/view/ViewGroup;

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
    .line 129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    .line 130
    .local v0, "item":Lcom/biznessapps/food_ordering/entities/PastOrderEntity;
    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->openOrderItem(Lcom/biznessapps/food_ordering/entities/PastOrderEntity;)V

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onResume()V

    .line 45
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->isFirstLoad:Z

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->loadData()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->isFirstLoad:Z

    goto :goto_0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->parseFoodMainData(Ljava/lang/String;)Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    .line 117
    .local v0, "item":Lcom/biznessapps/food_ordering/FoodOrderingManager;
    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getPastOrders()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->items:Ljava/util/List;

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/FoodOrderMainFragment;->plugListView(Landroid/app/Activity;)V

    .line 125
    return-void
.end method

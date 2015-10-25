.class public Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "CategoryItemsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

.field private category:Lcom/biznessapps/food_ordering/entities/CategoryEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$502(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    move-object v1, p1

    .line 156
    :cond_0
    return-object v1

    .line 139
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 140
    .local v3, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "description":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_3
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private openDetail(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V
    .locals 6
    .param p1, "item"    # Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_CATEGORIES_ITEM_DETAIL"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_CATEGORIES_ITEM_DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "TAB_LABEL"

    sget v2, Lcom/biznessapps/layout/R$string;->fo_details:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "TIMESTAMP_EXTRA"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TIMESTAMP_EXTRA"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 184
    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 185
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void
.end method

.method private plugListView(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v0, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p2, v2}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 162
    .local v0, "ex":Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->initListViewListener()V

    .line 167
    .end local v0    # "ex":Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_categories_items_layout:I

    return v0
.end method

.method protected initSettingsData()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->initSettingsData()V

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->category:Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    .line 74
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->category:Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->setCategoryId(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->category:Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->items:Ljava/util/List;

    .line 76
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/biznessapps/food_ordering/FOUtils;->initCartViews(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    .line 103
    sget v2, Lcom/biznessapps/layout/R$id;->search_icon_close:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 104
    .local v0, "searchCloseView":Landroid/widget/ImageView;
    sget v2, Lcom/biznessapps/layout/R$id;->search_edit_view:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 105
    .local v1, "searchEditText":Landroid/widget/EditText;
    sget v2, Lcom/biznessapps/layout/R$string;->search:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 106
    new-instance v2, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Landroid/widget/EditText;)V

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 114
    new-instance v2, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$3;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/biznessapps/utils/ViewUtils;->updateSearchBarWithColor(ILandroid/widget/ImageView;Landroid/widget/EditText;)V

    .line 126
    return-void
.end method

.method protected loadBgUrl()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->bgUrl:Ljava/lang/String;

    .line 81
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->loadBgUrl()V

    .line 82
    return-void
.end method

.method protected loadData()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 172
    packed-switch p2, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 174
    :pswitch_0
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 40
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->root:Landroid/view/ViewGroup;

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
    .line 130
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 131
    .local v0, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->openDetail(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V

    .line 132
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->stopAnim()V

    .line 63
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onPause()V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 45
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onResume()V

    .line 46
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->startAnim()V

    .line 47
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->getCartContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 48
    .local v0, "cartContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 50
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$1;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 58
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 92
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->search_bar_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->items:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V

    .line 96
    return-void
.end method

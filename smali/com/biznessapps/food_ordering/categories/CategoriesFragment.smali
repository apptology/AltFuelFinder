.class public Lcom/biznessapps/food_ordering/categories/CategoriesFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "CategoriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/food_ordering/entities/CategoryEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

.field private gridView:Landroid/widget/GridView;

.field private hasGridViewMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Lcom/biznessapps/food_ordering/entities/CategoryEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoriesFragment;
    .param p1, "x1"    # Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->openDetail(Lcom/biznessapps/food_ordering/entities/CategoryEntity;)V

    return-void
.end method

.method static synthetic access$102(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoriesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoriesFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoriesFragment;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$502(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoriesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method private clearAdapters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    return-void
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    move-object v0, p1

    .line 175
    :cond_0
    return-object v0

    .line 165
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

    check-cast v2, Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    .line 166
    .local v2, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity;
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private openDetail(Lcom/biznessapps/food_ordering/entities/CategoryEntity;)V
    .locals 7
    .param p1, "item"    # Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FO_CATEGORIES_ITEMS"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "FO_CATEGORIES_ITEMS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/biznessapps/layout/R$string;->fo_items_for:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "title":Ljava/lang/String;
    const-string v2, "TAB_LABEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v2, "BG_URL_EXTRA"

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, "ITEM_EXTRA"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 200
    const-string v2, "TIMESTAMP_EXTRA"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TIMESTAMP_EXTRA"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 201
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method private plugListView(Landroid/app/Activity;Ljava/util/List;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    iget-boolean v2, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->hasGridViewMode:Z

    if-eqz v2, :cond_0

    sget v1, Lcom/biznessapps/layout/R$layout;->fo_category_item:I

    .line 151
    .local v1, "layoutId":I
    :goto_0
    new-instance v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p2, v3}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;I)V

    .line 152
    .local v0, "adapter":Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;
    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->setAdapters(Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;)V

    .line 153
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->initListViewListener()V

    .line 158
    .end local v0    # "adapter":Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;
    .end local v1    # "layoutId":I
    :goto_1
    return-void

    .line 150
    :cond_0
    sget v1, Lcom/biznessapps/layout/R$layout;->fo_category_list_item:I

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->clearAdapters()V

    .line 156
    invoke-static {p1}, Lcom/biznessapps/utils/ViewUtils;->showNoDataToast(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private setAdapters(Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 179
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->hasGridViewMode:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->gridView:Landroid/widget/GridView;

    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->hasGridViewMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-boolean v3, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->hasGridViewMode:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 186
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v0, p1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 184
    goto :goto_1

    :cond_2
    move v2, v1

    .line 185
    goto :goto_2
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_categories_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 7

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "LOCATION_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "locationId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TIMESTAMP_EXTRA"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 124
    .local v1, "timestamp":J
    const-string v3, "food_ordering_menus.php?app_code=%s&tab_id=%s&location_id=%s&timestamp=%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->tabId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->hasGridViewMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->gridView:Landroid/widget/GridView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    goto :goto_0
.end method

.method protected initSettingsData()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->initSettingsData()V

    .line 61
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->isGridViewMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->hasGridViewMode:Z

    .line 62
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 78
    sget v2, Lcom/biznessapps/layout/R$id;->grid_view:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->gridView:Landroid/widget/GridView;

    .line 80
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->gridView:Landroid/widget/GridView;

    new-instance v3, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$1;-><init>(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/biznessapps/food_ordering/FOUtils;->initCartViews(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    .line 90
    sget v2, Lcom/biznessapps/layout/R$id;->search_icon_close:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, "searchCloseView":Landroid/widget/ImageView;
    sget v2, Lcom/biznessapps/layout/R$id;->search_edit_view:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 92
    .local v1, "searchEditText":Landroid/widget/EditText;
    sget v2, Lcom/biznessapps/layout/R$string;->search:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 93
    new-instance v2, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;-><init>(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Landroid/widget/EditText;)V

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    new-instance v2, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$3;-><init>(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/biznessapps/utils/ViewUtils;->updateSearchBarWithColor(ILandroid/widget/ImageView;Landroid/widget/EditText;)V

    .line 113
    return-void
.end method

.method protected loadBgUrl()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->bgUrl:Ljava/lang/String;

    .line 72
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->loadBgUrl()V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 42
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->loadBgUrl()V

    .line 43
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->root:Landroid/view/ViewGroup;

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

    check-cast v0, Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    .line 130
    .local v0, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity;
    invoke-direct {p0, v0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->openDetail(Lcom/biznessapps/food_ordering/entities/CategoryEntity;)V

    .line 131
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->stopAnim()V

    .line 55
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onPause()V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->startAnim()V

    .line 50
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->parseCategories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->items:Ljava/util/List;

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 142
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->search_bar_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->items:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V

    .line 146
    return-void
.end method

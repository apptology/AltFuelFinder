.class public Lcom/biznessapps/search/GlobalSearchFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "GlobalSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;,
        Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/news/SearchEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private searchCloseView:Landroid/widget/ImageView;

.field private searchEditText:Landroid/widget/EditText;

.field private searchItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation
.end field

.field private searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/search/GlobalSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/search/GlobalSearchFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/search/GlobalSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/search/GlobalSearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/search/GlobalSearchFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/search/GlobalSearchFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/search/GlobalSearchFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/search/GlobalSearchFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/search/GlobalSearchFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/search/GlobalSearchFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/search/GlobalSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/search/GlobalSearchFragment;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/biznessapps/search/GlobalSearchFragment;->loadData()V

    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    new-instance v1, Lcom/biznessapps/search/GlobalSearchFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/search/GlobalSearchFragment$3;-><init>(Lcom/biznessapps/search/GlobalSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    return-void
.end method

.method private updateList(Ljava/util/List;Landroid/app/Activity;)V
    .locals 11
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    if-eqz p2, :cond_5

    .line 151
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 153
    new-instance v7, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$layout;->section_header:I

    iget-object v10, p0, Lcom/biznessapps/search/GlobalSearchFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v7, v8, v9, v10}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;ILcom/biznessapps/api/UiSettings;)V

    iput-object v7, p0, Lcom/biznessapps/search/GlobalSearchFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 155
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 156
    .local v6, "sectionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/news/SearchEntity;

    .line 157
    .local v1, "item":Lcom/biznessapps/news/SearchEntity;
    invoke-virtual {v1}, Lcom/biznessapps/news/SearchEntity;->getSection()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "section":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 159
    const-string v3, ""

    .line 161
    :cond_0
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 162
    .local v2, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    if-nez v2, :cond_1

    .line 163
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .restart local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/biznessapps/search/GlobalSearchFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/news/SearchEntity;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    .end local v1    # "item":Lcom/biznessapps/news/SearchEntity;
    .end local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    .end local v3    # "section":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 170
    .local v5, "sections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 171
    .restart local v3    # "section":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 172
    .restart local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 173
    new-instance v4, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/search/GlobalSearchFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v4, p0, v7, v2, v8}, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;-><init>(Lcom/biznessapps/search/GlobalSearchFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 174
    .local v4, "sectionAdapter":Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;
    iget-object v7, p0, Lcom/biznessapps/search/GlobalSearchFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    check-cast v7, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {v7, v3, v4}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_1

    .line 177
    .end local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    .end local v3    # "section":Ljava/lang/String;
    .end local v4    # "sectionAdapter":Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;
    :cond_4
    iget-object v7, p0, Lcom/biznessapps/search/GlobalSearchFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v8, p0, Lcom/biznessapps/search/GlobalSearchFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v7, v8}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "sections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "sectionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;>;"
    :cond_5
    :goto_2
    return-void

    .line 179
    :cond_6
    invoke-virtual {p0, p2}, Lcom/biznessapps/search/GlobalSearchFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    goto :goto_2
.end method


# virtual methods
.method protected getRequestUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 71
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "appCode":Ljava/lang/String;
    const-string v1, "global_search.php?app_code=%s&keywords=%s&platform=android"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    sget v0, Lcom/biznessapps/layout/R$id;->search_icon_close:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchCloseView:Landroid/widget/ImageView;

    .line 91
    sget v0, Lcom/biznessapps/layout/R$id;->search_edit_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 92
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchEditText:Landroid/widget/EditText;

    sget v1, Lcom/biznessapps/layout/R$string;->search:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 94
    sget v0, Lcom/biznessapps/layout/R$id;->search_results_listview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 95
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v0}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 96
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/search/GlobalSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/search/GlobalSearchFragment$1;-><init>(Lcom/biznessapps/search/GlobalSearchFragment;)V

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 108
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchCloseView:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/search/GlobalSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/search/GlobalSearchFragment$2;-><init>(Lcom/biznessapps/search/GlobalSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchCloseView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 116
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    sget v0, Lcom/biznessapps/layout/R$layout;->global_search_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->root:Landroid/view/ViewGroup;

    .line 62
    invoke-virtual {p0}, Lcom/biznessapps/search/GlobalSearchFragment;->initSettingsData()V

    .line 63
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/search/GlobalSearchFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 64
    invoke-direct {p0}, Lcom/biznessapps/search/GlobalSearchFragment;->initListeners()V

    .line 65
    invoke-virtual {p0}, Lcom/biznessapps/search/GlobalSearchFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 66
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseGlobalSearchData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchItems:Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchItems:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 85
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment;->searchItems:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/biznessapps/search/GlobalSearchFragment;->updateList(Ljava/util/List;Landroid/app/Activity;)V

    .line 86
    return-void
.end method

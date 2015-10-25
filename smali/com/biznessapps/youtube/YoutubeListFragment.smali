.class public Lcom/biznessapps/youtube/YoutubeListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "YoutubeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/youtube/YoutubeRssEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final FEATURED_SEARCH_TYPE:I = 0x1

.field private static final POPULAR_SEARCH_TYPE:I = 0x2

.field private static final RECENT_SEARCH_TYPE:I = 0x3


# instance fields
.field private currentType:I

.field private featuredButton:Landroid/widget/Button;

.field private popularButton:Landroid/widget/Button;

.field private recentButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/youtube/YoutubeListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeListFragment;

    .prologue
    .line 27
    iget v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/youtube/YoutubeListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/youtube/YoutubeListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/biznessapps/youtube/YoutubeListFragment;->updateButtonState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/youtube/YoutubeListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeListFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/youtube/YoutubeListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeListFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/youtube/YoutubeListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeListFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->loadData()V

    return-void
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/youtube/YoutubeRssEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/youtube/YoutubeRssEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    move-object v0, p1

    .line 207
    :cond_0
    return-object v0

    .line 196
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

    check-cast v2, Lcom/biznessapps/youtube/YoutubeRssEntity;

    .line 198
    .local v2, "item":Lcom/biznessapps/youtube/YoutubeRssEntity;
    invoke-virtual {v2}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 14
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 153
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v10}, Lcom/biznessapps/youtube/YoutubeListFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    invoke-static {v0}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v1

    .line 155
    .local v1, "hasNoData":Z
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Lcom/biznessapps/youtube/YoutubeListFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    .line 189
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v5, 0x0

    .line 159
    .local v5, "preLoadedItem":Lcom/biznessapps/youtube/YoutubeRssEntity;
    new-instance v10, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/biznessapps/layout/R$layout;->section_header:I

    iget-object v13, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v10, v11, v12, v13}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;ILcom/biznessapps/api/UiSettings;)V

    iput-object v10, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 162
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 163
    .local v9, "sectionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/youtube/YoutubeRssEntity;

    .line 164
    .local v3, "item":Lcom/biznessapps/youtube/YoutubeRssEntity;
    invoke-virtual {v3}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 165
    move-object v5, v3

    .line 167
    :cond_1
    invoke-virtual {v3}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getSection()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "section":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 169
    const-string v6, ""

    .line 171
    :cond_2
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 172
    .local v4, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    if-nez v4, :cond_3

    .line 173
    new-instance v4, Ljava/util/LinkedList;

    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 175
    .restart local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/youtube/YoutubeListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 178
    .end local v3    # "item":Lcom/biznessapps/youtube/YoutubeRssEntity;
    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    .end local v6    # "section":Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 179
    .local v8, "sections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 180
    .restart local v6    # "section":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 181
    .restart local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 182
    new-instance v7, Lcom/biznessapps/youtube/YoutubeRssAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v7, v10, v4, v11}, Lcom/biznessapps/youtube/YoutubeRssAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 183
    .local v7, "sectionAdapter":Lcom/biznessapps/youtube/YoutubeRssAdapter;
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    check-cast v10, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {v10, v6, v7}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_2

    .line 186
    .end local v4    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    .end local v6    # "section":Ljava/lang/String;
    .end local v7    # "sectionAdapter":Lcom/biznessapps/youtube/YoutubeRssAdapter;
    :cond_6
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v11, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->adapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v10, v11}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->initListViewListener()V

    goto/16 :goto_0
.end method

.method private updateButtonActive(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2
    .param p1, "activeButton"    # Landroid/widget/Button;
    .param p2, "passiveButton"    # Landroid/widget/Button;
    .param p3, "passiveButton2"    # Landroid/widget/Button;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 225
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 228
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 229
    return-void
.end method

.method private updateButtonState(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 211
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->featuredButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->popularButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->recentButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v2}, Lcom/biznessapps/youtube/YoutubeListFragment;->updateButtonActive(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->popularButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->featuredButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->recentButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v2}, Lcom/biznessapps/youtube/YoutubeListFragment;->updateButtonActive(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->recentButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->featuredButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->popularButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v2}, Lcom/biznessapps/youtube/YoutubeListFragment;->updateButtonActive(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YOUTUBE_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->items:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/biznessapps/layout/R$layout;->youtube_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "searchFilter":Ljava/lang/String;
    iget v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I

    if-ne v1, v6, :cond_0

    .line 47
    const-string v0, "&orderby=featured"

    .line 53
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rss.php?app_code=%s&tab_id=%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->tabId:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 48
    :cond_0
    iget v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I

    if-ne v1, v3, :cond_1

    .line 49
    const-string v0, "&orderby=popular"

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "&orderby=recent"

    goto :goto_0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 64
    sget v1, Lcom/biznessapps/layout/R$id;->featured_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->featuredButton:Landroid/widget/Button;

    .line 65
    sget v1, Lcom/biznessapps/layout/R$id;->popular_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->popularButton:Landroid/widget/Button;

    .line 66
    sget v1, Lcom/biznessapps/layout/R$id;->recent_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->recentButton:Landroid/widget/Button;

    .line 67
    sget v1, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    .local v0, "buttonsContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->featuredButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->featured:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 70
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->popularButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->popular:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 71
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->recentButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->recent:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 73
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->featuredButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 74
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->popularButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 75
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->recentButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 77
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 78
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->featuredButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/youtube/YoutubeListFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/youtube/YoutubeListFragment$1;-><init>(Lcom/biznessapps/youtube/YoutubeListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->recentButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/youtube/YoutubeListFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/youtube/YoutubeListFragment$2;-><init>(Lcom/biznessapps/youtube/YoutubeListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->popularButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/youtube/YoutubeListFragment$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/youtube/YoutubeListFragment$3;-><init>(Lcom/biznessapps/youtube/YoutubeListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget v1, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I

    invoke-direct {p0, v1}, Lcom/biznessapps/youtube/YoutubeListFragment;->updateButtonState(I)V

    .line 106
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 133
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/youtube/YoutubeRssEntity;

    .line 134
    .local v1, "item":Lcom/biznessapps/youtube/YoutubeRssEntity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "YOUTUBE_SINGLE_VIEW_FRAGMENT"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "parent_id"

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v2, "LINK"

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v2, "NOTE_DATA"

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "YOUTUBE_MODE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    const-string v2, "BG_URL_EXTRA"

    iget-object v3, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v2, "ITEM_EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    const-string v2, "IMAGE_URL"

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "YOUTUBE_SINGLE_VIEW_FRAGMENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v2, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "TAB_LABEL"

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/biznessapps/youtube/YoutubeListFragment;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseYoutubeRssList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->items:Ljava/util/List;

    .line 111
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YOUTUBE_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->currentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/biznessapps/youtube/YoutubeListFragment;->plugListView(Landroid/app/Activity;)V

    .line 118
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

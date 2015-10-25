.class public Lcom/biznessapps/news/NewsFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/news/NewsFragment$SearchAdapter;
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


# static fields
.field public static final GOOGLE_SEARCH_TYPE:I = 0x1

.field public static final TWITTER_SEARCH_TYPE:I = 0x2


# instance fields
.field private currentSearchType:I

.field private googleSearchButton:Landroid/widget/Button;

.field private googleSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation
.end field

.field private newsSettings:Lcom/biznessapps/news/NewsSettings;

.field private twitterSearchButton:Landroid/widget/Button;

.field private twitterSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/news/NewsFragment;->currentSearchType:I

    .line 289
    return-void
.end method

.method static synthetic access$002(Lcom/biznessapps/news/NewsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/news/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/biznessapps/news/NewsFragment;->currentSearchType:I

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/news/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/news/NewsFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/biznessapps/news/NewsFragment;->search()V

    return-void
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/news/NewsFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    move-object v0, p1

    .line 286
    :cond_0
    return-object v0

    .line 276
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

    check-cast v2, Lcom/biznessapps/news/SearchEntity;

    .line 277
    .local v2, "item":Lcom/biznessapps/news/SearchEntity;
    invoke-virtual {v2}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/news/NewsFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/news/NewsFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/news/NewsFragment$1;-><init>(Lcom/biznessapps/news/NewsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/news/NewsFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/news/NewsFragment$2;-><init>(Lcom/biznessapps/news/NewsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    new-instance v1, Lcom/biznessapps/news/NewsFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/news/NewsFragment$3;-><init>(Lcom/biznessapps/news/NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    return-void
.end method

.method private search()V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/biznessapps/news/NewsFragment;->updateUI()V

    .line 230
    iget v0, p0, Lcom/biznessapps/news/NewsFragment;->currentSearchType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/news/NewsFragment;->updateList(Ljava/util/List;Landroid/app/Activity;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/news/NewsFragment;->updateList(Ljava/util/List;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private updateButtonSelection(Landroid/widget/Button;)V
    .locals 2
    .param p1, "buttonToSelect"    # Landroid/widget/Button;

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 223
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 226
    return-void
.end method

.method private updateList(Ljava/util/List;Landroid/app/Activity;)V
    .locals 7
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
    .line 238
    .local p1, "primaryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    invoke-direct {p0, p1}, Lcom/biznessapps/news/NewsFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/news/NewsFragment;->items:Ljava/util/List;

    .line 239
    iget-object v4, p0, Lcom/biznessapps/news/NewsFragment;->items:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/biznessapps/news/NewsFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/news/NewsFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/biznessapps/news/NewsFragment$4;

    invoke-direct {v5, p0}, Lcom/biznessapps/news/NewsFragment$4;-><init>(Lcom/biznessapps/news/NewsFragment;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    iget-object v4, p0, Lcom/biznessapps/news/NewsFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/news/SearchEntity;

    .line 259
    .local v2, "item":Lcom/biznessapps/news/SearchEntity;
    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/news/NewsFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/news/SearchEntity;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .end local v2    # "item":Lcom/biznessapps/news/SearchEntity;
    :cond_0
    new-instance v0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/news/NewsFragment;->items:Ljava/util/List;

    iget-object v6, p0, Lcom/biznessapps/news/NewsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;-><init>(Lcom/biznessapps/news/NewsFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 262
    .local v0, "adapter":Lcom/biznessapps/news/NewsFragment$SearchAdapter;
    iget-object v4, p0, Lcom/biznessapps/news/NewsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    .end local v0    # "adapter":Lcom/biznessapps/news/NewsFragment$SearchAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    :cond_1
    :goto_1
    return-void

    .line 264
    :cond_2
    if-eqz p2, :cond_1

    .line 265
    invoke-virtual {p0, p2}, Lcom/biznessapps/news/NewsFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/biznessapps/news/NewsFragment;->currentSearchType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/biznessapps/news/NewsFragment;->updateButtonSelection(Landroid/widget/Button;)V

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    return-void

    .line 184
    :cond_1
    iget v0, p0, Lcom/biznessapps/news/NewsFragment;->currentSearchType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/biznessapps/news/NewsFragment;->updateButtonSelection(Landroid/widget/Button;)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 4

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "canUseCachingData":Z
    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewsViewController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/news/NewsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/news/NewsSettings;

    iput-object v1, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    .line 106
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    invoke-virtual {v1}, Lcom/biznessapps/news/NewsSettings;->getGoogleSearchList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchList:Ljava/util/List;

    .line 108
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    invoke-virtual {v1}, Lcom/biznessapps/news/NewsSettings;->getTwitterSearchList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchList:Ljava/util/List;

    .line 109
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 114
    :cond_0
    return v0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    invoke-virtual {v1}, Lcom/biznessapps/news/NewsSettings;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/biznessapps/layout/R$layout;->news_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const-string v0, "news.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/news/NewsFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->search_results_listview:I

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
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 150
    sget v1, Lcom/biznessapps/layout/R$id;->google_search_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchButton:Landroid/widget/Button;

    .line 151
    sget v1, Lcom/biznessapps/layout/R$id;->twitter_search_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchButton:Landroid/widget/Button;

    .line 153
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->news:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 154
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->twitter:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 156
    sget v1, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 158
    .local v0, "buttonsContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 159
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 160
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 162
    sget v1, Lcom/biznessapps/layout/R$id;->search_results_listview:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v1, p0, Lcom/biznessapps/news/NewsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 163
    iget-object v1, p0, Lcom/biznessapps/news/NewsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 164
    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->initSearchBar()V

    .line 165
    return-void
.end method

.method protected loadData()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/biznessapps/news/NewsFragment;->search()V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->loadData()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 71
    sget v0, Lcom/biznessapps/layout/R$layout;->news_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/news/NewsFragment;->root:Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->initSettingsData()V

    .line 73
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/news/NewsFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 74
    invoke-direct {p0}, Lcom/biznessapps/news/NewsFragment;->initListeners()V

    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->loadData()V

    .line 76
    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 77
    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->openCustomDialogs()V

    .line 78
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/news/NewsFragment;->tabId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->getNewsSettings(Ljava/lang/String;)Lcom/biznessapps/news/NewsSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    .line 99
    invoke-virtual {p0}, Lcom/biznessapps/news/NewsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewsViewController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 120
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    invoke-virtual {v0}, Lcom/biznessapps/news/NewsSettings;->getGoogleSearchList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/news/NewsFragment;->googleSearchList:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment;->newsSettings:Lcom/biznessapps/news/NewsSettings;

    invoke-virtual {v0}, Lcom/biznessapps/news/NewsSettings;->getTwitterSearchList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/news/NewsFragment;->twitterSearchList:Ljava/util/List;

    .line 122
    invoke-direct {p0}, Lcom/biznessapps/news/NewsFragment;->search()V

    .line 123
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/biznessapps/real_estate/RealEstateListActivity;
.super Lcom/biznessapps/common/activities/CommonMapActivity;
.source "RealEstateListActivity.java"


# instance fields
.field private categoryType:I

.field private handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private isListMode:Z

.field private isShowAllList:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/real_estate/RealEstateEntity;",
            ">;"
        }
    .end annotation
.end field

.field private listTab:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private mapTab:Landroid/widget/TextView;

.field private ownButton:Landroid/widget/Button;

.field private parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private preloadedItem:Lcom/biznessapps/real_estate/RealEstateEntity;

.field private rentalsButton:Landroid/widget/Button;

.field private searchQuery:Ljava/lang/String;

.field private tabId:Ljava/lang/String;

.field private topContainer:Landroid/view/ViewGroup;

.field private updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->isListMode:Z

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->categoryType:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->preloadedItem:Lcom/biznessapps/real_estate/RealEstateEntity;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/real_estate/RealEstateListActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->markersHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/real_estate/RealEstateListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->setMapVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/biznessapps/real_estate/RealEstateListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->canUseCaching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/real_estate/RealEstateListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->handleInBackground()V

    return-void
.end method

.method static synthetic access$1200(Lcom/biznessapps/real_estate/RealEstateListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/biznessapps/real_estate/RealEstateListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/biznessapps/real_estate/RealEstateListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->bgUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/biznessapps/real_estate/RealEstateListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/real_estate/RealEstateListActivity;)Lcom/biznessapps/api/CachingManager;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/biznessapps/real_estate/RealEstateListActivity;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->updateControlsWithData(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/biznessapps/real_estate/RealEstateListActivity;Lcom/biznessapps/real_estate/RealEstateEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # Lcom/biznessapps/real_estate/RealEstateEntity;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->openItem(Lcom/biznessapps/real_estate/RealEstateEntity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/real_estate/RealEstateListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/biznessapps/real_estate/RealEstateListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->isListMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/biznessapps/real_estate/RealEstateListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->updateBottomTabsState()V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/real_estate/RealEstateListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->setMapVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/real_estate/RealEstateListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->categoryType:I

    return v0
.end method

.method static synthetic access$602(Lcom/biznessapps/real_estate/RealEstateListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->categoryType:I

    return p1
.end method

.method static synthetic access$700(Lcom/biznessapps/real_estate/RealEstateListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->updateTopButtonsState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/biznessapps/real_estate/RealEstateListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->loadContent()V

    return-void
.end method

.method static synthetic access$902(Lcom/biznessapps/real_estate/RealEstateListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method private canUseCaching()Z
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REAL_ESTATE_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;

    .line 282
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private defineAllListVisibility(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/real_estate/RealEstateEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/real_estate/RealEstateEntity;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/real_estate/RealEstateEntity;

    .line 310
    .local v0, "estateItem":Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-virtual {v0}, Lcom/biznessapps/real_estate/RealEstateEntity;->isShowAll()Z

    move-result v1

    iput-boolean v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->isShowAllList:Z

    .line 312
    .end local v0    # "estateItem":Lcom/biznessapps/real_estate/RealEstateEntity;
    :cond_0
    return-void
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/real_estate/RealEstateEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/real_estate/RealEstateEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/real_estate/RealEstateEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/real_estate/RealEstateEntity;>;"
    if-eqz p1, :cond_6

    .line 356
    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/real_estate/RealEstateEntity;

    .line 358
    .local v2, "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-virtual {v2}, Lcom/biznessapps/real_estate/RealEstateEntity;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->itemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->preloadedItem:Lcom/biznessapps/real_estate/RealEstateEntity;

    if-nez v4, :cond_1

    .line 359
    iput-object v2, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->preloadedItem:Lcom/biznessapps/real_estate/RealEstateEntity;

    .line 360
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_1
    iget-boolean v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->isShowAllList:Z

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/biznessapps/real_estate/RealEstateEntity;->getRent()I

    move-result v4

    iget v5, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->categoryType:I

    if-ne v4, v5, :cond_0

    .line 362
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/real_estate/RealEstateEntity;

    .line 367
    .restart local v2    # "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    iget-boolean v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->isShowAllList:Z

    if-nez v4, :cond_5

    .line 368
    invoke-virtual {v2}, Lcom/biznessapps/real_estate/RealEstateEntity;->getRent()I

    move-result v4

    iget v5, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->categoryType:I

    if-ne v4, v5, :cond_4

    .line 372
    :cond_5
    invoke-virtual {v2}, Lcom/biznessapps/real_estate/RealEstateEntity;->getAddressInfo()Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 374
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 375
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    .end local v3    # "text":Ljava/lang/String;
    :cond_6
    return-object v0
.end method

.method private handleInBackground()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 300
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->defineAllListVisibility(Ljava/util/List;)V

    .line 301
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->updateTopContainerVisibility()V

    .line 302
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/real_estate/RealEstateEntity;>;"
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->plugListView(Landroid/content/Context;Ljava/util/List;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->addPins(Ljava/util/List;)V

    .line 305
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    .line 150
    sget v3, Lcom/biznessapps/layout/R$id;->root_layout:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 151
    sget v3, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 152
    .local v0, "bottomContainer":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 153
    sget v3, Lcom/biznessapps/layout/R$id;->map_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->mapTab:Landroid/widget/TextView;

    .line 154
    sget v3, Lcom/biznessapps/layout/R$id;->list_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listTab:Landroid/widget/TextView;

    .line 156
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->mapTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 157
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 159
    sget v3, Lcom/biznessapps/layout/R$id;->rentals_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->rentalsButton:Landroid/widget/Button;

    .line 160
    sget v3, Lcom/biznessapps/layout/R$id;->own_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->ownButton:Landroid/widget/Button;

    .line 162
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->rentalsButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_category_rentals:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 163
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->ownButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_category_own:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 164
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->mapTab:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->map:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listTab:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->list:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 167
    sget v3, Lcom/biznessapps/layout/R$id;->top_buttons_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->topContainer:Landroid/view/ViewGroup;

    .line 168
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->topContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->topContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 172
    sget v3, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listView:Landroid/widget/ListView;

    .line 173
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listTab:Landroid/widget/TextView;

    new-instance v4, Lcom/biznessapps/real_estate/RealEstateListActivity$2;

    invoke-direct {v4, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$2;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->mapTab:Landroid/widget/TextView;

    new-instance v4, Lcom/biznessapps/real_estate/RealEstateListActivity$3;

    invoke-direct {v4, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$3;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->ownButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/real_estate/RealEstateListActivity$4;

    invoke-direct {v4, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$4;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->rentalsButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/real_estate/RealEstateListActivity$5;

    invoke-direct {v4, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$5;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->updateBottomTabsState()V

    .line 211
    new-instance v1, Lcom/biznessapps/real_estate/RealEstateListActivity$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$6;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    .line 218
    .local v1, "dataLoadRunnable":Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
    new-instance v2, Lcom/biznessapps/common/components/SearchTopBar;

    sget v3, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/biznessapps/common/components/SearchTopBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;Lcom/biznessapps/api/UiSettings;)V

    .line 219
    .local v2, "searchBar":Lcom/biznessapps/common/components/SearchTopBar;
    invoke-virtual {v2}, Lcom/biznessapps/common/components/SearchTopBar;->getScreenListener()Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    .line 220
    return-void
.end method

.method private loadContent()V
    .locals 7

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->canUseCaching()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-direct {p0, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->updateControlsWithData(Landroid/app/Activity;)V

    .line 278
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->tabId:Ljava/lang/String;

    .line 232
    const-string v3, "realestates.php?app_code=%s&tab_id=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->tabId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "requestUrl":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->mapTab:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listTab:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->ownButton:Landroid/widget/Button;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->rentalsButton:Landroid/widget/Button;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/biznessapps/api/LoadDataTaskExternal;

    invoke-direct {v0, p0, v2}, Lcom/biznessapps/api/LoadDataTaskExternal;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 241
    .local v0, "loadDataTask":Lcom/biznessapps/api/LoadDataTaskExternal;
    invoke-virtual {v0, v1}, Lcom/biznessapps/api/LoadDataTaskExternal;->setRequestUrl(Ljava/lang/String;)V

    .line 242
    new-instance v3, Lcom/biznessapps/real_estate/RealEstateListActivity$7;

    invoke-direct {v3, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$7;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 248
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/LoadDataTaskExternal;->setCanUseCachingRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 249
    new-instance v3, Lcom/biznessapps/real_estate/RealEstateListActivity$8;

    invoke-direct {v3, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$8;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 255
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/LoadDataTaskExternal;->setHandleInBgRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 256
    new-instance v3, Lcom/biznessapps/real_estate/RealEstateListActivity$9;

    invoke-direct {v3, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$9;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 268
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/LoadDataTaskExternal;->setParseDataRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 269
    new-instance v3, Lcom/biznessapps/real_estate/RealEstateListActivity$10;

    invoke-direct {v3, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$10;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 275
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/LoadDataTaskExternal;->setUpdateControlsRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 276
    invoke-virtual {v0}, Lcom/biznessapps/api/LoadDataTaskExternal;->launch()V

    goto/16 :goto_0
.end method

.method private openItem(Lcom/biznessapps/real_estate/RealEstateEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/real_estate/RealEstateEntity;

    .prologue
    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "RealEstateDetailViewController"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ITEM_ID"

    invoke-virtual {p1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 346
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "RealEstateDetailViewController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "TEXT_EXTRA"

    invoke-virtual {p1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getAddressInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->startActivity(Landroid/content/Intent;)V

    .line 351
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private plugListView(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/real_estate/RealEstateEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/real_estate/RealEstateEntity;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 316
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 317
    .local v3, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/real_estate/RealEstateEntity;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/real_estate/RealEstateEntity;

    .line 318
    .local v2, "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .end local v2    # "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    :cond_0
    new-instance v0, Lcom/biznessapps/real_estate/RealEstateListAdapter;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, p1, v3, v4}, Lcom/biznessapps/real_estate/RealEstateListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 321
    .local v0, "adapter":Lcom/biznessapps/real_estate/RealEstateListAdapter;
    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listView:Landroid/widget/ListView;

    new-instance v5, Lcom/biznessapps/real_estate/RealEstateListActivity$11;

    invoke-direct {v5, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$11;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 330
    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->preloadedItem:Lcom/biznessapps/real_estate/RealEstateEntity;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->preloadedItem:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->isUseAgain()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->preloadedItem:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-direct {p0, v4}, Lcom/biznessapps/real_estate/RealEstateListActivity;->openItem(Lcom/biznessapps/real_estate/RealEstateEntity;)V

    .line 333
    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->preloadedItem:Lcom/biznessapps/real_estate/RealEstateEntity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/biznessapps/real_estate/RealEstateEntity;->setUseAgain(Z)V

    .line 338
    .end local v0    # "adapter":Lcom/biznessapps/real_estate/RealEstateListAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/real_estate/RealEstateEntity;>;"
    :cond_1
    :goto_1
    return-void

    .line 336
    :cond_2
    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private updateBottomTabsState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 399
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->mapTab:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->isListMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 400
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listTab:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->isListMode:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 401
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->mapTab:Landroid/widget/TextView;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listTab:Landroid/widget/TextView;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->updateTextViewIconState([Landroid/widget/TextView;)V

    .line 402
    return-void

    :cond_0
    move v0, v2

    .line 399
    goto :goto_0
.end method

.method private updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->initData()V

    .line 288
    iget-boolean v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->isListMode:Z

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->listTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 292
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->mapTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0
.end method

.method private updateTopButtonsState(I)V
    .locals 2
    .param p1, "categoryType"    # I

    .prologue
    .line 385
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->rentalsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 387
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->rentalsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 388
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->ownButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 389
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->ownButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 396
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->rentalsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 392
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->rentalsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 393
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->ownButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 394
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->ownButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTopContainerVisibility()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->topContainer:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->isShowAllList:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected defineMapItemClickAction(Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 111
    instance-of v0, p1, Lcom/biznessapps/real_estate/RealEstateEntity;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lcom/biznessapps/real_estate/RealEstateEntity;

    .end local p1    # "item":Lcom/biznessapps/common/entities/MapEntity;
    invoke-direct {p0, p1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->openItem(Lcom/biznessapps/real_estate/RealEstateEntity;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/biznessapps/real_estate/RealEstateListActivity$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/real_estate/RealEstateListActivity$1;-><init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/biznessapps/layout/R$layout;->real_estate_list_layout:I

    return v0
.end method

.method protected getMarkerOptions(Lcom/google/android/gms/maps/model/LatLng;Lcom/biznessapps/common/entities/MapEntity;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 3
    .param p1, "myLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 118
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$drawable;->property_icon:I

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 121
    .local v0, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    return-object v0
.end method

.method public getProgressBarContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 100
    sget v1, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 101
    .local v0, "progressBarContainer":Landroid/view/ViewGroup;
    return-object v0
.end method

.method public getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/biznessapps/layout/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    .line 80
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->initViews()V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;->onResume()V

    .line 86
    iget v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->categoryType:I

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->ownButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity;->rentalsButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0
.end method

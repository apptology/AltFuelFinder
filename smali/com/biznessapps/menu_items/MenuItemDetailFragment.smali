.class public Lcom/biznessapps/menu_items/MenuItemDetailFragment;
.super Lcom/biznessapps/info_items/InfoDetailFragment;
.source "MenuItemDetailFragment.java"


# instance fields
.field private menuItemDetailId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MENU_ITEM_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->menuItemDetailId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonListEntity;

    iput-object v0, p0, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    .line 47
    iget-object v0, p0, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 28
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SECTION_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setCatId(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MENU_ITEM_DETAIL_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/biznessapps/layout/R$layout;->info_detail_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    const-string v0, "menu_item_detail.php?id=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->menuItemDetailId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/biznessapps/info_items/InfoDetailFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MENU_ITEM_DETAIL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->menuItemDetailId:Ljava/lang/String;

    .line 18
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseInfo(Ljava/lang/String;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    .line 41
    invoke-virtual {p0}, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MENU_ITEM_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->menuItemDetailId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuItemDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class public Lcom/biznessapps/coupons/QrCouponsListFragment;
.super Lcom/biznessapps/coupons/CouponsListFragment;
.source "QrCouponsListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/biznessapps/coupons/CouponsListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/biznessapps/coupons/QrCouponsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUPONS_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/coupons/QrCouponsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/coupons/QrCouponsListFragment;->items:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/biznessapps/coupons/QrCouponsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    const-string v0, "qrcoupons.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/coupons/QrCouponsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/coupons/QrCouponsListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected startCouponDetailActivity(Lcom/biznessapps/coupons/CouponEntity;)V
    .locals 6
    .param p1, "item"    # Lcom/biznessapps/coupons/CouponEntity;

    .prologue
    const/4 v5, 0x1

    .line 41
    invoke-virtual {p0}, Lcom/biznessapps/coupons/QrCouponsListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 42
    .local v0, "activity":Lcom/biznessapps/common/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "COUPON_DETAIL_FRAGMENT"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "COUPON_EXTRA"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    const-string v2, "TAB_UNIQUE_ID"

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 48
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "COUPON_DETAIL_FRAGMENT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v2, "QR_COUPON_TYPE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    const-string v2, "BG_URL_EXTRA"

    iget-object v3, p0, Lcom/biznessapps/coupons/QrCouponsListFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v0, v1, v5}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseCoupons(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 28
    .local v0, "parsedItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    invoke-virtual {p0, v0}, Lcom/biznessapps/coupons/QrCouponsListFragment;->doCouponsPrehandling(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/coupons/QrCouponsListFragment;->items:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lcom/biznessapps/coupons/QrCouponsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUPONS_LIST_PROPERTY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/coupons/QrCouponsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/coupons/QrCouponsListFragment;->items:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 30
    const/4 v1, 0x1

    return v1
.end method

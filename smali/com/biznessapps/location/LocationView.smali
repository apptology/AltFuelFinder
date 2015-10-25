.class public Lcom/biznessapps/location/LocationView;
.super Lcom/biznessapps/common/activities/CommonMapActivity;
.source "LocationView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonMapActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected defineMapItemClickAction(Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/biznessapps/location/LocationView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biznessapps/common/entities/MapEntity;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/biznessapps/common/entities/MapEntity;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/biznessapps/common/entities/AnalyticEntity;

    invoke-direct {v0}, Lcom/biznessapps/common/entities/AnalyticEntity;-><init>()V

    .line 36
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    .line 37
    .local v1, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {p0}, Lcom/biznessapps/location/LocationView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setContext(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getGaAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setAccountId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setAppId(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/biznessapps/location/LocationView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setTabId(Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/biznessapps/layout/R$layout;->location_layout:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/biznessapps/location/LocationView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "COUPON_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/coupons/CouponEntity;

    .line 26
    .local v0, "coupon":Lcom/biznessapps/coupons/CouponEntity;
    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponEntity;->getLocations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/biznessapps/location/LocationView;->addPins(Ljava/util/List;)V

    .line 27
    return-void
.end method

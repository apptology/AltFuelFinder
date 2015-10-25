.class public Lcom/biznessapps/fragments/single/TellFriendsFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "TellFriendsFragment.java"


# instance fields
.field private layout:Landroid/view/ViewGroup;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->tell_friend_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    .local v0, "tellButton":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    sget v1, Lcom/biznessapps/layout/R$string;->share:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 78
    new-instance v1, Lcom/biznessapps/fragments/single/TellFriendsFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment$1;-><init>(Lcom/biznessapps/fragments/single/TellFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v1, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 86
    iget-object v1, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->layout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TELL_FRIEND_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->bgUrl:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->bgUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    const-string v0, "tellfriend.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->initAdsWithAlpha()V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    sget v0, Lcom/biznessapps/layout/R$layout;->tell_friend_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->root:Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->initSettingsData()V

    .line 29
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->home_layout_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->layout:Landroid/view/ViewGroup;

    .line 30
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->initViews()V

    .line 31
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->loadData()V

    .line 32
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 33
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->openCustomDialogs()V

    .line 34
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->tabId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->getTellFriendImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->bgUrl:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TELL_FRIEND_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

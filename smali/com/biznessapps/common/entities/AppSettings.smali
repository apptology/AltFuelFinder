.class public Lcom/biznessapps/common/entities/AppSettings;
.super Ljava/lang/Object;
.source "AppSettings.java"

# interfaces
.implements Lcom/biznessapps/api/UiSettingsInterface;


# static fields
.field public static final BOTTOM_MENU_NAVIGATION:I = 0x3

.field private static final DEVICE_USER_ID:Ljava/lang/String; = "device_user_id"

.field public static final FADE_MODE:I = 0x2

.field public static final HOME_LAYOUT_LIST:I = 0x1

.field public static final HOME_LAYOUT_OLD:I = 0x0

.field public static final HOME_LAYOUT_TILES:I = 0x2

.field public static final KEN_BURNS_ANIMATION_MODE:I = 0x2

.field public static final LEFT_MENU_NAVIGATION:I = 0x0

.field public static final NO_ANIMATION_MODE:I = 0x0

.field public static final PARALLAX_ANIMATION_MODE:I = 0x1

.field public static final RIGHT_MENU_NAVIGATION:I = 0x2

.field public static final SLIDING_MODE:I = 0x1

.field public static final TOP_MENU_NAVIGATION:I = 0x1


# instance fields
.field private adsId:Ljava/lang/String;

.field private animationMode:I

.field private appId:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appStoreUrl:Ljava/lang/String;

.field private buttonBgColor:Ljava/lang/String;

.field private buttonTextColor:Ljava/lang/String;

.field private cols:I

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private defaultListBgColor:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceUserId:Ljava/lang/String;

.field private emailCollectInfo:Lcom/biznessapps/common/entities/EmailCollectInfo;

.field private evenRowColor:Ljava/lang/String;

.field private evenRowTextColor:Ljava/lang/String;

.field private facebookAppId:Ljava/lang/String;

.field private featureTextColor:Ljava/lang/String;

.field private gaAccountId:Ljava/lang/String;

.field private globalBgColor:Ljava/lang/String;

.field private globalHeaderUrl:Ljava/lang/String;

.field private hasCallButton:Z

.field private hasDirectionButton:Z

.field private hasTellFriendButton:Z

.field private headerAlignment:Ljava/lang/String;

.field private headerHeight:F

.field private headerSrc:Ljava/lang/String;

.field private headerTint:Ljava/lang/String;

.field private headerTintOpacity:F

.field private headerWidth:F

.field private homeLayoutType:I

.field private homeTabTextColor:I

.field private htmlStoreUrl:Ljava/lang/String;

.field private isActive:Z

.field private isAdmob:Z

.field private isMessageIconLeft:Z

.field private isMessageIconTop:Z

.field private isMessageIconUsed:Z

.field private isModernSlidingUsed:Z

.field private isMusicIconLeft:Z

.field private isMusicIconTop:Z

.field private isMusicIconUsed:Z

.field private isNormalHeader:Z

.field private isProtected:Z

.field private mailingListPrompt:Z

.field private mailingTab:Lcom/biznessapps/more/Tab;

.field private messageIconOpacity:I

.field private messateLinkedTab:Ljava/lang/String;

.field private moreButtonNavigation:Z

.field private moreIconUrl:Ljava/lang/String;

.field private moreTab:Lcom/biznessapps/more/Tab;

.field private moreTabBg:Ljava/lang/String;

.field private moreTabTabletBg:Ljava/lang/String;

.field private musicIconOpacity:I

.field private navTintOpacity:F

.field private navigBarColor:Ljava/lang/String;

.field private navigBarTextColor:Ljava/lang/String;

.field private navigBarTextShadowColor:Ljava/lang/String;

.field private navigationMenuType:I

.field private newsTabId:Ljava/lang/String;

.field private oddRowColor:Ljava/lang/String;

.field private oddRowTextColor:Ljava/lang/String;

.field private offlineCachingPrompt:Z

.field private playStoreUrl:Ljava/lang/String;

.field private protectedHeaderColor:Ljava/lang/String;

.field private pushingIp:Ljava/lang/String;

.field private rows:I

.field private rssIconUrl:Ljava/lang/String;

.field private sectionBarColor:Ljava/lang/String;

.field private sectionBarTextColor:Ljava/lang/String;

.field private serverTimezone:I

.field private shouldHideComments:Z

.field private showHomeTabText:Z

.field private showNewsFeed:Z

.field private showText:Z

.field private socialOnBoard:Z

.field private splashImage:Ljava/lang/String;

.field private tabFont:Ljava/lang/String;

.field private tabIcon:Ljava/lang/String;

.field private tabSrc:Ljava/lang/String;

.field private tabText:Ljava/lang/String;

.field private tabTint:Ljava/lang/String;

.field private tabTintOpacity:F

.field private useAds:Z

.field private useBlurEffect:Z

.field private useBlurEffectForHome:Z

.field private useBlurEffectForMessagesTab:Z

.field private useBlurEffectForMoreTab:Z

.field private useHomeOldBg:Z

.field private useTextColors:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/biznessapps/common/entities/AppSettings;->animationMode:I

    .line 60
    iput v0, p0, Lcom/biznessapps/common/entities/AppSettings;->homeLayoutType:I

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/biznessapps/common/entities/AppSettings;->navigationMenuType:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->showText:Z

    return-void
.end method

.method private getMainEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 918
    if-nez p1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-object v3

    .line 920
    :cond_1
    sget-object v4, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 921
    .local v4, "emailPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 922
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    .line 923
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 924
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 925
    .local v3, "emailAddress":Ljava/lang/String;
    goto :goto_0

    .line 922
    .end local v3    # "emailAddress":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private getPrefUserIdKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 855
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    .line 856
    .local v1, "cacher":Lcom/biznessapps/api/CachingManager;
    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "appCode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 859
    .local v2, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 860
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%s_%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "device_user_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 863
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getAdsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->adsId:Ljava/lang/String;

    return-object v0
.end method

.method public getAnimationMode()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->animationMode:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->appStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->buttonBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->buttonTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCols()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->cols:I

    return v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultListBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->globalBgColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->defaultListBgColor:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->defaultListBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 867
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 870
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->deviceId:Ljava/lang/String;

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 877
    iget-object v2, p0, Lcom/biznessapps/common/entities/AppSettings;->deviceUserId:Ljava/lang/String;

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/biznessapps/common/entities/AppSettings;->deviceUserId:Ljava/lang/String;

    .line 884
    :goto_0
    return-object v2

    .line 879
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/entities/AppSettings;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "deviceId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/biznessapps/common/entities/AppSettings;->getMainEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "email":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%s_%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/common/entities/AppSettings;->deviceUserId:Ljava/lang/String;

    .line 884
    iget-object v2, p0, Lcom/biznessapps/common/entities/AppSettings;->deviceUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEmailCollectInfo()Lcom/biznessapps/common/entities/EmailCollectInfo;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->emailCollectInfo:Lcom/biznessapps/common/entities/EmailCollectInfo;

    return-object v0
.end method

.method public getEvenRowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->evenRowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getEvenRowTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->evenRowTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->facebookAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->featureTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getGaAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->gaAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->globalBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalHeaderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->globalHeaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderAlignment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->headerAlignment:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderHeight()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->headerHeight:F

    return v0
.end method

.method public getHeaderSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->headerSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->headerTint:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTintOpacity()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->headerTintOpacity:F

    return v0
.end method

.method public getHeaderWidth()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->headerWidth:F

    return v0
.end method

.method public getHomeLayoutType()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->homeLayoutType:I

    return v0
.end method

.method public getHomeTabTextColor()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->homeTabTextColor:I

    return v0
.end method

.method public getHtmlStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->htmlStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMailingTab()Lcom/biznessapps/more/Tab;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->mailingTab:Lcom/biznessapps/more/Tab;

    return-object v0
.end method

.method public getMessageIconOpacity()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->messageIconOpacity:I

    return v0
.end method

.method public getMessateLinkedTab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->messateLinkedTab:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->moreIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreTab()Lcom/biznessapps/more/Tab;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->moreTab:Lcom/biznessapps/more/Tab;

    return-object v0
.end method

.method public getMoreTabBg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->moreTabBg:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreTabTabletBg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->moreTabTabletBg:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicIconOpacity()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->musicIconOpacity:I

    return v0
.end method

.method public getNavTintOpacity()F
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->navTintOpacity:F

    return v0
.end method

.method public getNavigBarColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->navigBarColor:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigBarTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->navigBarTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigBarTextShadowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->navigBarTextShadowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationMenuType()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->navigationMenuType:I

    return v0
.end method

.method public getNewsTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->newsTabId:Ljava/lang/String;

    return-object v0
.end method

.method public getOddRowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->oddRowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getOddRowTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->oddRowTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->playStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProtectedHeaderColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->protectedHeaderColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPushingIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->pushingIp:Ljava/lang/String;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->rows:I

    return v0
.end method

.method public getRssIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->rssIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionBarColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->sectionBarColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionBarTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->sectionBarTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimezone()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->serverTimezone:I

    return v0
.end method

.method public getSplashImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->splashImage:Ljava/lang/String;

    return-object v0
.end method

.method public getTabFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->tabFont:Ljava/lang/String;

    return-object v0
.end method

.method public getTabIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->tabIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTabSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->tabSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getTabText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->tabText:Ljava/lang/String;

    return-object v0
.end method

.method public getTabTint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->tabTint:Ljava/lang/String;

    return-object v0
.end method

.method public getTabTintOpacity()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/biznessapps/common/entities/AppSettings;->tabTintOpacity:F

    return v0
.end method

.method public getUseTextColors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->useTextColors:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getV6DeviceUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 891
    iget-object v2, p0, Lcom/biznessapps/common/entities/AppSettings;->userId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 892
    invoke-direct {p0, p1}, Lcom/biznessapps/common/entities/AppSettings;->getPrefUserIdKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 893
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 894
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    .line 895
    .local v0, "cacher":Lcom/biznessapps/api/CachingManager;
    invoke-virtual {v0, p1, v1}, Lcom/biznessapps/api/CachingManager;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/common/entities/AppSettings;->userId:Ljava/lang/String;

    .line 899
    .end local v0    # "cacher":Lcom/biznessapps/api/CachingManager;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/common/entities/AppSettings;->userId:Ljava/lang/String;

    return-object v2
.end method

.method public getValidURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 782
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, p1

    .line 794
    :goto_0
    return-object v1

    .line 785
    :cond_1
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 790
    :cond_2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move-object v1, p1

    .line 792
    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCallButton()Z
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->hasCallButton:Z

    return v0
.end method

.method public hasDirectionButton()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->hasDirectionButton:Z

    return v0
.end method

.method public hasMoreButtonNavigation()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->moreButtonNavigation:Z

    return v0
.end method

.method public hasTellFriendButton()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->hasTellFriendButton:Z

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isActive:Z

    return v0
.end method

.method public isAdmob()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isAdmob:Z

    return v0
.end method

.method public isMailingListPrompt()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->mailingListPrompt:Z

    return v0
.end method

.method public isMessageIconLeft()Z
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconLeft:Z

    return v0
.end method

.method public isMessageIconTop()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconTop:Z

    return v0
.end method

.method public isMessageIconUsed()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconUsed:Z

    return v0
.end method

.method public isModernSlidingUsed()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isModernSlidingUsed:Z

    return v0
.end method

.method public isMoreButtonNavigation()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->moreButtonNavigation:Z

    return v0
.end method

.method public isMusicIconLeft()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconLeft:Z

    return v0
.end method

.method public isMusicIconTop()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconTop:Z

    return v0
.end method

.method public isMusicIconUsed()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconUsed:Z

    return v0
.end method

.method public isNormalHeader()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isNormalHeader:Z

    return v0
.end method

.method public isOfflineCachingPrompt()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->offlineCachingPrompt:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->isProtected:Z

    return v0
.end method

.method public isShowHomeTabText()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->showHomeTabText:Z

    return v0
.end method

.method public isShowText()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->showText:Z

    return v0
.end method

.method public isSocialOnBoard()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->socialOnBoard:Z

    return v0
.end method

.method public isUseHomeOldBg()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->useHomeOldBg:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isActive:Z

    .line 147
    return-void
.end method

.method public setAdmob(Z)V
    .locals 0
    .param p1, "isAdmob"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isAdmob:Z

    .line 448
    return-void
.end method

.method public setAdsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "adsId"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->adsId:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setAnimationMode(I)V
    .locals 0
    .param p1, "animationMode"    # I

    .prologue
    .line 591
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->animationMode:I

    .line 592
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->appId:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->appName:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setAppStoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "appStoreUrl"    # Ljava/lang/String;

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/entities/AppSettings;->getValidURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->appStoreUrl:Ljava/lang/String;

    .line 803
    return-void
.end method

.method public setButtonBgColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonBgColor"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->buttonBgColor:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setButtonTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonTextColor"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->buttonTextColor:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setCols(I)V
    .locals 0
    .param p1, "cols"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->cols:I

    .line 171
    return-void
.end method

.method public setConsumerKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->consumerKey:Ljava/lang/String;

    .line 730
    return-void
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->consumerSecret:Ljava/lang/String;

    .line 738
    return-void
.end method

.method public setEmailCollectInfo(Lcom/biznessapps/common/entities/EmailCollectInfo;)V
    .locals 0
    .param p1, "emailCollectInfo"    # Lcom/biznessapps/common/entities/EmailCollectInfo;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->emailCollectInfo:Lcom/biznessapps/common/entities/EmailCollectInfo;

    .line 851
    return-void
.end method

.method public setEvenRowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "evenRowColor"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->evenRowColor:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setEvenRowTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "evenRowTextColor"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->evenRowTextColor:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setFacebookAppId(Ljava/lang/String;)V
    .locals 1
    .param p1, "facebookAppId"    # Ljava/lang/String;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->facebookAppId:Ljava/lang/String;

    .line 609
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->setFacebookAppId(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public setFeatureTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureTextColor"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->featureTextColor:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setGaAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "gaAccountId"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->gaAccountId:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public setGlobalBgColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "globalBgColor"    # Ljava/lang/String;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->globalBgColor:Ljava/lang/String;

    .line 771
    return-void
.end method

.method public setGlobalHeaderUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "globalHeaderUrl"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->globalHeaderUrl:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setHasCallButton(Z)V
    .locals 0
    .param p1, "hasCallButton"    # Z

    .prologue
    .line 745
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->hasCallButton:Z

    .line 746
    return-void
.end method

.method public setHasDirectionButton(Z)V
    .locals 0
    .param p1, "hasDirectionButton"    # Z

    .prologue
    .line 753
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->hasDirectionButton:Z

    .line 754
    return-void
.end method

.method public setHasTellFriendButton(Z)V
    .locals 0
    .param p1, "hasTellFriendButton"    # Z

    .prologue
    .line 761
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->hasTellFriendButton:Z

    .line 762
    return-void
.end method

.method public setHeaderAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerAlignment"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->headerAlignment:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setHeaderHeight(F)V
    .locals 0
    .param p1, "headerHeight"    # F

    .prologue
    .line 268
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->headerHeight:F

    .line 269
    return-void
.end method

.method public setHeaderSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerSrc"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->headerSrc:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setHeaderTint(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerTint"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->headerTint:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setHeaderTintOpacity(F)V
    .locals 0
    .param p1, "headerTintOpacity"    # F

    .prologue
    .line 300
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->headerTintOpacity:F

    .line 301
    return-void
.end method

.method public setHeaderWidth(F)V
    .locals 0
    .param p1, "headerWidth"    # F

    .prologue
    .line 260
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->headerWidth:F

    .line 261
    return-void
.end method

.method public setHomeLayoutType(I)V
    .locals 0
    .param p1, "homeLayoutType"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->homeLayoutType:I

    .line 308
    return-void
.end method

.method public setHomeTabTextColor(I)V
    .locals 0
    .param p1, "homeTabTextColor"    # I

    .prologue
    .line 483
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->homeTabTextColor:I

    .line 484
    return-void
.end method

.method public setHtmlStoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "htmlStoreUrl"    # Ljava/lang/String;

    .prologue
    .line 818
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/entities/AppSettings;->getValidURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->htmlStoreUrl:Ljava/lang/String;

    .line 819
    return-void
.end method

.method public setMailingListPrompt(Z)V
    .locals 0
    .param p1, "mailingListPrompt"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->mailingListPrompt:Z

    .line 476
    return-void
.end method

.method public setMailingTab(Lcom/biznessapps/more/Tab;)V
    .locals 0
    .param p1, "mailingTab"    # Lcom/biznessapps/more/Tab;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->mailingTab:Lcom/biznessapps/more/Tab;

    .line 508
    return-void
.end method

.method public setMessageIconLeft(Z)V
    .locals 0
    .param p1, "isMessageIconLeft"    # Z

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconLeft:Z

    .line 674
    return-void
.end method

.method public setMessageIconOpacity(I)V
    .locals 0
    .param p1, "messageIconOpacity"    # I

    .prologue
    .line 713
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->messageIconOpacity:I

    .line 714
    return-void
.end method

.method public setMessageIconTop(Z)V
    .locals 0
    .param p1, "isMessageIconTop"    # Z

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconTop:Z

    .line 690
    return-void
.end method

.method public setMessageIconUsed(Z)V
    .locals 0
    .param p1, "isMessageIconUsed"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconUsed:Z

    .line 666
    return-void
.end method

.method public setMessateLinkedTab(Ljava/lang/String;)V
    .locals 0
    .param p1, "messateLinkedTab"    # Ljava/lang/String;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->messateLinkedTab:Ljava/lang/String;

    .line 706
    return-void
.end method

.method public setModernSlidingUsed(Z)V
    .locals 0
    .param p1, "isModernSlidingUsed"    # Z

    .prologue
    .line 842
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isModernSlidingUsed:Z

    .line 843
    return-void
.end method

.method public setMoreButtonNavigation(Z)V
    .locals 0
    .param p1, "moreButtonNavigation"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->moreButtonNavigation:Z

    .line 584
    return-void
.end method

.method public setMoreIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "moreIconUrl"    # Ljava/lang/String;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->moreIconUrl:Ljava/lang/String;

    .line 576
    return-void
.end method

.method public setMoreTab(Lcom/biznessapps/more/Tab;)V
    .locals 0
    .param p1, "moreTab"    # Lcom/biznessapps/more/Tab;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->moreTab:Lcom/biznessapps/more/Tab;

    .line 779
    return-void
.end method

.method public setMoreTabBg(Ljava/lang/String;)V
    .locals 0
    .param p1, "moreTabBg"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->moreTabBg:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setMoreTabTabletBg(Ljava/lang/String;)V
    .locals 0
    .param p1, "moreTabTabletBg"    # Ljava/lang/String;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->moreTabTabletBg:Ljava/lang/String;

    .line 568
    return-void
.end method

.method public setMusicIconLeft(Z)V
    .locals 0
    .param p1, "isMusicIconLeft"    # Z

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconLeft:Z

    .line 682
    return-void
.end method

.method public setMusicIconOpacity(I)V
    .locals 0
    .param p1, "musicIconOpacity"    # I

    .prologue
    .line 721
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->musicIconOpacity:I

    .line 722
    return-void
.end method

.method public setMusicIconTop(Z)V
    .locals 0
    .param p1, "isMusicIconTop"    # Z

    .prologue
    .line 697
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconTop:Z

    .line 698
    return-void
.end method

.method public setMusicIconUsed(Z)V
    .locals 0
    .param p1, "isMusicIconUsed"    # Z

    .prologue
    .line 657
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconUsed:Z

    .line 658
    return-void
.end method

.method public setNavTintOpacity(F)V
    .locals 0
    .param p1, "navTintOpacity"    # F

    .prologue
    .line 325
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->navTintOpacity:F

    .line 326
    return-void
.end method

.method public setNavigBarColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigBarColor"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->navigBarColor:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setNavigBarTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigBarTextColor"    # Ljava/lang/String;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->navigBarTextColor:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public setNavigBarTextShadowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigBarTextShadowColor"    # Ljava/lang/String;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->navigBarTextShadowColor:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public setNavigationMenuType(I)V
    .locals 0
    .param p1, "navigationMenuType"    # I

    .prologue
    .line 599
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->navigationMenuType:I

    .line 600
    return-void
.end method

.method public setNewsTabId(Ljava/lang/String;)V
    .locals 1
    .param p1, "newsTabId"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->newsTabId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->newsTabId:Ljava/lang/String;

    .line 181
    :cond_0
    return-void
.end method

.method public setNormalHeader(Z)V
    .locals 0
    .param p1, "isNormalHeader"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isNormalHeader:Z

    .line 253
    return-void
.end method

.method public setOddRowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "oddRowColor"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->oddRowColor:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setOddRowTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "oddRowTextColor"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->oddRowTextColor:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setOfflineCachingPrompt(Z)V
    .locals 0
    .param p1, "offlineCachingPrompt"    # Z

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->offlineCachingPrompt:Z

    .line 500
    return-void
.end method

.method public setPlayStoreUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "playStoreUrl"    # Ljava/lang/String;

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/entities/AppSettings;->getValidURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/entities/AppSettings;->playStoreUrl:Ljava/lang/String;

    .line 811
    return-void
.end method

.method public setProtected(Z)V
    .locals 0
    .param p1, "isProtected"    # Z

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->isProtected:Z

    .line 642
    return-void
.end method

.method public setProtectedHeaderColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "protectedHeaderColor"    # Ljava/lang/String;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->protectedHeaderColor:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public setPushingIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushingIp"    # Ljava/lang/String;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->pushingIp:Ljava/lang/String;

    .line 618
    return-void
.end method

.method public setRows(I)V
    .locals 0
    .param p1, "rows"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->rows:I

    .line 163
    return-void
.end method

.method public setRssIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rssIconUrl"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->rssIconUrl:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setSectionBarColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionBarColor"    # Ljava/lang/String;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->sectionBarColor:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public setSectionBarTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionBarTextColor"    # Ljava/lang/String;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->sectionBarTextColor:Ljava/lang/String;

    .line 552
    return-void
.end method

.method public setServerTimezone(I)V
    .locals 0
    .param p1, "serverTimezone"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->serverTimezone:I

    .line 189
    return-void
.end method

.method public setShouldHideComments(Z)V
    .locals 0
    .param p1, "shouldHideComments"    # Z

    .prologue
    .line 834
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->shouldHideComments:Z

    .line 835
    return-void
.end method

.method public setShowHomeTabText(Z)V
    .locals 0
    .param p1, "showHomeTabText"    # Z

    .prologue
    .line 826
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->showHomeTabText:Z

    .line 827
    return-void
.end method

.method public setShowNewsFeed(Z)V
    .locals 0
    .param p1, "showNewsFeed"    # Z

    .prologue
    .line 649
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->showNewsFeed:Z

    .line 650
    return-void
.end method

.method public setShowText(Z)V
    .locals 0
    .param p1, "showText"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->showText:Z

    .line 634
    return-void
.end method

.method public setSocialOnBoard(Z)V
    .locals 0
    .param p1, "socialOnBoard"    # Z

    .prologue
    .line 491
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->socialOnBoard:Z

    .line 492
    return-void
.end method

.method public setSplashImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "splashImage"    # Ljava/lang/String;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->splashImage:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public setTabFont(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabFont"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->tabFont:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setTabIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabIcon"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->tabIcon:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setTabSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabSrc"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->tabSrc:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setTabText(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabText"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->tabText:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setTabTint(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabTint"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->tabTint:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setTabTintOpacity(F)V
    .locals 0
    .param p1, "tabTintOpacity"    # F

    .prologue
    .line 212
    iput p1, p0, Lcom/biznessapps/common/entities/AppSettings;->tabTintOpacity:F

    .line 213
    return-void
.end method

.method public setUseAds(Z)V
    .locals 0
    .param p1, "useAds"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->useAds:Z

    .line 155
    return-void
.end method

.method public setUseBlurEffect(Z)V
    .locals 0
    .param p1, "useBlurEffect"    # Z

    .prologue
    .line 938
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffect:Z

    .line 939
    return-void
.end method

.method public setUseBlurEffectForHome(Z)V
    .locals 0
    .param p1, "useBlurEffectForHome"    # Z

    .prologue
    .line 946
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffectForHome:Z

    .line 947
    return-void
.end method

.method public setUseBlurEffectForMessagesTab(Z)V
    .locals 0
    .param p1, "useBlurEffectForMessagesTab"    # Z

    .prologue
    .line 962
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffectForMessagesTab:Z

    .line 963
    return-void
.end method

.method public setUseBlurEffectForMoreTab(Z)V
    .locals 0
    .param p1, "useBlurEffectForMoreTab"    # Z

    .prologue
    .line 954
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffectForMoreTab:Z

    .line 955
    return-void
.end method

.method public setUseHomeOldBg(Z)V
    .locals 0
    .param p1, "useHomeOldBg"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/AppSettings;->useHomeOldBg:Z

    .line 245
    return-void
.end method

.method public setUseTextColors(Ljava/lang/String;)V
    .locals 0
    .param p1, "useTextColors"    # Ljava/lang/String;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/biznessapps/common/entities/AppSettings;->useTextColors:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public setV6DeviceUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 904
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    invoke-direct {p0, p1}, Lcom/biznessapps/common/entities/AppSettings;->getPrefUserIdKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 909
    iput-object p2, p0, Lcom/biznessapps/common/entities/AppSettings;->userId:Ljava/lang/String;

    .line 911
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    .line 912
    .local v0, "cacher":Lcom/biznessapps/api/CachingManager;
    invoke-virtual {v0, p1, p2, v1}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldHideComments()Z
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->shouldHideComments:Z

    return v0
.end method

.method public showNewsFeed()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->showNewsFeed:Z

    return v0
.end method

.method public useAds()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->useAds:Z

    return v0
.end method

.method public useBlurEffect()Z
    .locals 1

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffect:Z

    return v0
.end method

.method public useBlurEffectForHome()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffectForHome:Z

    return v0
.end method

.method public useBlurEffectForMessagesTab()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffectForMessagesTab:Z

    return v0
.end method

.method public useBlurEffectForMoreTab()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffectForMoreTab:Z

    return v0
.end method

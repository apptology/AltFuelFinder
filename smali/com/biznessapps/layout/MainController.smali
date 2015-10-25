.class public Lcom/biznessapps/layout/MainController;
.super Landroid/app/Activity;
.source "MainController.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# instance fields
.field private loadingTimeOffset:J

.field private needMessagesTab:Z

.field private postDevTokenResponseObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/layout/MainController;->needMessagesTab:Z

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->checkAndLoadReseller(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/more/Tab;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # Lcom/biznessapps/more/Tab;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/layout/MainController;->setTabProperty(Lcom/biznessapps/more/Tab;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->openSpecialTab(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/biznessapps/layout/MainController;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/biznessapps/layout/MainController;->postDevTokenResponseObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/layout/MainController;)Lcom/biznessapps/player/PlayerServiceAccessor;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->postDevToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->loadMusicData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/layout/MainController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/biznessapps/layout/MainController;->needMessagesTab:Z

    return v0
.end method

.method static synthetic access$500(Lcom/biznessapps/layout/MainController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->showNotification(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/layout/MainController;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->initExceptionHandling()V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/layout/MainController;)J
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/biznessapps/layout/MainController;->loadingTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/biznessapps/layout/MainController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/biznessapps/layout/MainController;->loadingTimeOffset:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/biznessapps/layout/MainController;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->registerPushNotifications()V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/messages/MessageEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->openLinkedTab(Lcom/biznessapps/messages/MessageEntity;)V

    return-void
.end method

.method private checkAndLoadReseller(Ljava/lang/String;)Z
    .locals 13
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "IS_FROM_RESELLER"

    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 299
    .local v4, "isFromReseller":Z
    const/4 v5, 0x0

    .line 301
    .local v5, "isResellerApp":Z
    if-nez v4, :cond_1

    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, "info":Lcom/biznessapps/reseller/ResellerInfo;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    .line 306
    .local v1, "cacher":Lcom/biznessapps/api/CachingManager;
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "RESELLER_ID_KEY"

    invoke-virtual {v1, v11, v12}, Lcom/biznessapps/api/CachingManager;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "resellerId":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 308
    const-string v11, "reseller.php?id=%s"

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v6, v12, v10

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, "resellerUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "resellerInfo":Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/utils/json/JsonParser;->parseResellerInfo(Ljava/lang/String;)Lcom/biznessapps/reseller/ResellerInfo;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Lcom/biznessapps/reseller/ResellerInfo;->getApps()Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    move v5, v9

    .line 314
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    .end local v7    # "resellerInfo":Ljava/lang/String;
    .end local v8    # "resellerUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 315
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/biznessapps/common/entities/AppSettings;->setActive(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "RESELLER_ID_KEY"

    invoke-virtual {v1, v9, v6, v10}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "RESELLER_DASHBOARD_FRAGMENT"

    invoke-static {v10}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "TAB_FRAGMENT"

    const-string v10, "RESELLER_DASHBOARD_FRAGMENT"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v9, "RESELLER_DATA"

    invoke-virtual {v3, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v3}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    .line 324
    .end local v1    # "cacher":Lcom/biznessapps/api/CachingManager;
    .end local v2    # "info":Lcom/biznessapps/reseller/ResellerInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "resellerId":Ljava/lang/String;
    :cond_1
    return v5

    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    .restart local v1    # "cacher":Lcom/biznessapps/api/CachingManager;
    .restart local v2    # "info":Lcom/biznessapps/reseller/ResellerInfo;
    .restart local v6    # "resellerId":Ljava/lang/String;
    .restart local v7    # "resellerInfo":Ljava/lang/String;
    .restart local v8    # "resellerUrl":Ljava/lang/String;
    :cond_2
    move v5, v10

    .line 312
    goto :goto_0
.end method

.method private clearOldState()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->clear()V

    .line 104
    invoke-static {}, Lcom/biznessapps/api/navigation/NavigationManager;->clear()V

    .line 105
    return-void
.end method

.method private defineDeviceParams()V
    .locals 5

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 420
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 421
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 423
    .local v2, "height":I
    if-ge v3, v2, :cond_0

    move v0, v3

    .line 424
    .local v0, "deviceWidth":I
    :goto_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/biznessapps/api/AppCore;->setDeviceWidth(I)V

    .line 425
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/biznessapps/api/AppCore;->setDeviceHeight(I)V

    .line 426
    return-void

    .end local v0    # "deviceWidth":I
    :cond_0
    move v0, v2

    .line 423
    goto :goto_0
.end method

.method private defineUrlRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "defaultApp"    # Ljava/lang/String;
    .param p2, "comingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 118
    move-object v4, p2

    .line 120
    .local v4, "url":Ljava/lang/String;
    const-string v5, "biznessapps"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "previewapp11"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 121
    const-string v5, "ba.application.settings"

    invoke-virtual {p0, v5, v10}, Lcom/biznessapps/layout/MainController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 122
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "is_first_time"

    invoke-interface {v3, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 123
    .local v2, "isFirstTime":Z
    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "is_first_time"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&firstRun=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "first time loading"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v2    # "isFirstTime":Z
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 131
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/entities/AppSettings;->getDeviceUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "deviceUserId":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "&%s=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "device_user_id"

    aput-object v9, v8, v10

    aput-object v1, v8, v11

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    :cond_1
    return-object v4
.end method

.method private getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicPlayer;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/MusicPlayer;->init(Landroid/content/Context;)V

    .line 374
    :cond_0
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicPlayer;->getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    return-object v0
.end method

.method private initExceptionHandling()V
    .locals 6

    .prologue
    .line 447
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v3

    .line 448
    .local v3, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 449
    .local v0, "instance":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppSettings;->getGaAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    .line 451
    .local v2, "myTracker":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 457
    .local v1, "myHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 458
    return-void
.end method

.method private initNewState()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AppCore;->init(Landroid/content/Context;)V

    .line 111
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    .line 112
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    .line 113
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/MusicPlayer;->init(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->defineDeviceParams()V

    .line 115
    return-void
.end method

.method private loadApp()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 139
    sget v9, Lcom/biznessapps/layout/R$string;->code_name:I

    invoke-virtual {p0, v9}, Lcom/biznessapps/layout/MainController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "defaultApp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "APPCODE"

    invoke-static {v9, v10, v5}, Lcom/biznessapps/utils/ViewUtils;->getExtraKey(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "appCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "IS_LOGED_WITH_PROTECTION"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 142
    .local v6, "isLogged":Z
    :goto_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    .line 144
    .local v2, "cacher":Lcom/biznessapps/api/CachingManager;
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "HOST"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/biznessapps/utils/ViewUtils;->getExtraKey(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "host":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/biznessapps/api/UrlWrapper;->setPredefinedHost(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v9

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "STREAM_MODE"

    invoke-virtual {v10, v11, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/biznessapps/api/AppCore;->setStreamMode(Z)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/biznessapps/layout/MainController;->loadingTimeOffset:J

    .line 150
    const-string v9, "biznessapps"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "previewapp11"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 151
    invoke-virtual {v2, v4}, Lcom/biznessapps/api/CachingManager;->setAppCode(Ljava/lang/String;)V

    .line 153
    :cond_0
    const-string v10, "init.php?app_code=%s"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    if-eqz v4, :cond_2

    move-object v9, v4

    :goto_1
    aput-object v9, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "baseUrl":Ljava/lang/String;
    invoke-direct {p0, v5, v7}, Lcom/biznessapps/layout/MainController;->defineUrlRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Lcom/biznessapps/layout/MainController$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/biznessapps/layout/MainController$1;-><init>(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/api/CachingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/biznessapps/api/DataSource;->getData(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V

    .line 295
    return-void

    .end local v0    # "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    .end local v2    # "cacher":Lcom/biznessapps/api/CachingManager;
    .end local v3    # "url":Ljava/lang/String;
    .end local v6    # "isLogged":Z
    .end local v7    # "baseUrl":Ljava/lang/String;
    .end local v8    # "host":Ljava/lang/String;
    :cond_1
    move v6, v1

    .line 141
    goto :goto_0

    .restart local v2    # "cacher":Lcom/biznessapps/api/CachingManager;
    .restart local v6    # "isLogged":Z
    .restart local v8    # "host":Ljava/lang/String;
    :cond_2
    move-object v9, v5

    .line 153
    goto :goto_1
.end method

.method private loadMusicData(Ljava/lang/String;)V
    .locals 8
    .param p1, "musicTabId"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 329
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/player/PlayerServiceAccessor;->clearQueue()V

    .line 330
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconUsed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "appCode":Ljava/lang/String;
    const-string v4, "music_list.php?app_code=%s&tab_id=%s&platform=android"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "musicDataUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "dataToParse":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/json/JsonParser;->parseMusicList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 338
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 339
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/biznessapps/api/CachingManager;->setMusicTabId(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MUSIC_PLAYLIST_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 342
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v4

    invoke-static {v2}, Lcom/biznessapps/music/MusicListFragment;->extractUrlsFromData(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/player/PlayerServiceAccessor;->addUrlsQueue(Ljava/util/List;)V

    .line 345
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/layout/MainController$2;

    invoke-direct {v5, p0}, Lcom/biznessapps/layout/MainController$2;-><init>(Lcom/biznessapps/layout/MainController;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    .end local v0    # "appCode":Ljava/lang/String;
    .end local v1    # "dataToParse":Ljava/lang/String;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    .end local v3    # "musicDataUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private openLinkedTab(Lcom/biznessapps/messages/MessageEntity;)V
    .locals 8
    .param p1, "richNotification"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 461
    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-static {v4}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "url":Ljava/lang/String;
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    :cond_0
    const-string v3, "URL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0, v1}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    .line 479
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getTabId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getTabId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getDetailId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/biznessapps/utils/ApiUtils;->openTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 475
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, "homeScreenIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private openSpecialTab(Ljava/lang/String;)V
    .locals 5
    .param p1, "viewController"    # Ljava/lang/String;

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ba.application.settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/MainController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 440
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "TAB_LABEL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAB_LABEL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v2, "TAB_SPECIAL_ID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v2, "TAB_FRAGMENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0, v0}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    .line 444
    return-void
.end method

.method private postDevToken(Ljava/lang/String;)V
    .locals 10
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 388
    .local v0, "currentLocation":Landroid/location/Location;
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 389
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "app_code"

    invoke-interface {v3, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v7, "latitude"

    if-nez v0, :cond_1

    const-string v6, "0"

    :goto_0
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v7, "longitude"

    if-nez v0, :cond_2

    const-string v6, "0"

    :goto_1
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v6, "existing_loyalties"

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/loyalty/LoyaltyHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/loyalty/LoyaltyHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/loyalty/LoyaltyHandler;->getOldLoyaltyDataTillV5()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v6, "device"

    const-string v7, "android"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/biznessapps/common/entities/AppSettings;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "deviceId":Ljava/lang/String;
    const-string v6, "devToken"

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v6, "version"

    const-string v7, "1"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :try_start_0
    const-string v6, "apns.php"

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Lcom/biznessapps/api/AppHttpUtils;->executePostRequestSync(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "response":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 404
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/biznessapps/layout/MainController;->postDevTokenResponseObj:Lorg/json/JSONObject;

    .line 405
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 406
    .local v5, "resultArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, p0, Lcom/biznessapps/layout/MainController;->postDevTokenResponseObj:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "resultArray":Lorg/json/JSONArray;
    :cond_0
    :goto_2
    return-void

    .line 390
    .end local v1    # "deviceId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 408
    .restart local v1    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private registerPushNotifications()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 381
    const-string v1, "sender"

    const-string v2, "641133715768"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lcom/biznessapps/layout/MainController;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 383
    return-void
.end method

.method private setTabProperty(Lcom/biznessapps/more/Tab;Ljava/lang/String;)V
    .locals 4
    .param p1, "tab"    # Lcom/biznessapps/more/Tab;
    .param p2, "viewController"    # Ljava/lang/String;

    .prologue
    .line 429
    const-string v2, "ba.application.settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/MainController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 430
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 431
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 434
    return-void
.end method

.method private showNotification(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 359
    move-object v0, p0

    .line 360
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 361
    new-instance v1, Lcom/biznessapps/layout/MainController$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/biznessapps/layout/MainController$3;-><init>(Lcom/biznessapps/layout/MainController;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 368
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "OPEN_MESSAGE_TAB_PROPERTY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biznessapps/layout/MainController;->needMessagesTab:Z

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/biznessapps/layout/MainController;->requestWindowFeature(I)Z

    .line 81
    sget v1, Lcom/biznessapps/layout/R$layout;->main:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/layout/MainController;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->clearOldState()V

    .line 83
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->initNewState()V

    .line 84
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->loadApp()V

    .line 85
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore;->initLocationFinder(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/components/LocationFinder;->startSearching()V

    .line 89
    const-string v1, "AAa4900c83df2f253a4d009aee8be99c6717d4cbc4"

    invoke-static {v1}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/biznessapps/localization/LanguageHelper;->getUsedLanguageCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "langCode":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/localization/StringsSource;->update(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.class public Lcom/biznessapps/api/AppCore;
.super Ljava/lang/Object;
.source "AppCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/api/AppCore$ShareCallBackMeta;,
        Lcom/biznessapps/api/AppCore$AppCoreHolder;
    }
.end annotation


# static fields
.field private static final PREFS_KEY_APP_SHARE_TEXT:Ljava/lang/String; = "app_share_text"


# instance fields
.field private appSettings:Lcom/biznessapps/common/entities/AppSettings;

.field private appSharingText:Ljava/lang/String;

.field private bearerAccessToken:Ljava/lang/String;

.field private cachingManager:Lcom/biznessapps/api/CachingManager;

.field private context:Landroid/content/Context;

.field private deviceHeight:I

.field private deviceWidth:I

.field private imageFetcherAccessor:Lcom/biznessapps/api/ImageFetcherAccessor;

.field private isPhoneDisabled:Z

.field private isTablet:Z

.field private locationFinder:Lcom/biznessapps/common/components/LocationFinder;

.field private newImageManager:Lcom/biznessapps/images/NewImageManager;

.field private rootPrefs:Landroid/content/SharedPreferences;

.field private rootPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private settings:Lcom/biznessapps/api/UiSettings;

.field private useStreamMode:Z

.field warpAppStoreCallBack:Lcom/biznessapps/api/AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field warpPlayStoreCallBack:Lcom/biznessapps/api/AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field warphtml5CallBack:Lcom/biznessapps/api/AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private youtubeAccessToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/biznessapps/api/CachingManager;

    invoke-direct {v0}, Lcom/biznessapps/api/CachingManager;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->cachingManager:Lcom/biznessapps/api/CachingManager;

    .line 36
    new-instance v0, Lcom/biznessapps/images/NewImageManager;

    invoke-direct {v0}, Lcom/biznessapps/images/NewImageManager;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->newImageManager:Lcom/biznessapps/images/NewImageManager;

    .line 293
    new-instance v0, Lcom/biznessapps/api/AppCore$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/api/AppCore$1;-><init>(Lcom/biznessapps/api/AppCore;)V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->warpAppStoreCallBack:Lcom/biznessapps/api/AsyncCallback;

    .line 328
    new-instance v0, Lcom/biznessapps/api/AppCore$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/api/AppCore$2;-><init>(Lcom/biznessapps/api/AppCore;)V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->warpPlayStoreCallBack:Lcom/biznessapps/api/AsyncCallback;

    .line 364
    new-instance v0, Lcom/biznessapps/api/AppCore$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/api/AppCore$3;-><init>(Lcom/biznessapps/api/AppCore;)V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->warphtml5CallBack:Lcom/biznessapps/api/AsyncCallback;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/api/AppCore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/api/AppCore$1;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/biznessapps/api/AppCore;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/api/AppCore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/api/AppCore;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/api/AppCore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/api/AppCore;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->appSharingText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$384(Lcom/biznessapps/api/AppCore;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/api/AppCore;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSharingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->appSharingText:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/biznessapps/api/AppCore;
    .locals 1

    .prologue
    .line 72
    # getter for: Lcom/biznessapps/api/AppCore$AppCoreHolder;->instance:Lcom/biznessapps/api/AppCore;
    invoke-static {}, Lcom/biznessapps/api/AppCore$AppCoreHolder;->access$100()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canUseOfflineMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    const-string v2, "ba.application.settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "OFFLINE_CACHING_KEY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    .line 158
    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->settings:Lcom/biznessapps/api/UiSettings;

    .line 159
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->cachingManager:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->clearCache()V

    .line 160
    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getAppSettings()Lcom/biznessapps/common/entities/AppSettings;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/biznessapps/common/entities/AppSettings;

    invoke-direct {v0}, Lcom/biznessapps/common/entities/AppSettings;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    return-object v0
.end method

.method public getAppSharingText(Landroid/content/Context;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 259
    iget-object v4, p0, Lcom/biznessapps/api/AppCore;->appSharingText:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/biznessapps/api/AppCore;->appSharingText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 260
    iget-object v4, p0, Lcom/biznessapps/api/AppCore;->appSharingText:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/biznessapps/api/AsyncCallback;->onResult(Ljava/lang/Object;)V

    .line 286
    :cond_0
    :goto_1
    return-void

    .line 257
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 264
    :cond_2
    const-string v4, ""

    iput-object v4, p0, Lcom/biznessapps/api/AppCore;->appSharingText:Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getAppStoreUrl()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "appStoreUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getPlayStoreUrl()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "playStoreUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getHtmlStoreUrl()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "html5StoreUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    iget-object v4, p0, Lcom/biznessapps/api/AppCore;->warpAppStoreCallBack:Lcom/biznessapps/api/AsyncCallback;

    new-instance v5, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;

    invoke-direct {v5, p0, p2, v0}, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;-><init>(Lcom/biznessapps/api/AppCore;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/AsyncCallback;->setMeta(Ljava/lang/Object;)V

    .line 272
    invoke-static {p1}, Lcom/biznessapps/common/BitlyManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/BitlyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/api/AppCore;->warpAppStoreCallBack:Lcom/biznessapps/api/AsyncCallback;

    invoke-virtual {v4, v0, v5}, Lcom/biznessapps/common/BitlyManager;->getShortURL(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)Z

    move-result v3

    .line 283
    .local v3, "result":Z
    :goto_2
    if-nez v3, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->something_went_wrong:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 274
    .end local v3    # "result":Z
    :cond_3
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 275
    iget-object v4, p0, Lcom/biznessapps/api/AppCore;->warpPlayStoreCallBack:Lcom/biznessapps/api/AsyncCallback;

    new-instance v5, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;

    invoke-direct {v5, p0, p2, v2}, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;-><init>(Lcom/biznessapps/api/AppCore;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/AsyncCallback;->setMeta(Ljava/lang/Object;)V

    .line 276
    invoke-static {p1}, Lcom/biznessapps/common/BitlyManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/BitlyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/api/AppCore;->warpPlayStoreCallBack:Lcom/biznessapps/api/AsyncCallback;

    invoke-virtual {v4, v2, v5}, Lcom/biznessapps/common/BitlyManager;->getShortURL(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)Z

    move-result v3

    .restart local v3    # "result":Z
    goto :goto_2

    .line 278
    .end local v3    # "result":Z
    :cond_4
    iget-object v4, p0, Lcom/biznessapps/api/AppCore;->warphtml5CallBack:Lcom/biznessapps/api/AsyncCallback;

    new-instance v5, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;

    invoke-direct {v5, p0, p2, v1}, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;-><init>(Lcom/biznessapps/api/AppCore;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/AsyncCallback;->setMeta(Ljava/lang/Object;)V

    .line 279
    invoke-static {p1}, Lcom/biznessapps/common/BitlyManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/BitlyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/api/AppCore;->warphtml5CallBack:Lcom/biznessapps/api/AsyncCallback;

    invoke-virtual {v4, v1, v5}, Lcom/biznessapps/common/BitlyManager;->getShortURL(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)Z

    move-result v3

    .restart local v3    # "result":Z
    goto :goto_2
.end method

.method public getAppUiSettings()Lcom/biznessapps/api/UiSettings;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->settings:Lcom/biznessapps/api/UiSettings;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/biznessapps/api/UiSettings;

    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-direct {v0, v1}, Lcom/biznessapps/api/UiSettings;-><init>(Lcom/biznessapps/api/UiSettingsInterface;)V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->settings:Lcom/biznessapps/api/UiSettings;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method public getBearerAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->bearerAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCachingManager()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->cachingManager:Lcom/biznessapps/api/CachingManager;

    return-object v0
.end method

.method public getDeviceHeight()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/biznessapps/api/AppCore;->deviceHeight:I

    return v0
.end method

.method public getDeviceWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/biznessapps/api/AppCore;->deviceWidth:I

    return v0
.end method

.method public getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->imageFetcherAccessor:Lcom/biznessapps/api/ImageFetcherAccessor;

    return-object v0
.end method

.method public getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->locationFinder:Lcom/biznessapps/common/components/LocationFinder;

    return-object v0
.end method

.method public getMoreTabUISettings()Lcom/biznessapps/api/UiSettings;
    .locals 3

    .prologue
    .line 184
    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getMoreTab()Lcom/biznessapps/more/Tab;

    move-result-object v0

    .line 185
    .local v0, "moreTab":Lcom/biznessapps/more/Tab;
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore;->getAppUiSettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v1

    .line 186
    .local v1, "settings":Lcom/biznessapps/api/UiSettings;
    invoke-virtual {v1, v0}, Lcom/biznessapps/api/UiSettings;->updateUiSettings(Lcom/biznessapps/more/Tab;)V

    .line 187
    return-object v1
.end method

.method public getNewImageManager()Lcom/biznessapps/images/NewImageManager;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->newImageManager:Lcom/biznessapps/images/NewImageManager;

    return-object v0
.end method

.method public getUiSettings(Ljava/lang/String;)Lcom/biznessapps/api/UiSettings;
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Lcom/biznessapps/api/UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-direct {v0, v2}, Lcom/biznessapps/api/UiSettings;-><init>(Lcom/biznessapps/api/UiSettingsInterface;)V

    .line 173
    .local v0, "settings":Lcom/biznessapps/api/UiSettings;
    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->cachingManager:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v2, p1}, Lcom/biznessapps/api/CachingManager;->findTab(Ljava/lang/String;)Lcom/biznessapps/more/Tab;

    move-result-object v1

    .line 174
    .local v1, "usedTab":Lcom/biznessapps/more/Tab;
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v0, v1}, Lcom/biznessapps/api/UiSettings;->updateUiSettings(Lcom/biznessapps/more/Tab;)V

    .line 178
    :cond_0
    invoke-virtual {v0, v1}, Lcom/biznessapps/api/UiSettings;->updateOtherSettings(Lcom/biznessapps/api/UiSettingsInterface;)V

    .line 180
    :cond_1
    return-object v0
.end method

.method public getYoutubeAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->youtubeAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 129
    iput-object p1, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    .line 131
    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    const-string v3, "ba.application.settings"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/api/AppCore;->rootPrefs:Landroid/content/SharedPreferences;

    .line 132
    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->rootPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/api/AppCore;->rootPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->imageFetcherAccessor:Lcom/biznessapps/api/ImageFetcherAccessor;

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Lcom/biznessapps/api/ImageFetcherAccessor;

    iget-object v3, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/biznessapps/api/ImageFetcherAccessor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/biznessapps/api/AppCore;->imageFetcherAccessor:Lcom/biznessapps/api/ImageFetcherAccessor;

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/api/AppCore;->initLocationFinder(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$bool;->isTablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/biznessapps/api/AppCore;->isTablet:Z

    .line 139
    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 140
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/biznessapps/api/AppCore;->isPhoneDisabled:Z

    .line 141
    invoke-static {p1}, Lcom/biznessapps/storage/StorageKeeper;->init(Landroid/content/Context;)V

    .line 143
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/biznessapps/common/style/BZStyleManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/style/BZStyleManager;->initStyles()V

    .line 144
    return-void
.end method

.method public initLocationFinder(Landroid/content/Context;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->locationFinder:Lcom/biznessapps/common/components/LocationFinder;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/biznessapps/common/components/LocationFinder;

    invoke-direct {v0, p1}, Lcom/biznessapps/common/components/LocationFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->locationFinder:Lcom/biznessapps/common/components/LocationFinder;

    .line 150
    :cond_0
    return-void
.end method

.method public isAnyConnectionAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v3, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 243
    .local v0, "connMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 244
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->locationFinder:Lcom/biznessapps/common/components/LocationFinder;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneDisabled()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/biznessapps/api/AppCore;->isPhoneDisabled:Z

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/biznessapps/api/AppCore;->isTablet:Z

    return v0
.end method

.method public setAppSettings(Lcom/biznessapps/common/entities/AppSettings;)V
    .locals 2
    .param p1, "appSettings"    # Lcom/biznessapps/common/entities/AppSettings;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    iput-object p1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    .line 124
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AppSettings;->setActive(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public setBearerAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "bearerAccessToken"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/biznessapps/api/AppCore;->bearerAccessToken:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setDeviceHeight(I)V
    .locals 0
    .param p1, "deviceHeight"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/biznessapps/api/AppCore;->deviceHeight:I

    .line 93
    return-void
.end method

.method public setDeviceWidth(I)V
    .locals 0
    .param p1, "deviceWidth"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/biznessapps/api/AppCore;->deviceWidth:I

    .line 85
    return-void
.end method

.method public setStreamMode(Z)V
    .locals 0
    .param p1, "useStreamMode"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/biznessapps/api/AppCore;->useStreamMode:Z

    .line 204
    return-void
.end method

.method public setUseOfflineMode(Z)V
    .locals 4
    .param p1, "useOfflineMode"    # Z

    .prologue
    .line 229
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;

    const-string v2, "ba.application.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "OFFLINE_CACHING_KEY"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method

.method public setYoutubeAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "youtubeAccessToken"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/biznessapps/api/AppCore;->youtubeAccessToken:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public updateAppSharingText()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->rootPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "app_share_text"

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSharingText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->rootPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    return-void
.end method

.method public useStreamMode()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/biznessapps/api/AppCore;->useStreamMode:Z

    return v0
.end method

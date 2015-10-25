.class public Lcom/biznessapps/common/fragments/CommonFragment;
.super Landroid/support/v4/app/Fragment;
.source "CommonFragment.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;
    }
.end annotation


# instance fields
.field protected bgUrl:Ljava/lang/String;

.field protected bitmapUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private fragmentName:Ljava/lang/String;

.field protected hasResultError:Z

.field private imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field protected itemId:Ljava/lang/String;

.field protected rightNavigationButton:Landroid/widget/Button;

.field protected root:Landroid/view/ViewGroup;

.field protected sectionId:Ljava/lang/String;

.field protected settings:Lcom/biznessapps/api/UiSettings;

.field protected tabId:Ljava/lang/String;

.field protected titleBarRoot:Landroid/view/ViewGroup;

.field protected titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 429
    return-void
.end method


# virtual methods
.method protected addOffsetIfNeeded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const-string v0, ""

    return-object v0
.end method

.method public cacher()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 253
    const-string v1, "BG_URL_EXTRA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "bgUrl":Ljava/lang/String;
    return-object v0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Lcom/biznessapps/common/entities/AnalyticEntity;

    invoke-direct {v0}, Lcom/biznessapps/common/entities/AnalyticEntity;-><init>()V

    .line 214
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    .line 215
    .local v1, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setContext(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getGaAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setAccountId(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setAppId(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setTabId(Ljava/lang/String;)V

    .line 219
    return-object v0
.end method

.method public getAppCore()Lcom/biznessapps/api/AppCore;
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getBitmapDownloader()Lcom/biznessapps/images/BitmapDownloader;
    .locals 1

    .prologue
    .line 512
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getNewImageManager()Lcom/biznessapps/images/NewImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/images/NewImageManager;->getBitmapDownloader()Lcom/biznessapps/images/BitmapDownloader;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->fragmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    return-object v0
.end method

.method protected getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    if-nez v0, :cond_0

    .line 306
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method protected getNewImageManager()Lcom/biznessapps/images/NewImageManager;
    .locals 1

    .prologue
    .line 508
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getNewImageManager()Lcom/biznessapps/images/NewImageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;
    .locals 2

    .prologue
    .line 516
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicPlayer;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/MusicPlayer;->init(Landroid/content/Context;)V

    .line 519
    :cond_0
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicPlayer;->getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    const-string v0, ""

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getViewsRef()Ljava/util/List;
    .locals 1
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
    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    return-object v0
.end method

.method protected handleInBackground()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method protected handleNoDataEvent(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 504
    invoke-static {p1}, Lcom/biznessapps/utils/ViewUtils;->showNoDataToast(Landroid/app/Activity;)V

    .line 505
    return-void
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method protected initAds()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->root:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 154
    return-void
.end method

.method protected initAdsWithAlpha()V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->root:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    .line 158
    return-void
.end method

.method protected initSettingsData()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->tabId:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AppCore;->getUiSettings(Ljava/lang/String;)Lcom/biznessapps/api/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->settings:Lcom/biznessapps/api/UiSettings;

    .line 204
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BG_URL_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->bgUrl:Ljava/lang/String;

    .line 205
    return-void
.end method

.method protected initTitleBar()V
    .locals 6

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->hasTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->titleBarRoot:Landroid/view/ViewGroup;

    .line 142
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->titleBarRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tab_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->titleTextView:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->titleBarRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;Lcom/biznessapps/api/UiSettings;)V

    .line 148
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZStyleManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonFragment;->titleBarRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/common/fragments/CommonFragment;->titleTextView:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/ViewGroup;[Landroid/view/View;)V

    .line 150
    :cond_0
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v0}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 313
    return-void
.end method

.method protected loadBgUrl()V
    .locals 7

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewForBg()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->bgUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 226
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewForBg()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/common/fragments/CommonFragment$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/common/fragments/CommonFragment$1;-><init>(Lcom/biznessapps/common/fragments/CommonFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/biznessapps/common/fragments/CommonFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual/range {v0 .. v6}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;ILcom/biznessapps/api/UiSettings;)V

    .line 236
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewForBg()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    goto :goto_0
.end method

.method protected loadData()V
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 318
    .local v0, "holdActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/fragments/CommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 320
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->canUseCachedData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewsRef()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;-><init>(Lcom/biznessapps/common/fragments/CommonFragment;Landroid/app/Activity;Ljava/util/List;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected loadDataFromServer()V
    .locals 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 344
    .local v0, "holdActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/fragments/CommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 346
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewsRef()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;-><init>(Lcom/biznessapps/common/fragments/CommonFragment;Landroid/app/Activity;Ljava/util/List;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 348
    :cond_0
    return-void
.end method

.method protected loadPostData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 331
    .local v0, "holdActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/fragments/CommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 333
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->canUseCachedData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    new-instance v1, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewsRef()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;-><init>(Lcom/biznessapps/common/fragments/CommonFragment;Landroid/app/Activity;Ljava/util/List;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Map;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 105
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 109
    :cond_0
    return-void
.end method

.method protected onBackgroundLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewForBg()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->initAds()V

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 174
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AppCore;->init(Landroid/content/Context;)V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 178
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->root:Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->initSettingsData()V

    .line 182
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->initAds()V

    .line 183
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->initTitleBar()V

    .line 185
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->right_navigation_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->rightNavigationButton:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->rightNavigationButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->rightNavigationButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 191
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->openCustomDialogs()V

    .line 192
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onError(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 420
    invoke-static {p1}, Lcom/biznessapps/utils/ViewUtils;->showNetwortErrorToast(Landroid/app/Activity;)V

    .line 421
    return-void
.end method

.method protected onPostBgLoading()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method protected onPreBgLoading()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->initAds()V

    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->initTitleBar()V

    .line 117
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->loadBgUrl()V

    .line 118
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 164
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->bgUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewForBg()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewForBg()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getViewForBg()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->cancelWork(Landroid/view/View;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected openCustomDialogs()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->showEmailCollectPropmt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->tabId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showEmailCollectPropmtIfNeeded(Landroid/app/Activity;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->itemId:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SECTION_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->sectionId:Ljava/lang/String;

    .line 404
    return-void
.end method

.method protected setBgUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "bgUrl"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->bgUrl:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BG_URL_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method public setFragmentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonFragment;->fragmentName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method protected showEmailCollectPropmt()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method protected showMailingPropmt()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method protected tryParseData(Ljava/lang/String;Lcom/biznessapps/api/ParseStateEntity;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;
    .param p2, "parseResult"    # Lcom/biznessapps/api/ParseStateEntity;

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->tryParseData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->bgUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/fragments/CommonFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment;->bgUrl:Ljava/lang/String;

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->loadBgUrl()V

    .line 399
    return-void
.end method

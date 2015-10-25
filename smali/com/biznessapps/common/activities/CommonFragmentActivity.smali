.class public abstract Lcom/biznessapps/common/activities/CommonFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CommonFragmentActivity.java"

# interfaces
.implements Lcom/biznessapps/api/LoadingDataInterface;
.implements Lcom/biznessapps/constants/AppConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;,
        Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;
    }
.end annotation


# static fields
.field protected static final NO_TAB_DEFINED:J = -0x1L


# instance fields
.field protected backPressedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;",
            ">;"
        }
    .end annotation
.end field

.field protected hasPodcastTab:Z

.field protected isActive:Z

.field protected progressBarContainer:Landroid/view/ViewGroup;

.field private resources:Landroid/content/res/Resources;

.field protected rootLayout:Landroid/view/ViewGroup;

.field protected settings:Lcom/biznessapps/api/UiSettings;

.field protected tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->backPressedListeners:Ljava/util/List;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->isActive:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->hasPodcastTab:Z

    .line 369
    return-void
.end method


# virtual methods
.method public addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V
    .locals 1
    .param p1, "listenerToAdd"    # Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->backPressedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method protected applyBackground()V
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getBackgroundView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->defineBgUrl()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "bgUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 218
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getBackgroundView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1, v0, v2, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 223
    .end local v0    # "bgUrl":Ljava/lang/String;
    .end local v1    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v0    # "bgUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getBackgroundView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    goto :goto_0
.end method

.method protected applyBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "bgUrl"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getBackgroundView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 206
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getBackgroundView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0, p1, v1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 211
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getBackgroundView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    goto :goto_0
.end method

.method public cacher()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method protected defineBgUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BG_URL_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "bgUrl":Ljava/lang/String;
    return-object v0
.end method

.method protected getBackgroundView()Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->rootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getBitmapDownloader()Lcom/biznessapps/images/BitmapDownloader;
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getNewImageManager()Lcom/biznessapps/images/NewImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/images/NewImageManager;->getBitmapDownloader()Lcom/biznessapps/images/BitmapDownloader;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lcom/biznessapps/layout/R$layout;->common_fragment_layout:I

    return v0
.end method

.method protected getNewImageManager()Lcom/biznessapps/images/NewImageManager;
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getNewImageManager()Lcom/biznessapps/images/NewImageManager;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->progressBarContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, ""

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    .local v0, "oldResources":Landroid/content/res/Resources;
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/biznessapps/localization/CustomResources;->getInstance(Landroid/content/Context;Landroid/content/res/Resources;)Lcom/biznessapps/localization/CustomResources;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->resources:Landroid/content/res/Resources;

    .line 149
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->resources:Landroid/content/res/Resources;

    return-object v1
.end method

.method public getTabId()J
    .locals 6

    .prologue
    .line 153
    const-wide/16 v0, -0x1

    .line 154
    .local v0, "tabId":J
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_UNIQUE_ID"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 157
    :cond_0
    return-wide v0
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
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    return-object v0
.end method

.method protected handleInBackground()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method protected hasNavigationMenu()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method protected initAds()V
    .locals 2

    .prologue
    .line 226
    sget v1, Lcom/biznessapps/layout/R$id;->ads_layout_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 227
    .local v0, "adsContainer":Landroid/view/ViewGroup;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 228
    return-void
.end method

.method protected initAdsWithAlpha()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 237
    sget v1, Lcom/biznessapps/layout/R$id;->ads_layout_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    .local v0, "adsContainer":Landroid/view/ViewGroup;
    invoke-static {p0, v0, v2, v2}, Lcom/biznessapps/utils/ViewUtils;->showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    .line 239
    return-void
.end method

.method protected initSettingsData()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->tabId:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AppCore;->getUiSettings(Ljava/lang/String;)Lcom/biznessapps/api/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->settings:Lcom/biznessapps/api/UiSettings;

    .line 122
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->isActive:Z

    return v0
.end method

.method protected loadData()V
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .line 244
    .local v0, "holdActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->preDataLoading(Landroid/app/Activity;)V

    .line 246
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->canUseCachedData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->updateControlsWithData(Landroid/app/Activity;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    new-instance v1, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getViewsRef()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;-><init>(Lcom/biznessapps/common/activities/CommonFragmentActivity;Landroid/app/Activity;Ljava/util/List;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 132
    const/4 v0, 0x1

    .line 133
    .local v0, "handleByActivity":Z
    iget-object v3, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->backPressedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    .line 134
    .local v2, "listener":Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;
    invoke-interface {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;->onBackPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    .end local v2    # "listener":Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;
    :cond_1
    if-eqz v0, :cond_2

    .line 139
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 140
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->isActive:Z

    .line 142
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 233
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->initAds()V

    .line 234
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AppCore;->init(Landroid/content/Context;)V

    .line 91
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->requestWindowFeature(I)Z

    .line 92
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    .line 93
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->initSettingsData()V

    .line 95
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->onPreInit()V

    .line 98
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getLayoutId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->rootLayout:Landroid/view/ViewGroup;

    .line 103
    :cond_1
    sget v0, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->progressBarContainer:Landroid/view/ViewGroup;

    .line 104
    return-void
.end method

.method protected onPreInit()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 189
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->initAds()V

    .line 190
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->hasTitleBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    sget v1, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 192
    .local v0, "titleBarRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showTitleBar(Landroid/view/ViewGroup;Landroid/content/Intent;Lcom/biznessapps/api/UiSettings;)V

    .line 195
    invoke-static {p0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 199
    .end local v0    # "titleBarRoot":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->applyBackground()V

    .line 200
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 299
    return-void
.end method

.method public removeBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V
    .locals 1
    .param p1, "listenerToRemove"    # Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity;->backPressedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 296
    return-void
.end method

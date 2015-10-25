.class public Lcom/biznessapps/music/MusicDetailFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "MusicDetailFragment.java"


# instance fields
.field protected accountsContentView:Landroid/view/ViewGroup;

.field private albumImageView:Landroid/widget/ImageView;

.field private albumNameView:Landroid/widget/TextView;

.field private artistNameView:Landroid/widget/TextView;

.field private buttonContainer:Landroid/view/ViewGroup;

.field protected commentsButton:Landroid/widget/Button;

.field private commentsTabContainer:Landroid/view/ViewGroup;

.field protected info:Lcom/biznessapps/fan_wall/FanWallEntity;

.field protected infoButton:Landroid/widget/Button;

.field private infoTabContainer:Landroid/view/ViewGroup;

.field protected needToReload:Z

.field private onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field private playView:Landroid/widget/ImageView;

.field private playerListener:Lcom/biznessapps/player/PlayerStateListener;

.field protected rootView:Landroid/view/ViewGroup;

.field private shareButton:Landroid/widget/ImageView;

.field private songItem:Lcom/biznessapps/music/PlaylistEntity;

.field private songTitleView:Landroid/widget/TextView;

.field protected tabId:Ljava/lang/String;

.field private webView:Lcom/biznessapps/widgets/SmartWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/biznessapps/music/MusicDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/music/MusicDetailFragment$1;-><init>(Lcom/biznessapps/music/MusicDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->playerListener:Lcom/biznessapps/player/PlayerStateListener;

    .line 84
    new-instance v0, Lcom/biznessapps/music/MusicDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/music/MusicDetailFragment$2;-><init>(Lcom/biznessapps/music/MusicDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/music/MusicDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/music/MusicDetailFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/biznessapps/music/MusicDetailFragment;->updatePlayerControls()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/music/MusicDetailFragment;)Lcom/biznessapps/widgets/SmartWebView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/music/MusicDetailFragment;)Lcom/biznessapps/music/PlaylistEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/music/MusicDetailFragment;Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/music/MusicDetailFragment;
    .param p1, "x1"    # Lcom/biznessapps/music/PlaylistEntity;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/biznessapps/music/MusicDetailFragment;->playMusic(Lcom/biznessapps/music/PlaylistEntity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/music/MusicDetailFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/music/MusicDetailFragment;Landroid/widget/Button;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/music/MusicDetailFragment;
    .param p1, "x1"    # Landroid/widget/Button;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/music/MusicDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/music/MusicDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/music/MusicDetailFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/biznessapps/music/MusicDetailFragment;->loadWebContent()V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/music/MusicDetailFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "buttonToActivate"    # Landroid/widget/Button;
    .param p2, "tabToActivate"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 272
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 273
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 276
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 280
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 281
    return-void
.end method

.method private loadWebContent()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v0}, Lcom/biznessapps/music/PlaylistEntity;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "htmlDescription":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 266
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/widgets/SmartWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    return-void
.end method

.method private playMusic(Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/music/PlaylistEntity;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->getCurrentSong()Lcom/biznessapps/player/MusicItem;

    move-result-object v0

    .line 246
    .local v0, "currentSong":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {p1}, Lcom/biznessapps/music/PlaylistEntity;->getPreviewUrl()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "previewUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Lcom/biznessapps/player/MusicItem;)V

    .line 260
    .end local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .end local v2    # "previewUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 251
    .restart local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .restart local v2    # "previewUrl":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/biznessapps/player/MusicItem;

    invoke-direct {v1}, Lcom/biznessapps/player/MusicItem;-><init>()V

    .line 252
    .local v1, "musicItem":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {p1}, Lcom/biznessapps/music/PlaylistEntity;->getPreviewUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/player/MusicItem;->setUrl(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Lcom/biznessapps/music/PlaylistEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/player/MusicItem;->setSongInfo(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/biznessapps/music/PlaylistEntity;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/player/MusicItem;->setAlbumName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 257
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Lcom/biznessapps/player/MusicItem;)V

    goto :goto_0
.end method

.method private updatePlayerControls()V
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->isInState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/player/PlayerServiceAccessor;->getCurrentSong()Lcom/biznessapps/player/MusicItem;

    move-result-object v0

    .line 229
    .local v0, "currentSong":Lcom/biznessapps/player/MusicItem;
    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v2}, Lcom/biznessapps/music/PlaylistEntity;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "previewUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->playView:Landroid/widget/ImageView;

    sget v3, Lcom/biznessapps/layout/R$drawable;->pause_icon_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    .end local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .end local v1    # "previewUrl":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/music/MusicDetailFragment;->playView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 241
    return-void

    .line 235
    .restart local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .restart local v1    # "previewUrl":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->playView:Landroid/widget/ImageView;

    sget v3, Lcom/biznessapps/layout/R$drawable;->play_icon_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 238
    .end local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .end local v1    # "previewUrl":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->playView:Landroid/widget/ImageView;

    sget v3, Lcom/biznessapps/layout/R$drawable;->play_icon_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAN_WALL_INFO_PROPERTY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/music/MusicDetailFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fan_wall/FanWallEntity;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    .line 329
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->needToReload:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 330
    .local v0, "canUseCache":Z
    :goto_0
    iput-boolean v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->needToReload:Z

    .line 331
    return v0

    .end local v0    # "canUseCache":Z
    :cond_0
    move v0, v2

    .line 329
    goto :goto_0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 302
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v1}, Lcom/biznessapps/music/PlaylistEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    const-string v0, "fan_wall.php?app_code=%s&yt_id=%s&tab_id=%s&show_all=1"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/music/MusicDetailFragment;->itemId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/music/MusicDetailFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ITEM_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/music/PlaylistEntity;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    .line 121
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v1}, Lcom/biznessapps/music/PlaylistEntity;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->itemId:Ljava/lang/String;

    .line 123
    sget v1, Lcom/biznessapps/layout/R$id;->event_new_buttons_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->buttonContainer:Landroid/view/ViewGroup;

    .line 124
    sget v1, Lcom/biznessapps/layout/R$id;->event_info_tab_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    .line 125
    sget v1, Lcom/biznessapps/layout/R$id;->comments_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    .line 126
    sget v1, Lcom/biznessapps/layout/R$id;->event_new_info_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoButton:Landroid/widget/Button;

    .line 127
    sget v1, Lcom/biznessapps/layout/R$id;->event_new_comments_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsButton:Landroid/widget/Button;

    .line 128
    sget v1, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->shareButton:Landroid/widget/ImageView;

    .line 129
    sget v1, Lcom/biznessapps/layout/R$id;->playlist_item_image:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->playView:Landroid/widget/ImageView;

    .line 130
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->playView:Landroid/widget/ImageView;

    new-instance v2, Lcom/biznessapps/music/MusicDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/music/MusicDetailFragment$3;-><init>(Lcom/biznessapps/music/MusicDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-direct {p0}, Lcom/biznessapps/music/MusicDetailFragment;->updatePlayerControls()V

    .line 139
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 140
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->description:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 142
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->shareButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/biznessapps/music/MusicDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/biznessapps/music/MusicDetailFragment$4;-><init>(Lcom/biznessapps/music/MusicDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/music/MusicDetailFragment$5;

    invoke-direct {v2, p0}, Lcom/biznessapps/music/MusicDetailFragment$5;-><init>(Lcom/biznessapps/music/MusicDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/music/MusicDetailFragment$6;

    invoke-direct {v2, p0}, Lcom/biznessapps/music/MusicDetailFragment$6;-><init>(Lcom/biznessapps/music/MusicDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->shouldHideComments()Z

    move-result v10

    .line 164
    .local v10, "shouldHideComments":Z
    if-eqz v10, :cond_0

    .line 165
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/biznessapps/music/MusicDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->buttonContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 175
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->infoButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 176
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 178
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 179
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 181
    sget v1, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/SmartWebView;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    .line 182
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    new-instance v2, Lcom/biznessapps/music/MusicDetailFragment$7;

    invoke-direct {v2, p0}, Lcom/biznessapps/music/MusicDetailFragment$7;-><init>(Lcom/biznessapps/music/MusicDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/SmartWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 193
    sget v1, Lcom/biznessapps/layout/R$id;->song_image_view:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->albumImageView:Landroid/widget/ImageView;

    .line 194
    sget v1, Lcom/biznessapps/layout/R$id;->artist_name:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->artistNameView:Landroid/widget/TextView;

    .line 195
    sget v1, Lcom/biznessapps/layout/R$id;->song_title:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->songTitleView:Landroid/widget/TextView;

    .line 196
    sget v1, Lcom/biznessapps/layout/R$id;->album_name:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->albumNameView:Landroid/widget/TextView;

    .line 197
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->artistNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->songTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->albumNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    sget v1, Lcom/biznessapps/layout/R$id;->buy_icon:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 202
    .local v8, "buyImage":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v1}, Lcom/biznessapps/music/PlaylistEntity;->getItune()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 204
    new-instance v1, Lcom/biznessapps/music/MusicDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/biznessapps/music/MusicDetailFragment$8;-><init>(Lcom/biznessapps/music/MusicDetailFragment;)V

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BG_URL_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->bgUrl:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->artistNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v2}, Lcom/biznessapps/music/PlaylistEntity;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->songTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v2}, Lcom/biznessapps/music/PlaylistEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->albumNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v2}, Lcom/biznessapps/music/PlaylistEntity;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v2}, Lcom/biznessapps/music/PlaylistEntity;->getAlbumArt()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/music/MusicDetailFragment;->albumImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 218
    new-instance v9, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 219
    .local v9, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    sget v1, Lcom/biznessapps/layout/R$id;->song_header_view:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "HEADER_IMAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v9, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 222
    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 223
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 224
    return-void

    .line 168
    .end local v8    # "buyImage":Landroid/widget/ImageView;
    .end local v9    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/biznessapps/music/MusicDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 169
    new-instance v0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/biznessapps/music/MusicDetailFragment;->itemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/music/MusicDetailFragment;->tabId:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/music/MusicDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object v2, p1

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLcom/biznessapps/api/UiSettings;I)V

    .line 171
    .local v0, "socialCommentComponent":Lcom/biznessapps/common/social/ui/SocialCommentComponent;
    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->loadCommentsData()V

    goto/16 :goto_0

    .line 202
    .end local v0    # "socialCommentComponent":Lcom/biznessapps/common/social/ui/SocialCommentComponent;
    .restart local v8    # "buyImage":Landroid/widget/ImageView;
    :cond_1
    const/4 v1, 0x4

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    packed-switch p2, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 288
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->needToReload:Z

    .line 289
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->loadData()V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    sget v0, Lcom/biznessapps/layout/R$layout;->music_detail_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->root:Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->initSettingsData()V

    .line 95
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/music/MusicDetailFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 96
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/music/MusicDetailFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 97
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 98
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->playerListener:Lcom/biznessapps/player/PlayerStateListener;

    invoke-static {v0}, Lcom/biznessapps/player/PlayerService;->addListener(Lcom/biznessapps/player/PlayerStateListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 101
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 107
    .local v0, "activity":Lcom/biznessapps/common/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment;->playerListener:Lcom/biznessapps/player/PlayerStateListener;

    invoke-static {v1}, Lcom/biznessapps/player/PlayerService;->removeListener(Lcom/biznessapps/player/PlayerStateListener;)V

    .line 111
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroyView()V

    .line 112
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment;->tabId:Ljava/lang/String;

    .line 297
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 317
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "commentsData":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/json/JsonParser;->parseFanWallData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 319
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/FanWallEntity;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fan_wall/FanWallEntity;

    iput-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    .line 321
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAN_WALL_INFO_PROPERTY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/music/MusicDetailFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/music/MusicDetailFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    invoke-virtual {v2, v4, v5}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/music/MusicDetailFragment;->info:Lcom/biznessapps/fan_wall/FanWallEntity;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

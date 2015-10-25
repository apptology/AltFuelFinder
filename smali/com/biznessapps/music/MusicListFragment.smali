.class public Lcom/biznessapps/music/MusicListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "MusicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/music/PlaylistEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private albumsAdapter:Lcom/biznessapps/music/AlbumsAdapter;

.field private albumsButton:Landroid/widget/Button;

.field private allTracksButton:Landroid/widget/Button;

.field private areTracksSelected:Z

.field private headerBgUrl:Ljava/lang/String;

.field private headerView:Landroid/widget/ImageView;

.field private isTablet:Z

.field private playerListener:Lcom/biznessapps/player/PlayerStateListener;

.field private trackListener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

.field private tracksAdapter:Lcom/biznessapps/music/TracksAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/music/MusicListFragment;->areTracksSelected:Z

    .line 49
    new-instance v0, Lcom/biznessapps/music/MusicListFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/music/MusicListFragment$1;-><init>(Lcom/biznessapps/music/MusicListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->playerListener:Lcom/biznessapps/player/PlayerStateListener;

    .line 72
    new-instance v0, Lcom/biznessapps/music/MusicListFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/music/MusicListFragment$2;-><init>(Lcom/biznessapps/music/MusicListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->trackListener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/music/MusicListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/biznessapps/music/MusicListFragment;->areTracksSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/music/MusicListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/biznessapps/music/MusicListFragment;->areTracksSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/music/MusicListFragment;)Lcom/biznessapps/music/TracksAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->tracksAdapter:Lcom/biznessapps/music/TracksAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/music/MusicListFragment;)Lcom/biznessapps/music/AlbumsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->albumsAdapter:Lcom/biznessapps/music/AlbumsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/music/MusicListFragment;Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;
    .param p1, "x1"    # Lcom/biznessapps/music/PlaylistEntity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/biznessapps/music/MusicListFragment;->playMusic(Lcom/biznessapps/music/PlaylistEntity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/music/MusicListFragment;Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;
    .param p1, "x1"    # Lcom/biznessapps/music/PlaylistEntity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/biznessapps/music/MusicListFragment;->openDetailScreen(Lcom/biznessapps/music/PlaylistEntity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/music/MusicListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/biznessapps/music/MusicListFragment;->updateControlsState()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/music/MusicListFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/music/MusicListFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->allTracksButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/music/MusicListFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->albumsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/music/MusicListFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/MusicListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method private clearHeaderBg()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->headerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    return-void
.end method

.method public static extractUrlsFromData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/music/PlaylistEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/MusicItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v3, "previewUrls":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/music/PlaylistEntity;

    .line 93
    .local v1, "item":Lcom/biznessapps/music/PlaylistEntity;
    new-instance v2, Lcom/biznessapps/player/MusicItem;

    invoke-direct {v2}, Lcom/biznessapps/player/MusicItem;-><init>()V

    .line 94
    .local v2, "musicItem":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {v1}, Lcom/biznessapps/music/PlaylistEntity;->getPreviewUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    invoke-virtual {v1}, Lcom/biznessapps/music/PlaylistEntity;->getPreviewUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/player/MusicItem;->setUrl(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Lcom/biznessapps/music/PlaylistEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/player/MusicItem;->setSongInfo(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Lcom/biznessapps/music/PlaylistEntity;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/player/MusicItem;->setAlbumName(Ljava/lang/String;)V

    .line 98
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v1    # "item":Lcom/biznessapps/music/PlaylistEntity;
    .end local v2    # "musicItem":Lcom/biznessapps/player/MusicItem;
    :cond_1
    return-object v3
.end method

.method private initAlbumsMaps(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/music/PlaylistEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/music/AlbumEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    const/4 v9, 0x0

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/AlbumEntity;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 271
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 272
    .local v2, "albumsTracksMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/biznessapps/music/PlaylistEntity;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/music/PlaylistEntity;

    .line 273
    .local v4, "item":Lcom/biznessapps/music/PlaylistEntity;
    invoke-virtual {v4}, Lcom/biznessapps/music/PlaylistEntity;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "albumName":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 275
    .local v6, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/music/PlaylistEntity;>;"
    if-nez v6, :cond_0

    .line 276
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/music/PlaylistEntity;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .restart local v6    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/music/PlaylistEntity;>;"
    :cond_0
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    .end local v0    # "albumName":Ljava/lang/String;
    .end local v4    # "item":Lcom/biznessapps/music/PlaylistEntity;
    .end local v6    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/music/PlaylistEntity;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 283
    .local v5, "key":Ljava/lang/String;
    new-instance v4, Lcom/biznessapps/music/AlbumEntity;

    invoke-direct {v4}, Lcom/biznessapps/music/AlbumEntity;-><init>()V

    .line 284
    .local v4, "item":Lcom/biznessapps/music/AlbumEntity;
    invoke-virtual {v4, v5}, Lcom/biznessapps/music/AlbumEntity;->setAlbumName(Ljava/lang/String;)V

    .line 285
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 286
    .local v7, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 287
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v8}, Lcom/biznessapps/music/PlaylistEntity;->getArtist()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/music/AlbumEntity;->setArtistName(Ljava/lang/String;)V

    .line 288
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v8}, Lcom/biznessapps/music/PlaylistEntity;->getAlbumArt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/music/AlbumEntity;->setAlbumUrl(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v4, v7}, Lcom/biznessapps/music/AlbumEntity;->setTracks(Ljava/util/List;)V

    .line 291
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 294
    .end local v2    # "albumsTracksMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/biznessapps/music/PlaylistEntity;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/biznessapps/music/AlbumEntity;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    :cond_3
    return-object v1
.end method

.method private initListViewWithAlbums(Landroid/app/Activity;Ljava/util/List;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/music/PlaylistEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/music/MusicListFragment;->initAlbumsMaps(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 263
    .local v0, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/AlbumEntity;>;"
    new-instance v1, Lcom/biznessapps/music/AlbumsAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/music/MusicListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v3}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/music/MusicListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, v2, v3, v4}, Lcom/biznessapps/music/AlbumsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->albumsAdapter:Lcom/biznessapps/music/AlbumsAdapter;

    .line 264
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->albumsAdapter:Lcom/biznessapps/music/AlbumsAdapter;

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->trackListener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    invoke-virtual {v1, v2}, Lcom/biznessapps/music/AlbumsAdapter;->setListener(Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;)V

    .line 265
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->albumsAdapter:Lcom/biznessapps/music/AlbumsAdapter;

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    return-void
.end method

.method private initListViewWithTracks(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/music/PlaylistEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->itemId:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/biznessapps/music/MusicListFragment;->findPreloadedItem(Ljava/util/List;Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/biznessapps/music/TracksAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p2, v2}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/music/MusicListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/music/TracksAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->tracksAdapter:Lcom/biznessapps/music/TracksAdapter;

    .line 253
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->tracksAdapter:Lcom/biznessapps/music/TracksAdapter;

    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->trackListener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/music/TracksAdapter;->setListener(Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->tracksAdapter:Lcom/biznessapps/music/TracksAdapter;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    check-cast v0, Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v0}, Lcom/biznessapps/music/PlaylistEntity;->isUseAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    check-cast v0, Lcom/biznessapps/music/PlaylistEntity;

    invoke-direct {p0, v0}, Lcom/biznessapps/music/MusicListFragment;->openDetailScreen(Lcom/biznessapps/music/PlaylistEntity;)V

    .line 257
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->preLoadedItem:Lcom/biznessapps/common/entities/CommonListEntity;

    check-cast v0, Lcom/biznessapps/music/PlaylistEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/music/PlaylistEntity;->setUseAgain(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method private loadHeaderBg()V
    .locals 5

    .prologue
    .line 216
    iget-object v3, p0, Lcom/biznessapps/music/MusicListFragment;->headerBgUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 217
    .local v0, "hasHeaderBg":Z
    iget-object v4, p0, Lcom/biznessapps/music/MusicListFragment;->headerView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 220
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 221
    .local v2, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v3, p0, Lcom/biznessapps/music/MusicListFragment;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 222
    iget-object v3, p0, Lcom/biznessapps/music/MusicListFragment;->headerBgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 223
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 224
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 225
    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 227
    .end local v1    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v2    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_0
    return-void

    .line 217
    :cond_1
    const/16 v3, 0x8

    goto :goto_0
.end method

.method private openDetailScreen(Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/music/PlaylistEntity;

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SongInfoViewController"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "SongInfoViewController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 330
    const-string v1, "HEADER_IMAGE"

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->headerBgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v1, "TAB_LABEL"

    sget v2, Lcom/biznessapps/layout/R$string;->music_tab_label:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/music/MusicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0}, Lcom/biznessapps/music/MusicListFragment;->startActivity(Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method private playMusic(Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/music/PlaylistEntity;

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->getCurrentSong()Lcom/biznessapps/player/MusicItem;

    move-result-object v0

    .line 309
    .local v0, "currentSong":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {p1}, Lcom/biznessapps/music/PlaylistEntity;->getPreviewUrl()Ljava/lang/String;

    move-result-object v2

    .line 310
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

    .line 312
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Lcom/biznessapps/player/MusicItem;)V

    .line 323
    .end local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .end local v2    # "previewUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .restart local v2    # "previewUrl":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/biznessapps/player/MusicItem;

    invoke-direct {v1}, Lcom/biznessapps/player/MusicItem;-><init>()V

    .line 315
    .local v1, "musicItem":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {p1}, Lcom/biznessapps/music/PlaylistEntity;->getPreviewUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/player/MusicItem;->setUrl(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lcom/biznessapps/music/PlaylistEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/player/MusicItem;->setSongInfo(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lcom/biznessapps/music/PlaylistEntity;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/player/MusicItem;->setAlbumName(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 320
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Lcom/biznessapps/player/MusicItem;)V

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/music/MusicListFragment;->initListViewWithAlbums(Landroid/app/Activity;Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/music/MusicListFragment;->initListViewWithTracks(Landroid/app/Activity;Ljava/util/List;)V

    .line 248
    :cond_0
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/biznessapps/music/MusicListFragment;->areTracksSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/music/MusicListFragment;->initListViewWithTracks(Landroid/app/Activity;Ljava/util/List;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->albumsAdapter:Lcom/biznessapps/music/AlbumsAdapter;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private updateControlsState()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->allTracksButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/biznessapps/music/MusicListFragment;->areTracksSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 156
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->albumsButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/biznessapps/music/MusicListFragment;->areTracksSelected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 157
    invoke-direct {p0}, Lcom/biznessapps/music/MusicListFragment;->setAdapter()V

    .line 158
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/biznessapps/music/MusicListFragment;->isTablet:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MUSIC_PLAYLIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/biznessapps/music/MusicListFragment;->isTablet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MUSIC_PLAYLIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/biznessapps/layout/R$layout;->music_list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 174
    const-string v0, "music_list.php?app_code=%s&tab_id=%s&platform=android"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/music/MusicListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->initAdsWithAlpha()V

    .line 152
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 118
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->playerListener:Lcom/biznessapps/player/PlayerStateListener;

    invoke-static {v1}, Lcom/biznessapps/player/PlayerService;->addListener(Lcom/biznessapps/player/PlayerStateListener;)V

    .line 119
    sget v1, Lcom/biznessapps/layout/R$id;->all_tracks_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->allTracksButton:Landroid/widget/Button;

    .line 120
    sget v1, Lcom/biznessapps/layout/R$id;->albums_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->albumsButton:Landroid/widget/Button;

    .line 122
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->allTracksButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->all_tracks_title:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 123
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->albumsButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->albums:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 124
    sget v1, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    .local v0, "buttonsContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->allTracksButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/music/MusicListFragment$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/music/MusicListFragment$3;-><init>(Lcom/biznessapps/music/MusicListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->albumsButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/music/MusicListFragment$4;

    invoke-direct {v2, p0}, Lcom/biznessapps/music/MusicListFragment$4;-><init>(Lcom/biznessapps/music/MusicListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 144
    sget v1, Lcom/biznessapps/layout/R$id;->headerImage:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->headerView:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->headerView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 146
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/biznessapps/music/MusicListFragment;->isTablet:Z

    .line 147
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->playerListener:Lcom/biznessapps/player/PlayerStateListener;

    invoke-static {v0}, Lcom/biznessapps/player/PlayerService;->removeListener(Lcom/biznessapps/player/PlayerStateListener;)V

    .line 112
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onDestroyView()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onResume()V

    .line 163
    invoke-direct {p0}, Lcom/biznessapps/music/MusicListFragment;->loadHeaderBg()V

    .line 164
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onStop()V

    .line 169
    invoke-direct {p0}, Lcom/biznessapps/music/MusicListFragment;->clearHeaderBg()V

    .line 170
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 179
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseMusicList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    const/4 v1, 0x0

    .line 181
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/biznessapps/music/MusicListFragment;->isTablet:Z

    if-eqz v2, :cond_2

    .line 182
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v2}, Lcom/biznessapps/music/PlaylistEntity;->getBackground()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->bgUrl:Ljava/lang/String;

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MUSIC_PLAYLIST_PROPERTY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/music/MusicListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    .line 186
    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/music/PlaylistEntity;

    iget-object v3, p0, Lcom/biznessapps/music/MusicListFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/biznessapps/music/PlaylistEntity;->setBackground(Ljava/lang/String;)V

    .line 191
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MUSIC_PLAYLIST_PROPERTY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/music/MusicListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/biznessapps/music/MusicListFragment;->isTablet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 196
    :goto_1
    return v1

    .line 189
    :cond_1
    iput-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    goto :goto_0

    .line 193
    :cond_2
    iput-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    .line 194
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MUSIC_PLAYLIST_PROPERTY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/music/MusicListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 202
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/music/PlaylistEntity;

    invoke-virtual {v0}, Lcom/biznessapps/music/PlaylistEntity;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->headerBgUrl:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lcom/biznessapps/music/MusicListFragment;->loadHeaderBg()V

    .line 206
    invoke-virtual {p0}, Lcom/biznessapps/music/MusicListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/music/MusicListFragment;->items:Ljava/util/List;

    invoke-static {v1}, Lcom/biznessapps/music/MusicListFragment;->extractUrlsFromData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->addUrlsQueue(Ljava/util/List;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/biznessapps/music/MusicListFragment;->plugListView(Landroid/app/Activity;)V

    .line 208
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment;->allTracksButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 210
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->isAnyConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    invoke-static {p1}, Lcom/biznessapps/utils/ViewUtils;->showNetwortErrorToast(Landroid/app/Activity;)V

    .line 213
    :cond_1
    return-void
.end method

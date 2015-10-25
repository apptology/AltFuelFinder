.class public Lcom/biznessapps/player/PlayerService;
.super Landroid/app/Service;
.source "PlayerService.java"


# static fields
.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/PlayerStateListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentPosition:I

.field private currentSong:Lcom/biznessapps/player/MusicItem;

.field private isActive:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private playerState:Lcom/biznessapps/player/PlayerState;

.field private queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/MusicItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/biznessapps/player/PlayerService;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->currentSong:Lcom/biznessapps/player/MusicItem;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/player/PlayerService;->isActive:Z

    .line 352
    new-instance v0, Lcom/biznessapps/player/PlayerService$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$3;-><init>(Lcom/biznessapps/player/PlayerService;)V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 366
    new-instance v0, Lcom/biznessapps/player/PlayerService$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$4;-><init>(Lcom/biznessapps/player/PlayerService;)V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 375
    new-instance v0, Lcom/biznessapps/player/PlayerService$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$5;-><init>(Lcom/biznessapps/player/PlayerService;)V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 395
    new-instance v0, Lcom/biznessapps/player/PlayerService$6;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$6;-><init>(Lcom/biznessapps/player/PlayerService;)V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/player/PlayerService;)Lcom/biznessapps/player/MusicItem;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->currentSong:Lcom/biznessapps/player/MusicItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/player/PlayerService;Lcom/biznessapps/player/MusicItem;)Lcom/biznessapps/player/MusicItem;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;
    .param p1, "x1"    # Lcom/biznessapps/player/MusicItem;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/biznessapps/player/PlayerService;->currentSong:Lcom/biznessapps/player/MusicItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/player/PlayerService;Lcom/biznessapps/player/MusicItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;
    .param p1, "x1"    # Lcom/biznessapps/player/MusicItem;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/biznessapps/player/PlayerService;->updateCurrentPosition(Lcom/biznessapps/player/MusicItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/player/PlayerService;)Lcom/biznessapps/player/PlayerState;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/player/PlayerService;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/player/PlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/player/PlayerService;->initPlayer()V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/player/PlayerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/player/PlayerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;

    .prologue
    .line 24
    iget v0, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/biznessapps/player/PlayerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    return p1
.end method

.method static synthetic access$608(Lcom/biznessapps/player/PlayerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;

    .prologue
    .line 24
    iget v0, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    return v0
.end method

.method static synthetic access$700(Lcom/biznessapps/player/PlayerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/player/PlayerService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/biznessapps/player/PlayerService;->isActive:Z

    return v0
.end method

.method public static addListener(Lcom/biznessapps/player/PlayerStateListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/biznessapps/player/PlayerStateListener;

    .prologue
    .line 284
    sget-object v0, Lcom/biznessapps/player/PlayerService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    sget-object v0, Lcom/biznessapps/player/PlayerService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    return-void
.end method

.method private initPlayer()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 138
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 139
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 140
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 141
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 142
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 143
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 144
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 145
    return-void
.end method

.method public static removeListener(Lcom/biznessapps/player/PlayerStateListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/biznessapps/player/PlayerStateListener;

    .prologue
    .line 290
    sget-object v0, Lcom/biznessapps/player/PlayerService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method private updateCurrentPosition(Lcom/biznessapps/player/MusicItem;)V
    .locals 5
    .param p1, "item"    # Lcom/biznessapps/player/MusicItem;

    .prologue
    .line 335
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/biznessapps/player/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/biznessapps/player/MusicItem;->isSingle()Z

    move-result v3

    if-nez v3, :cond_3

    .line 336
    const/4 v2, 0x1

    .line 337
    .local v2, "isNewItem":Z
    iget-object v3, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/player/MusicItem;

    .line 338
    .local v0, "element":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {v0}, Lcom/biznessapps/player/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/biznessapps/player/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    const/4 v2, 0x0

    .line 340
    move-object p1, v0

    .line 344
    .end local v0    # "element":Lcom/biznessapps/player/MusicItem;
    :cond_1
    if-eqz v2, :cond_2

    .line 345
    iget-object v3, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_2
    iget-object v3, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    .line 349
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isNewItem":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public addUrlQueue(Lcom/biznessapps/player/MusicItem;)V
    .locals 1
    .param p1, "url"    # Lcom/biznessapps/player/MusicItem;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_0
    return-void
.end method

.method public declared-synchronized addUrlsQueue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerService;->clearQueue()V

    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/MusicItem;

    .line 302
    .local v1, "item":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {p0, v1}, Lcom/biznessapps/player/PlayerService;->addUrlQueue(Lcom/biznessapps/player/MusicItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 300
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/player/MusicItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 304
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/player/PlayerService;->isActive:Z

    .line 308
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerService;->clearQueue()V

    .line 309
    invoke-virtual {p0}, Lcom/biznessapps/player/PlayerService;->stop()V

    .line 311
    return-void
.end method

.method public clearQueue()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    .line 315
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected firePlayerPauseEvent()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method protected firePlayerStartEvent(Lcom/biznessapps/player/MusicItem;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/player/MusicItem;

    .prologue
    .line 258
    sget-object v2, Lcom/biznessapps/player/PlayerService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/PlayerStateListener;

    .line 259
    .local v1, "listener":Lcom/biznessapps/player/PlayerStateListener;
    invoke-virtual {v1, p1}, Lcom/biznessapps/player/PlayerStateListener;->onStart(Lcom/biznessapps/player/MusicItem;)V

    goto :goto_0

    .line 261
    .end local v1    # "listener":Lcom/biznessapps/player/PlayerStateListener;
    :cond_0
    return-void
.end method

.method protected firePlayerStopEvent()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method protected firePlayingEvent()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method protected fireStateChangedEvent(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 264
    sget-object v2, Lcom/biznessapps/player/PlayerService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/player/PlayerStateListener;

    .line 265
    .local v1, "listener":Lcom/biznessapps/player/PlayerStateListener;
    invoke-virtual {v1, p1}, Lcom/biznessapps/player/PlayerStateListener;->onStateChanged(I)V

    goto :goto_0

    .line 267
    .end local v1    # "listener":Lcom/biznessapps/player/PlayerStateListener;
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    return v0
.end method

.method protected getPlayerState()Lcom/biznessapps/player/PlayerState;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    return-object v0
.end method

.method public getSongs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/MusicItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    return-object v0
.end method

.method public isInState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerState;->getState()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    new-instance v0, Lcom/biznessapps/player/PlayerService$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/PlayerService$1;-><init>(Lcom/biznessapps/player/PlayerService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 129
    new-instance v0, Lcom/biznessapps/player/PlayerState;

    invoke-direct {v0}, Lcom/biznessapps/player/PlayerState;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    .line 130
    invoke-direct {p0}, Lcom/biznessapps/player/PlayerService;->initPlayer()V

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 215
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 207
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 208
    return-void
.end method

.method public play(Lcom/biznessapps/player/MusicItem;)V
    .locals 2
    .param p1, "musicItem"    # Lcom/biznessapps/player/MusicItem;

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/player/PlayerService;->isActive:Z

    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/biznessapps/player/PlayerService$2;

    invoke-direct {v1, p0, p1}, Lcom/biznessapps/player/PlayerService$2;-><init>(Lcom/biznessapps/player/PlayerService;Lcom/biznessapps/player/MusicItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 197
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/biznessapps/player/PlayerService;->isInState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-wide/16 v0, -0x1

    .line 250
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public seek(J)V
    .locals 2
    .param p1, "position"    # J

    .prologue
    .line 254
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 255
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 319
    if-gez p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iput p1, p0, Lcom/biznessapps/player/PlayerService;->currentPosition:I

    goto :goto_0
.end method

.method protected setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;

    invoke-virtual {v0, p1}, Lcom/biznessapps/player/PlayerState;->setState(I)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/biznessapps/player/PlayerService;->fireStateChangedEvent(I)V

    .line 281
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 241
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

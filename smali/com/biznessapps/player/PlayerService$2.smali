.class Lcom/biznessapps/player/PlayerService$2;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/player/PlayerService;->play(Lcom/biznessapps/player/MusicItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/player/PlayerService;

.field final synthetic val$musicItem:Lcom/biznessapps/player/MusicItem;


# direct methods
.method constructor <init>(Lcom/biznessapps/player/PlayerService;Lcom/biznessapps/player/MusicItem;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    iput-object p2, p0, Lcom/biznessapps/player/PlayerService$2;->val$musicItem:Lcom/biznessapps/player/MusicItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 162
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    iget-object v3, p0, Lcom/biznessapps/player/PlayerService$2;->val$musicItem:Lcom/biznessapps/player/MusicItem;

    # invokes: Lcom/biznessapps/player/PlayerService;->updateCurrentPosition(Lcom/biznessapps/player/MusicItem;)V
    invoke-static {v2, v3}, Lcom/biznessapps/player/PlayerService;->access$100(Lcom/biznessapps/player/PlayerService;Lcom/biznessapps/player/MusicItem;)V

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$200(Lcom/biznessapps/player/PlayerService;)Lcom/biznessapps/player/PlayerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/player/PlayerState;->getState()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 165
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$300(Lcom/biznessapps/player/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 166
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->playerState:Lcom/biznessapps/player/PlayerState;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$200(Lcom/biznessapps/player/PlayerService;)Lcom/biznessapps/player/PlayerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/player/PlayerState;->getState()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 168
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$300(Lcom/biznessapps/player/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 169
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/biznessapps/player/PlayerService;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # invokes: Lcom/biznessapps/player/PlayerService;->initPlayer()V
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$400(Lcom/biznessapps/player/PlayerService;)V

    .line 172
    const/4 v0, 0x0

    .line 175
    .local v0, "currentItem":Lcom/biznessapps/player/MusicItem;
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->val$musicItem:Lcom/biznessapps/player/MusicItem;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->val$musicItem:Lcom/biznessapps/player/MusicItem;

    invoke-virtual {v2}, Lcom/biznessapps/player/MusicItem;->isSingle()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$2;->val$musicItem:Lcom/biznessapps/player/MusicItem;

    .line 180
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 181
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # setter for: Lcom/biznessapps/player/PlayerService;->currentSong:Lcom/biznessapps/player/MusicItem;
    invoke-static {v2, v0}, Lcom/biznessapps/player/PlayerService;->access$002(Lcom/biznessapps/player/PlayerService;Lcom/biznessapps/player/MusicItem;)Lcom/biznessapps/player/MusicItem;

    .line 182
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$300(Lcom/biznessapps/player/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 185
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$300(Lcom/biznessapps/player/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 186
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$300(Lcom/biznessapps/player/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 187
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v2, v0}, Lcom/biznessapps/player/PlayerService;->firePlayerStartEvent(Lcom/biznessapps/player/MusicItem;)V

    .line 188
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    goto :goto_0

    .line 177
    :cond_4
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$500(Lcom/biznessapps/player/PlayerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 178
    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$500(Lcom/biznessapps/player/PlayerService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/player/PlayerService$2;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->currentPosition:I
    invoke-static {v3}, Lcom/biznessapps/player/PlayerService;->access$600(Lcom/biznessapps/player/PlayerService;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentItem":Lcom/biznessapps/player/MusicItem;
    check-cast v0, Lcom/biznessapps/player/MusicItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "currentItem":Lcom/biznessapps/player/MusicItem;
    goto :goto_1
.end method

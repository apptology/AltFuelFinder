.class Lcom/biznessapps/player/PlayerService$5;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/player/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/player/PlayerService;


# direct methods
.method constructor <init>(Lcom/biznessapps/player/PlayerService;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 380
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 381
    const-string v1, "PreviewMediaPlayer"

    const-string v2, "onCompletion OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    # operator++ for: Lcom/biznessapps/player/PlayerService;->currentPosition:I
    invoke-static {v1}, Lcom/biznessapps/player/PlayerService;->access$608(Lcom/biznessapps/player/PlayerService;)I

    .line 384
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->currentPosition:I
    invoke-static {v1}, Lcom/biznessapps/player/PlayerService;->access$600(Lcom/biznessapps/player/PlayerService;)I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$500(Lcom/biznessapps/player/PlayerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 385
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    const/4 v2, 0x0

    # setter for: Lcom/biznessapps/player/PlayerService;->currentPosition:I
    invoke-static {v1, v2}, Lcom/biznessapps/player/PlayerService;->access$602(Lcom/biznessapps/player/PlayerService;I)I

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/player/PlayerService;->access$500(Lcom/biznessapps/player/PlayerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->queue:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/player/PlayerService;->access$500(Lcom/biznessapps/player/PlayerService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->currentPosition:I
    invoke-static {v2}, Lcom/biznessapps/player/PlayerService;->access$600(Lcom/biznessapps/player/PlayerService;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/player/MusicItem;

    .line 389
    .local v0, "item":Lcom/biznessapps/player/MusicItem;
    iget-object v1, p0, Lcom/biznessapps/player/PlayerService$5;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v1, v0}, Lcom/biznessapps/player/PlayerService;->play(Lcom/biznessapps/player/MusicItem;)V

    .line 391
    .end local v0    # "item":Lcom/biznessapps/player/MusicItem;
    :cond_1
    monitor-exit p0

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

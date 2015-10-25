.class Lcom/biznessapps/player/PlayerService$3;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 352
    iput-object p1, p0, Lcom/biznessapps/player/PlayerService$3;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$3;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->isActive:Z
    invoke-static {v0}, Lcom/biznessapps/player/PlayerService;->access$700(Lcom/biznessapps/player/PlayerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0
.end method

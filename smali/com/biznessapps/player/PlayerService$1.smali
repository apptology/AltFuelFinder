.class Lcom/biznessapps/player/PlayerService$1;
.super Lcom/biznessapps/player/IPlayerService$Stub;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/player/PlayerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
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
    .line 42
    iput-object p1, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-direct {p0}, Lcom/biznessapps/player/IPlayerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addUrlQueue(Lcom/biznessapps/player/MusicItem;)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/player/MusicItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0, p1}, Lcom/biznessapps/player/PlayerService;->addUrlQueue(Lcom/biznessapps/player/MusicItem;)V

    .line 92
    return-void
.end method

.method public addUrlsQueue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/MusicItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0, p1}, Lcom/biznessapps/player/PlayerService;->addUrlsQueue(Ljava/util/List;)V

    .line 87
    return-void
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->clear()V

    .line 122
    return-void
.end method

.method public clearQueue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->clearQueue()V

    .line 97
    return-void
.end method

.method public duration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentSong()Lcom/biznessapps/player/MusicItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    # getter for: Lcom/biznessapps/player/PlayerService;->currentSong:Lcom/biznessapps/player/MusicItem;
    invoke-static {v0}, Lcom/biznessapps/player/PlayerService;->access$000(Lcom/biznessapps/player/PlayerService;)Lcom/biznessapps/player/MusicItem;

    move-result-object v0

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->getSongs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/biznessapps/player/PlayerState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->getPlayerState()Lcom/biznessapps/player/PlayerState;

    move-result-object v0

    return-object v0
.end method

.method public isInState(I)Z
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0, p1}, Lcom/biznessapps/player/PlayerService;->isInState(I)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->pause()V

    .line 57
    return-void
.end method

.method public play(Lcom/biznessapps/player/MusicItem;)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/player/MusicItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0, p1}, Lcom/biznessapps/player/PlayerService;->play(Lcom/biznessapps/player/MusicItem;)V

    .line 47
    return-void
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public seek(J)V
    .locals 1
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/biznessapps/player/PlayerService;->seek(J)V

    .line 77
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0, p1}, Lcom/biznessapps/player/PlayerService;->setCurrentPosition(I)V

    .line 107
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$1;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerService;->stop()V

    .line 52
    return-void
.end method

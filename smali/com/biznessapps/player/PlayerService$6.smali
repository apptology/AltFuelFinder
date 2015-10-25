.class Lcom/biznessapps/player/PlayerService$6;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 395
    iput-object p1, p0, Lcom/biznessapps/player/PlayerService$6;->this$0:Lcom/biznessapps/player/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 400
    iget-object v0, p0, Lcom/biznessapps/player/PlayerService$6;->this$0:Lcom/biznessapps/player/PlayerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerService;->setState(I)V

    .line 401
    const/4 v0, 0x1

    return v0
.end method

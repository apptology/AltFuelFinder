.class Lcom/biznessapps/music/MusicDetailFragment$1;
.super Lcom/biznessapps/player/PlayerStateListener;
.source "MusicDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/music/MusicDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/music/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/music/MusicDetailFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/music/MusicDetailFragment$1;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    invoke-direct {p0}, Lcom/biznessapps/player/PlayerStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 75
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/music/MusicDetailFragment$1$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/music/MusicDetailFragment$1$1;-><init>(Lcom/biznessapps/music/MusicDetailFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

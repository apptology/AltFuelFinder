.class Lcom/biznessapps/music/MusicListFragment$1;
.super Lcom/biznessapps/player/PlayerStateListener;
.source "MusicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/music/MusicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/music/MusicListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/music/MusicListFragment;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/music/MusicListFragment$1;->this$0:Lcom/biznessapps/music/MusicListFragment;

    invoke-direct {p0}, Lcom/biznessapps/player/PlayerStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 53
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/music/MusicListFragment$1$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/music/MusicListFragment$1$1;-><init>(Lcom/biznessapps/music/MusicListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

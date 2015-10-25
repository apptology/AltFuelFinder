.class Lcom/biznessapps/music/MusicListFragment$1$1;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/music/MusicListFragment$1;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/music/MusicListFragment$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/music/MusicListFragment$1;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/music/MusicListFragment$1$1;->this$1:Lcom/biznessapps/music/MusicListFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$1$1;->this$1:Lcom/biznessapps/music/MusicListFragment$1;

    iget-object v0, v0, Lcom/biznessapps/music/MusicListFragment$1;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # getter for: Lcom/biznessapps/music/MusicListFragment;->areTracksSelected:Z
    invoke-static {v0}, Lcom/biznessapps/music/MusicListFragment;->access$000(Lcom/biznessapps/music/MusicListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$1$1;->this$1:Lcom/biznessapps/music/MusicListFragment$1;

    iget-object v0, v0, Lcom/biznessapps/music/MusicListFragment$1;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # getter for: Lcom/biznessapps/music/MusicListFragment;->tracksAdapter:Lcom/biznessapps/music/TracksAdapter;
    invoke-static {v0}, Lcom/biznessapps/music/MusicListFragment;->access$100(Lcom/biznessapps/music/MusicListFragment;)Lcom/biznessapps/music/TracksAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$1$1;->this$1:Lcom/biznessapps/music/MusicListFragment$1;

    iget-object v0, v0, Lcom/biznessapps/music/MusicListFragment$1;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # getter for: Lcom/biznessapps/music/MusicListFragment;->tracksAdapter:Lcom/biznessapps/music/TracksAdapter;
    invoke-static {v0}, Lcom/biznessapps/music/MusicListFragment;->access$100(Lcom/biznessapps/music/MusicListFragment;)Lcom/biznessapps/music/TracksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/music/TracksAdapter;->notifyDataSetChanged()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$1$1;->this$1:Lcom/biznessapps/music/MusicListFragment$1;

    iget-object v0, v0, Lcom/biznessapps/music/MusicListFragment$1;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # getter for: Lcom/biznessapps/music/MusicListFragment;->albumsAdapter:Lcom/biznessapps/music/AlbumsAdapter;
    invoke-static {v0}, Lcom/biznessapps/music/MusicListFragment;->access$200(Lcom/biznessapps/music/MusicListFragment;)Lcom/biznessapps/music/AlbumsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$1$1;->this$1:Lcom/biznessapps/music/MusicListFragment$1;

    iget-object v0, v0, Lcom/biznessapps/music/MusicListFragment$1;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # getter for: Lcom/biznessapps/music/MusicListFragment;->albumsAdapter:Lcom/biznessapps/music/AlbumsAdapter;
    invoke-static {v0}, Lcom/biznessapps/music/MusicListFragment;->access$200(Lcom/biznessapps/music/MusicListFragment;)Lcom/biznessapps/music/AlbumsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/music/AlbumsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

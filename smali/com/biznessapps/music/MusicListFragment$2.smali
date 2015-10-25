.class Lcom/biznessapps/music/MusicListFragment$2;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;


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
    .line 72
    iput-object p1, p0, Lcom/biznessapps/music/MusicListFragment$2;->this$0:Lcom/biznessapps/music/MusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuy(Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 2
    .param p1, "item"    # Lcom/biznessapps/music/PlaylistEntity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$2;->this$0:Lcom/biznessapps/music/MusicListFragment;

    invoke-virtual {v0}, Lcom/biznessapps/music/MusicListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biznessapps/music/PlaylistEntity;->getItune()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->openLinkInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onItemClick(Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/music/PlaylistEntity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$2;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # invokes: Lcom/biznessapps/music/MusicListFragment;->openDetailScreen(Lcom/biznessapps/music/PlaylistEntity;)V
    invoke-static {v0, p1}, Lcom/biznessapps/music/MusicListFragment;->access$400(Lcom/biznessapps/music/MusicListFragment;Lcom/biznessapps/music/PlaylistEntity;)V

    .line 87
    return-void
.end method

.method public onPlay(Lcom/biznessapps/music/PlaylistEntity;)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/music/PlaylistEntity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$2;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # invokes: Lcom/biznessapps/music/MusicListFragment;->playMusic(Lcom/biznessapps/music/PlaylistEntity;)V
    invoke-static {v0, p1}, Lcom/biznessapps/music/MusicListFragment;->access$300(Lcom/biznessapps/music/MusicListFragment;Lcom/biznessapps/music/PlaylistEntity;)V

    .line 77
    return-void
.end method

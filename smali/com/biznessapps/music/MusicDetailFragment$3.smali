.class Lcom/biznessapps/music/MusicDetailFragment$3;
.super Ljava/lang/Object;
.source "MusicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/music/MusicDetailFragment;->initViews(Landroid/view/ViewGroup;)V
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
    .line 130
    iput-object p1, p0, Lcom/biznessapps/music/MusicDetailFragment$3;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment$3;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment$3;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    # getter for: Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;
    invoke-static {v1}, Lcom/biznessapps/music/MusicDetailFragment;->access$200(Lcom/biznessapps/music/MusicDetailFragment;)Lcom/biznessapps/music/PlaylistEntity;

    move-result-object v1

    # invokes: Lcom/biznessapps/music/MusicDetailFragment;->playMusic(Lcom/biznessapps/music/PlaylistEntity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/music/MusicDetailFragment;->access$300(Lcom/biznessapps/music/MusicDetailFragment;Lcom/biznessapps/music/PlaylistEntity;)V

    .line 135
    return-void
.end method

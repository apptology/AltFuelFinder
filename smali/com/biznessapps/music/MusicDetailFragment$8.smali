.class Lcom/biznessapps/music/MusicDetailFragment$8;
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
    .line 204
    iput-object p1, p0, Lcom/biznessapps/music/MusicDetailFragment$8;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment$8;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/music/MusicDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/music/MusicDetailFragment$8;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    # getter for: Lcom/biznessapps/music/MusicDetailFragment;->songItem:Lcom/biznessapps/music/PlaylistEntity;
    invoke-static {v1}, Lcom/biznessapps/music/MusicDetailFragment;->access$200(Lcom/biznessapps/music/MusicDetailFragment;)Lcom/biznessapps/music/PlaylistEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/music/PlaylistEntity;->getItune()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->openLinkInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    return-void
.end method

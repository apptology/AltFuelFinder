.class Lcom/biznessapps/music/MusicListFragment$4;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/music/MusicListFragment;->initViews(Landroid/view/ViewGroup;)V
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
    .line 135
    iput-object p1, p0, Lcom/biznessapps/music/MusicListFragment$4;->this$0:Lcom/biznessapps/music/MusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$4;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # setter for: Lcom/biznessapps/music/MusicListFragment;->areTracksSelected:Z
    invoke-static {v0, v3}, Lcom/biznessapps/music/MusicListFragment;->access$002(Lcom/biznessapps/music/MusicListFragment;Z)Z

    .line 139
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$4;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # invokes: Lcom/biznessapps/music/MusicListFragment;->updateControlsState()V
    invoke-static {v0}, Lcom/biznessapps/music/MusicListFragment;->access$500(Lcom/biznessapps/music/MusicListFragment;)V

    .line 140
    iget-object v0, p0, Lcom/biznessapps/music/MusicListFragment$4;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # getter for: Lcom/biznessapps/music/MusicListFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v0}, Lcom/biznessapps/music/MusicListFragment;->access$900(Lcom/biznessapps/music/MusicListFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/music/MusicListFragment$4;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # getter for: Lcom/biznessapps/music/MusicListFragment;->albumsButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/biznessapps/music/MusicListFragment;->access$800(Lcom/biznessapps/music/MusicListFragment;)Landroid/widget/Button;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/music/MusicListFragment$4;->this$0:Lcom/biznessapps/music/MusicListFragment;

    # getter for: Lcom/biznessapps/music/MusicListFragment;->allTracksButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/biznessapps/music/MusicListFragment;->access$700(Lcom/biznessapps/music/MusicListFragment;)Landroid/widget/Button;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->updateButtonsState(Lcom/biznessapps/api/UiSettings;[Landroid/widget/Button;)V

    .line 141
    return-void
.end method

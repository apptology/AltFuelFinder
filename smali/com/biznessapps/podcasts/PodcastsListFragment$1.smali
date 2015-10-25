.class Lcom/biznessapps/podcasts/PodcastsListFragment$1;
.super Lcom/biznessapps/player/PlayerStateListener;
.source "PodcastsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/podcasts/PodcastsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/podcasts/PodcastsListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/podcasts/PodcastsListFragment;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment$1;->this$0:Lcom/biznessapps/podcasts/PodcastsListFragment;

    invoke-direct {p0}, Lcom/biznessapps/player/PlayerStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment$1;->this$0:Lcom/biznessapps/podcasts/PodcastsListFragment;

    # getter for: Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;
    invoke-static {v0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->access$000(Lcom/biznessapps/podcasts/PodcastsListFragment;)Lcom/biznessapps/podcasts/PodcastAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment$1;->this$0:Lcom/biznessapps/podcasts/PodcastsListFragment;

    invoke-virtual {v0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/podcasts/PodcastsListFragment$1$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/podcasts/PodcastsListFragment$1$1;-><init>(Lcom/biznessapps/podcasts/PodcastsListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 270
    :cond_0
    return-void
.end method

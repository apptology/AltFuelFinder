.class Lcom/biznessapps/podcasts/PodcastsListFragment$1$1;
.super Ljava/lang/Object;
.source "PodcastsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/podcasts/PodcastsListFragment$1;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/podcasts/PodcastsListFragment$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/podcasts/PodcastsListFragment$1;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment$1$1;->this$1:Lcom/biznessapps/podcasts/PodcastsListFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment$1$1;->this$1:Lcom/biznessapps/podcasts/PodcastsListFragment$1;

    iget-object v0, v0, Lcom/biznessapps/podcasts/PodcastsListFragment$1;->this$0:Lcom/biznessapps/podcasts/PodcastsListFragment;

    # getter for: Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;
    invoke-static {v0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->access$000(Lcom/biznessapps/podcasts/PodcastsListFragment;)Lcom/biznessapps/podcasts/PodcastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/podcasts/PodcastAdapter;->notifyDataSetChanged()V

    .line 266
    return-void
.end method

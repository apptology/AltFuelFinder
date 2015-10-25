.class Lcom/biznessapps/podcasts/PodcastsListFragment$4;
.super Ljava/lang/Object;
.source "PodcastsListFragment.java"

# interfaces
.implements Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;


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
    .line 287
    iput-object p1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment$4;->this$0:Lcom/biznessapps/podcasts/PodcastsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlay(ILcom/biznessapps/rss/RssEntity;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Lcom/biznessapps/rss/RssEntity;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment$4;->this$0:Lcom/biznessapps/podcasts/PodcastsListFragment;

    # invokes: Lcom/biznessapps/podcasts/PodcastsListFragment;->playPodcast(ILcom/biznessapps/rss/RssEntity;)V
    invoke-static {v0, p1, p2}, Lcom/biznessapps/podcasts/PodcastsListFragment;->access$200(Lcom/biznessapps/podcasts/PodcastsListFragment;ILcom/biznessapps/rss/RssEntity;)V

    .line 291
    return-void
.end method

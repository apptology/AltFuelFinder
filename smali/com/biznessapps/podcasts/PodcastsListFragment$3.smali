.class Lcom/biznessapps/podcasts/PodcastsListFragment$3;
.super Ljava/lang/Object;
.source "PodcastsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 280
    iput-object p1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment$3;->this$0:Lcom/biznessapps/podcasts/PodcastsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment$3;->this$0:Lcom/biznessapps/podcasts/PodcastsListFragment;

    const/4 v1, 0x0

    # invokes: Lcom/biznessapps/podcasts/PodcastsListFragment;->selectTab(Z)V
    invoke-static {v0, v1}, Lcom/biznessapps/podcasts/PodcastsListFragment;->access$100(Lcom/biznessapps/podcasts/PodcastsListFragment;Z)V

    .line 284
    return-void
.end method

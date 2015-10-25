.class Lcom/biznessapps/podcasts/PodcastAdapter$2;
.super Ljava/lang/Object;
.source "PodcastAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/podcasts/PodcastAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/podcasts/PodcastAdapter;

.field final synthetic val$item:Lcom/biznessapps/rss/RssEntity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/biznessapps/podcasts/PodcastAdapter;ILcom/biznessapps/rss/RssEntity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/biznessapps/podcasts/PodcastAdapter$2;->this$0:Lcom/biznessapps/podcasts/PodcastAdapter;

    iput p2, p0, Lcom/biznessapps/podcasts/PodcastAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/biznessapps/podcasts/PodcastAdapter$2;->val$item:Lcom/biznessapps/rss/RssEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "progressButton"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastAdapter$2;->this$0:Lcom/biznessapps/podcasts/PodcastAdapter;

    # getter for: Lcom/biznessapps/podcasts/PodcastAdapter;->listener:Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;
    invoke-static {v0}, Lcom/biznessapps/podcasts/PodcastAdapter;->access$100(Lcom/biznessapps/podcasts/PodcastAdapter;)Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastAdapter$2;->this$0:Lcom/biznessapps/podcasts/PodcastAdapter;

    # getter for: Lcom/biznessapps/podcasts/PodcastAdapter;->listener:Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;
    invoke-static {v0}, Lcom/biznessapps/podcasts/PodcastAdapter;->access$100(Lcom/biznessapps/podcasts/PodcastAdapter;)Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;

    move-result-object v0

    iget v1, p0, Lcom/biznessapps/podcasts/PodcastAdapter$2;->val$position:I

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastAdapter$2;->val$item:Lcom/biznessapps/rss/RssEntity;

    invoke-interface {v0, v1, v2}, Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;->onPlay(ILcom/biznessapps/rss/RssEntity;)V

    .line 90
    :cond_0
    return-void
.end method

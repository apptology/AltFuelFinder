.class Lcom/biznessapps/youtube/YoutubeDetailFragment$4;
.super Ljava/lang/Object;
.source "YoutubeDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/youtube/YoutubeDetailFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$4;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$4;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    # getter for: Lcom/biznessapps/youtube/YoutubeDetailFragment;->isCheckedCommentAllowing:Z
    invoke-static {v0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$400(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$4;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    # invokes: Lcom/biznessapps/youtube/YoutubeDetailFragment;->postComment()V
    invoke-static {v0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$500(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;

    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$4;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;Lcom/biznessapps/youtube/YoutubeDetailFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

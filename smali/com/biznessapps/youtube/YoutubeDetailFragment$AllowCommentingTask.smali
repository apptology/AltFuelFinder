.class Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;
.super Landroid/os/AsyncTask;
.source "YoutubeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/youtube/YoutubeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowCommentingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;Lcom/biznessapps/youtube/YoutubeDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;
    .param p2, "x1"    # Lcom/biznessapps/youtube/YoutubeDetailFragment$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 344
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v1

    const-string v2, "youtube_check_comment.php?id=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    # getter for: Lcom/biznessapps/youtube/YoutubeDetailFragment;->itemId:Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$900(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "jsonData":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/json/JsonParser;->isAllowedCommenting(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 340
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 350
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 352
    .local v0, "activity":Lcom/biznessapps/common/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    const/4 v2, 0x1

    # setter for: Lcom/biznessapps/youtube/YoutubeDetailFragment;->isCheckedCommentAllowing:Z
    invoke-static {v1, v2}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$402(Lcom/biznessapps/youtube/YoutubeDetailFragment;Z)Z

    .line 355
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    # invokes: Lcom/biznessapps/youtube/YoutubeDetailFragment;->postComment()V
    invoke-static {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$500(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    sget v1, Lcom/biznessapps/layout/R$string;->commenting_not_allowed:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 340
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

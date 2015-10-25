.class Lcom/biznessapps/fan_wall/FanAddCommentsFragment$7;
.super Lcom/biznessapps/api/AsyncCallback;
.source "FanAddCommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$7;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$7;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    sget v1, Lcom/biznessapps/layout/R$string;->error_occured:I

    const/4 v2, 0x5

    # invokes: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->closeActivityWithResult(II)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$400(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;II)V

    .line 251
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 240
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$7;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$7;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfPosts()V

    .line 245
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanAddCommentsFragment$7;->this$0:Lcom/biznessapps/fan_wall/FanAddCommentsFragment;

    sget v1, Lcom/biznessapps/layout/R$string;->successfully_posted:I

    const/4 v2, 0x4

    # invokes: Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->closeActivityWithResult(II)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/fan_wall/FanAddCommentsFragment;->access$400(Lcom/biznessapps/fan_wall/FanAddCommentsFragment;II)V

    .line 246
    return-void
.end method

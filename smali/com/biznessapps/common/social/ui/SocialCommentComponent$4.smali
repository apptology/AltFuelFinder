.class Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;
.super Lcom/biznessapps/api/AsyncCallback;
.source "SocialCommentComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialCommentComponent;->getResultCallback(Lcom/biznessapps/fan_wall/CommentEntity;)Lcom/biznessapps/api/AsyncCallback;
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
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    sget v1, Lcom/biznessapps/layout/R$string;->error_occured:I

    # invokes: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->closeActivityWithResult(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$900(Lcom/biznessapps/common/social/ui/SocialCommentComponent;I)V

    .line 246
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 226
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$800(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 232
    .local v0, "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/fan_wall/CommentEntity;->setTimeStamp(J)V

    .line 233
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->addComment(Lcom/biznessapps/fan_wall/CommentEntity;)V

    .line 235
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    sget v2, Lcom/biznessapps/layout/R$string;->successfully_posted:I

    # invokes: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->closeActivityWithResult(I)V
    invoke-static {v1, v2}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$900(Lcom/biznessapps/common/social/ui/SocialCommentComponent;I)V

    .line 236
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->loadCommentsData()V

    .line 237
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentActionListener:Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$1000(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$4;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    # getter for: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->commentActionListener:Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$1000(Lcom/biznessapps/common/social/ui/SocialCommentComponent;)Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;->onCommentAdded()V

    .line 241
    .end local v0    # "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_0
    return-void
.end method

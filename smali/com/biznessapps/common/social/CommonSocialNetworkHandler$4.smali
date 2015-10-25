.class Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;
.super Ljava/lang/Object;
.source "CommonSocialNetworkHandler.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialActionCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 2
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x3

    # invokes: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->dismissProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;I)V

    .line 379
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$500(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$500(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/biznessapps/common/social/OnSocialActionCompletedListener;->onActionCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;->onActionCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$502(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .line 387
    return-void
.end method

.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x3

    # invokes: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->dismissProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;I)V

    .line 392
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$500(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$500(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialActionCompletedListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$502(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .line 400
    return-void
.end method

.class Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;
.super Ljava/lang/Object;
.source "CommonSocialNetworkHandler.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialPublishListener;


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
    .line 346
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x2

    # invokes: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->dismissProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;I)V

    .line 364
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$400(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$400(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$402(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialPublishListener;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    .line 372
    return-void
.end method

.method public onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 2
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x2

    # invokes: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->dismissProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;I)V

    .line 351
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$400(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$400(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;->onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$402(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialPublishListener;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    .line 359
    return-void
.end method

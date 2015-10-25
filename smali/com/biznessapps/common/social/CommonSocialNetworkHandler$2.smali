.class Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;
.super Ljava/lang/Object;
.source "CommonSocialNetworkHandler.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialLogoutListener;


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
    .line 314
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

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
    .line 317
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x1

    # invokes: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->dismissProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;I)V

    .line 318
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLogoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLogoutListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialLogoutListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$102(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialLoginListener;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    .line 326
    return-void
.end method

.method public onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 3
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x1

    # invokes: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->dismissProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;I)V

    .line 332
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    iget-object v0, v0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->updateLoggedInSocialHandler(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 334
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLogoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLogoutListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/biznessapps/common/social/OnSocialLogoutListener;->onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;->onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # setter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;
    invoke-static {v0, v2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$302(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialLogoutListener;)Lcom/biznessapps/common/social/OnSocialLogoutListener;

    .line 343
    return-void
.end method

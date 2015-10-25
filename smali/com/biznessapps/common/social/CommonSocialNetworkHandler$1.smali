.class Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;
.super Ljava/lang/Object;
.source "CommonSocialNetworkHandler.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialLoginListener;


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
    .line 283
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

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
    .line 286
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x0

    # invokes: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->dismissProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;I)V

    .line 287
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$100(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$100(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$102(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialLoginListener;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    .line 295
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 2
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x0

    # invokes: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->dismissProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;I)V

    .line 301
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    iget-object v0, v0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->updateLoggedInSocialHandler(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 303
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$100(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$100(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->access$102(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialLoginListener;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    .line 311
    return-void
.end method

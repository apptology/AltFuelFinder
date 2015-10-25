.class Lcom/biznessapps/social/SocialFragment$4;
.super Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
.source "SocialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/social/SocialFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$4;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-direct {p0}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$4;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$100(Lcom/biznessapps/social/SocialFragment;)V

    .line 345
    return-void
.end method

.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$4;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$100(Lcom/biznessapps/social/SocialFragment;)V

    .line 360
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$4;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$100(Lcom/biznessapps/social/SocialFragment;)V

    .line 365
    return-void
.end method

.method public onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$4;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$100(Lcom/biznessapps/social/SocialFragment;)V

    .line 355
    return-void
.end method

.method public onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$4;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$100(Lcom/biznessapps/social/SocialFragment;)V

    .line 350
    return-void
.end method

.class Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$6;
.super Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
.source "SocialOnBoardingPopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$6;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    invoke-direct {p0}, Lcom/biznessapps/common/social/OnSocialStatusChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$6;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    # invokes: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$200(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    .line 161
    return-void
.end method

.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$6;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    # invokes: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$200(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    .line 171
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$6;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    # invokes: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$200(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    .line 181
    return-void
.end method

.method public onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$6;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    # invokes: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$200(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    .line 176
    return-void
.end method

.method public onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$6;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    # invokes: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$200(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    .line 166
    return-void
.end method

.class Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$5;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "SocialOnBoardingPopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->handleConnectionButtonClick(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$5;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 3
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$5;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    # getter for: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;
    invoke-static {v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$000(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$5;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    # getter for: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;
    invoke-static {v1}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$000(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->login_completed:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.class Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$1;
.super Ljava/lang/Object;
.source "SocialOnBoardingPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->initUI()V
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
    .line 109
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$1;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$1;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$1;->this$0:Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    # getter for: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;
    invoke-static {v1}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$000(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    move-result-object v1

    # invokes: Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->handleConnectionButtonClick(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->access$100(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 113
    return-void
.end method

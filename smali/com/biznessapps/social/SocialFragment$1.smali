.class Lcom/biznessapps/social/SocialFragment$1;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment;->initViews()V
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
    .line 153
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$1;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/biznessapps/social/SocialFragment$1;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLatestLoggedInSocialHandler()Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v0

    .line 157
    .local v0, "networkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/biznessapps/social/SocialFragment$1;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/social/SocialFragment$1$1;

    invoke-direct {v2, p0, v0}, Lcom/biznessapps/social/SocialFragment$1$1;-><init>(Lcom/biznessapps/social/SocialFragment$1;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getCharacterLimit()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/biznessapps/common/social/ui/ShareComponent;->showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;I)V

    .line 180
    :cond_0
    return-void
.end method

.class Lcom/biznessapps/common/social/ui/SocialCommentComponent$1$1;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "SocialCommentComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1$1;->this$1:Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1$1;->this$1:Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$1;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    invoke-virtual {v0, p1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->showCommentDialog(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 110
    return-void
.end method

.class Lcom/biznessapps/social/SocialFragment$1$1;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/social/SocialFragment$1;

.field final synthetic val$networkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment$1;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$1$1;->this$1:Lcom/biznessapps/social/SocialFragment$1;

    iput-object p2, p0, Lcom/biznessapps/social/SocialFragment$1$1;->val$networkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommentEntered(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$1$1;->val$networkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    new-instance v1, Lcom/biznessapps/social/SocialFragment$1$1$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/social/SocialFragment$1$1$1;-><init>(Lcom/biznessapps/social/SocialFragment$1$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    .line 176
    return-void
.end method

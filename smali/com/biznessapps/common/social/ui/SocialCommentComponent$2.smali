.class Lcom/biznessapps/common/social/ui/SocialCommentComponent$2;
.super Ljava/lang/Object;
.source "SocialCommentComponent.java"

# interfaces
.implements Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/SocialCommentComponent;->showCommentDialog(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

.field final synthetic val$socialHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$2;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    iput-object p2, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$2;->val$socialHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommentEntered(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$2;->this$0:Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialCommentComponent$2;->val$socialHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    # invokes: Lcom/biznessapps/common/social/ui/SocialCommentComponent;->addComment(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->access$100(Lcom/biznessapps/common/social/ui/SocialCommentComponent;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;)V

    .line 123
    return-void
.end method

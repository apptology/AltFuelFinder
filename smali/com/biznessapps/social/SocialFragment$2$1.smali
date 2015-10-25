.class Lcom/biznessapps/social/SocialFragment$2$1;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/social/SocialFragment$2;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment$2;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$2$1;->this$1:Lcom/biznessapps/social/SocialFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharingCanceled()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$2$1;->this$1:Lcom/biznessapps/social/SocialFragment$2;

    iget-object v0, v0, Lcom/biznessapps/social/SocialFragment$2;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->initProfileAndListData()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$000(Lcom/biznessapps/social/SocialFragment;)V

    .line 201
    return-void
.end method

.method public onSharingCompleted(I)V
    .locals 1
    .param p1, "shareType"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$2$1;->this$1:Lcom/biznessapps/social/SocialFragment$2;

    iget-object v0, v0, Lcom/biznessapps/social/SocialFragment$2;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->initProfileAndListData()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$000(Lcom/biznessapps/social/SocialFragment;)V

    .line 196
    return-void
.end method

.method public onSharingError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "shareType"    # I
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$2$1;->this$1:Lcom/biznessapps/social/SocialFragment$2;

    iget-object v0, v0, Lcom/biznessapps/social/SocialFragment$2;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->initProfileAndListData()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$000(Lcom/biznessapps/social/SocialFragment;)V

    .line 191
    return-void
.end method

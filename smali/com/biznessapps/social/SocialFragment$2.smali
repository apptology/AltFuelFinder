.class Lcom/biznessapps/social/SocialFragment$2;
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
    .line 183
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$2;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$2;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-virtual {v0}, Lcom/biznessapps/social/SocialFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/social/SocialFragment$2$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/social/SocialFragment$2$1;-><init>(Lcom/biznessapps/social/SocialFragment$2;)V

    invoke-static {v0, v1}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    .line 203
    return-void
.end method

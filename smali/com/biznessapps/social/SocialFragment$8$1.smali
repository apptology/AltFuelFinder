.class Lcom/biznessapps/social/SocialFragment$8$1;
.super Lcom/biznessapps/common/social/OnCommonSocialLogoutListener;
.source "SocialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/social/SocialFragment$8;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment$8;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$8$1;->this$1:Lcom/biznessapps/social/SocialFragment$8;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLogoutListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$8$1;->this$1:Lcom/biznessapps/social/SocialFragment$8;

    iget-object v0, v0, Lcom/biznessapps/social/SocialFragment$8;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->initProfileAndListData()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$000(Lcom/biznessapps/social/SocialFragment;)V

    .line 458
    return-void
.end method

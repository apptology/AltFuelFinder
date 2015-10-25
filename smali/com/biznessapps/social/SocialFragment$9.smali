.class Lcom/biznessapps/social/SocialFragment$9;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "SocialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment;->checkSocialNetworks(Lcom/biznessapps/social/SocialFragment$SocialItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/social/SocialFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$9;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialNetworkHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$9;->this$0:Lcom/biznessapps/social/SocialFragment;

    # invokes: Lcom/biznessapps/social/SocialFragment;->initProfileAndListData()V
    invoke-static {v0}, Lcom/biznessapps/social/SocialFragment;->access$000(Lcom/biznessapps/social/SocialFragment;)V

    .line 467
    return-void
.end method

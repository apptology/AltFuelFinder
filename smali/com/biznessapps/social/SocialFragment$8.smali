.class Lcom/biznessapps/social/SocialFragment$8;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$socialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$8;->this$0:Lcom/biznessapps/social/SocialFragment;

    iput-object p2, p0, Lcom/biznessapps/social/SocialFragment$8;->val$socialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$8;->val$socialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    new-instance v1, Lcom/biznessapps/social/SocialFragment$8$1;

    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment$8;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-virtual {v2}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/biznessapps/social/SocialFragment$8$1;-><init>(Lcom/biznessapps/social/SocialFragment$8;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z

    .line 460
    return-void
.end method

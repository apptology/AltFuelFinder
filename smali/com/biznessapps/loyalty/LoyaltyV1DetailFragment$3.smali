.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$3;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "LoyaltyV1DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->initActivities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$3;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$3;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->doActionPosting()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$300(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    .line 330
    return-void
.end method

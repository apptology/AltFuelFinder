.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$2;
.super Ljava/lang/Object;
.source "LoyaltyV1DetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$2;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$2;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 252
    return-void
.end method

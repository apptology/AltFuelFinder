.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$1;
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
    .line 217
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->nextCardView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$000(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->nextCardView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$000(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->areItemsApproved:Z
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$100(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->tryToRedeem()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$200(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    goto :goto_0
.end method

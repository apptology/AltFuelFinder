.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$3;
.super Ljava/lang/Object;
.source "LoyaltyV2DetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$3;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$3;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mBTStamp:Landroid/widget/Button;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$000(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$3;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->stamp:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$3;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->stamp()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$100(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$3;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->login()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$200(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    goto :goto_0
.end method

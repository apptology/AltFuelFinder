.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$1;
.super Ljava/lang/Object;
.source "LoyaltyV1DetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->actionType:I
    invoke-static {v0, v1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$902(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;I)I

    .line 638
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->doActionPosting()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$300(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    .line 639
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->setInitialStateForCoupon()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$1400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    .line 641
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 642
    return-void
.end method

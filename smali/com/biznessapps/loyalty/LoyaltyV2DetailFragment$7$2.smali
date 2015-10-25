.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;
.super Ljava/lang/Object;
.source "LoyaltyV2DetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->onRedeemClickListener(Lcom/biznessapps/loyalty/LoyaltyV2Perk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;

.field final synthetic val$perk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

.field final synthetic val$secretEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;Lcom/biznessapps/loyalty/LoyaltyV2Perk;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->val$perk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    iput-object p3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->val$secretEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$300(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getAwardedValue()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->val$perk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    iget v1, v1, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->totalPoints:I

    sub-int v3, v0, v1

    .line 459
    .local v3, "currentAwardedPoint":I
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->val$secretEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "enteredSecretCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->val$perk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;)V

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$2;

    invoke-direct {v6, p0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$2;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;)V

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->checkLoyality(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    invoke-static/range {v0 .. v6}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$600(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method

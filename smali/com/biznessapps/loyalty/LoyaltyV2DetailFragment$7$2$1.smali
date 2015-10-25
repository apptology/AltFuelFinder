.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$1;
.super Ljava/lang/Object;
.source "LoyaltyV2DetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;

    iget-object v1, v1, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->val$perk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->postActivityForRedeem(Lcom/biznessapps/loyalty/LoyaltyV2Perk;)V
    invoke-static {v0, v1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$700(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Lcom/biznessapps/loyalty/LoyaltyV2Perk;)V

    .line 466
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$500(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    .line 467
    return-void
.end method

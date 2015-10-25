.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$1;
.super Ljava/lang/Object;
.source "LoyaltyV2DetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->postActivityForStamp()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$400(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    .line 407
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$500(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    .line 409
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 410
    return-void
.end method

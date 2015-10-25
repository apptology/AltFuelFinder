.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$2;
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
    .line 644
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$2;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;

    iget-object v1, v1, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->loyalty_wrong_code_message:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9$2;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 649
    return-void
.end method

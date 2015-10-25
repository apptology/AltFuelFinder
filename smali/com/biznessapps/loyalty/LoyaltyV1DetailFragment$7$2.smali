.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;
.super Ljava/lang/Object;
.source "LoyaltyV1DetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

.field final synthetic val$secretEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->val$secretEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->val$secretEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "enteredSecretCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getApprovedCount()I

    move-result v3

    .line 547
    .local v3, "stampApprovedCount":I
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    const/4 v1, 0x1

    const-string v4, "stamp"

    new-instance v5, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;

    invoke-direct {v5, p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;Landroid/content/DialogInterface;)V

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$2;

    invoke-direct {v6, p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$2;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;Landroid/content/DialogInterface;)V

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->checkLoyality(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    invoke-static/range {v0 .. v6}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$1300(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

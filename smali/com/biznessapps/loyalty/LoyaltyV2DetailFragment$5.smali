.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;
.super Ljava/lang/Object;
.source "LoyaltyV2DetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->stamp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

.field final synthetic val$secretEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;->val$secretEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;->val$secretEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "enteredSecretCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$300(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getAwardedValue()I

    move-result v3

    .line 401
    .local v3, "currentAwardedPoint":I
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$1;

    invoke-direct {v5, p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;Landroid/content/DialogInterface;)V

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$2;

    invoke-direct {v6, p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5$2;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$5;Landroid/content/DialogInterface;)V

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->checkLoyality(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    invoke-static/range {v0 .. v6}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$600(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method

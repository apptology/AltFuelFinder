.class Lcom/biznessapps/loyalty/LoyaltyHandler$1$1;
.super Ljava/lang/Object;
.source "LoyaltyHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/loyalty/LoyaltyHandler$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyHandler$1;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyHandler$1;

    iget v2, v2, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->val$loyaltyId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyHandler$1;

    iget-object v1, v1, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyHandler;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/biznessapps/loyalty/LoyaltyHandler;->access$000(Lcom/biznessapps/loyalty/LoyaltyHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1$1;->this$1:Lcom/biznessapps/loyalty/LoyaltyHandler$1;

    iget-object v2, v2, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->val$tabId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v3, v0}, Lcom/biznessapps/utils/ApiUtils;->openTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

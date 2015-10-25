.class Lcom/biznessapps/loyalty/LoyaltyHandler$1;
.super Ljava/lang/Object;
.source "LoyaltyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyHandler;->handleLoyalityAwarded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyHandler;

.field final synthetic val$alertBuilder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$loyaltyId:I

.field final synthetic val$tabId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyHandler;Landroid/app/AlertDialog$Builder;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyHandler;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->val$alertBuilder:Landroid/app/AlertDialog$Builder;

    iput p3, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->val$loyaltyId:I

    iput-object p4, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->val$tabId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->val$alertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 111
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyHandler;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/biznessapps/loyalty/LoyaltyHandler;->access$000(Lcom/biznessapps/loyalty/LoyaltyHandler;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->go:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/loyalty/LoyaltyHandler$1$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/loyalty/LoyaltyHandler$1$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyHandler$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyHandler$1;->this$0:Lcom/biznessapps/loyalty/LoyaltyHandler;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/biznessapps/loyalty/LoyaltyHandler;->access$000(Lcom/biznessapps/loyalty/LoyaltyHandler;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->close:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/loyalty/LoyaltyHandler$1$2;

    invoke-direct {v3, p0}, Lcom/biznessapps/loyalty/LoyaltyHandler$1$2;-><init>(Lcom/biznessapps/loyalty/LoyaltyHandler$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    return-void
.end method

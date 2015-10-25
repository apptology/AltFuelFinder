.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$10;
.super Ljava/lang/Object;
.source "LoyaltyV1DetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->showSuccessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 666
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 667
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    const/4 v1, 0x2

    # setter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->actionType:I
    invoke-static {v0, v1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$902(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;I)I

    .line 668
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->doActionPosting()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$300(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    .line 669
    return-void
.end method

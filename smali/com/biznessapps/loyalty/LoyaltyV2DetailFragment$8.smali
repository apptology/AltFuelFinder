.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$8;
.super Ljava/lang/Object;
.source "LoyaltyV2DetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$8;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$8;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mInfoPageDisplayed:Z
    invoke-static {v0, v1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$802(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Z)Z

    .line 488
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$8;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$500(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    .line 489
    return-void
.end method

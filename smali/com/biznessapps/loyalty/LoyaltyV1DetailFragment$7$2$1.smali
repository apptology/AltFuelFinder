.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;
.super Ljava/lang/Object;
.source "LoyaltyV1DetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->doActionPosting()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$300(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    .line 552
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->val$columnImage:Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->loyalty_coupon_icon_active:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 553
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$1000(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;

    iget-object v1, v1, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    iget-object v1, v1, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->val$columnImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 554
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->isNextCardFound:Z
    invoke-static {v0, v1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$1102(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Z)Z

    .line 556
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;->this$2:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2;->this$1:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    iget-object v0, v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->loadCouponsData()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$1200(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    .line 558
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 559
    return-void
.end method

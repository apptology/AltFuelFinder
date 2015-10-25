.class Lcom/biznessapps/coupons/CouponDetailFragment$6;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/coupons/CouponDetailFragment;->redeem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/coupons/CouponDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    const/4 v1, 0x2

    # setter for: Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I
    invoke-static {v0, v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$102(Lcom/biznessapps/coupons/CouponDetailFragment;I)I

    .line 485
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->doActionPosting()V
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$800(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    .line 486
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v1

    # setter for: Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I
    invoke-static {v0, v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$902(Lcom/biznessapps/coupons/CouponDetailFragment;I)I

    .line 487
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->checkinCount:I
    invoke-static {v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$900(Lcom/biznessapps/coupons/CouponDetailFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/coupons/CouponEntity;->setCheckinTarget(I)V

    .line 488
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/coupons/CouponEntity;->setLastRedeemedTime(J)V

    .line 489
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/coupons/CouponEntity;->setLastCheckinTime(J)V

    .line 490
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v1

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->storeCoupon(Lcom/biznessapps/coupons/CouponEntity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$1000(Lcom/biznessapps/coupons/CouponDetailFragment;Lcom/biznessapps/coupons/CouponEntity;)V

    .line 491
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->updateControls()V
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$1100(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    .line 492
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$6;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->coupon_redeemed:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 493
    return-void
.end method

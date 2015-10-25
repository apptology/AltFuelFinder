.class Lcom/biznessapps/coupons/CouponDetailFragment$1;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/coupons/CouponDetailFragment;
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
    .line 103
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$1;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 107
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment$1;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v2}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 108
    .local v0, "activity":Lcom/biznessapps/common/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v1, "data":Landroid/content/Intent;
    const-string v2, "COUPON_EXTRA"

    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment$1;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v3}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v0, v4, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 112
    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 114
    .end local v1    # "data":Landroid/content/Intent;
    :cond_0
    return v4
.end method

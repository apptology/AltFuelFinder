.class Lcom/biznessapps/coupons/CouponDetailFragment$9;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/coupons/CouponDetailFragment;->doGpsCheckin()V
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
    .line 668
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$9;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$9;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/location/LocationView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    .local v0, "showLocations":Landroid/content/Intent;
    const-string v1, "COUPON_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment$9;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v2}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 674
    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$9;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v1, v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 675
    return-void
.end method

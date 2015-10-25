.class Lcom/biznessapps/coupons/CouponDetailFragment$2;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/coupons/CouponDetailFragment;->initViews()V
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
    .line 289
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$100(Lcom/biznessapps/coupons/CouponDetailFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->redeem()V
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$200(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    .line 304
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->couponState:I
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$100(Lcom/biznessapps/coupons/CouponDetailFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->tryToUseAgain()V
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$300(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->isQrCoupon:Z
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$400(Lcom/biznessapps/coupons/CouponDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->doQrScanning()V
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$500(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->doGpsCheckin()V
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$600(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    goto :goto_0
.end method

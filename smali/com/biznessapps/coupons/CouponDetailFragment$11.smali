.class Lcom/biznessapps/coupons/CouponDetailFragment$11;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/coupons/CouponDetailFragment;->initActivities()V
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
    .line 710
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$11;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$11;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v1

    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$11;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponEntity;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/biznessapps/coupons/CouponEntity;->setSelected(Z)V

    .line 715
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$11;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponEntity;->isSelected()Z

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$11;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->postActivityCircleView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$1300(Lcom/biznessapps/coupons/CouponDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment$11;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->postActivityButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$1400(Lcom/biznessapps/coupons/CouponDetailFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment$11;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # getter for: Lcom/biznessapps/coupons/CouponDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v3}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$1500(Lcom/biznessapps/coupons/CouponDetailFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->updateTurnOnOffViewState(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V

    .line 716
    return-void

    .line 714
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/biznessapps/coupons/CouponDetailFragment$3;
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
    .line 306
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->branch_directions_title:I

    new-instance v3, Lcom/biznessapps/coupons/CouponDetailFragment$3$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/coupons/CouponDetailFragment$3$1;-><init>(Lcom/biznessapps/coupons/CouponDetailFragment$3;)V

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->showMultipleDialog(Landroid/app/Activity;ILandroid/widget/AdapterView$OnItemClickListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$700(Lcom/biznessapps/coupons/CouponDetailFragment;Landroid/app/Activity;ILandroid/widget/AdapterView$OnItemClickListener;)V

    .line 317
    return-void
.end method

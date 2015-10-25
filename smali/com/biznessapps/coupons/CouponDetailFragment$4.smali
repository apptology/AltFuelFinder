.class Lcom/biznessapps/coupons/CouponDetailFragment$4;
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
    .line 322
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$4;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$4;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 326
    return-void
.end method

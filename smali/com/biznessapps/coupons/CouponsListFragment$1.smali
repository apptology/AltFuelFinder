.class Lcom/biznessapps/coupons/CouponsListFragment$1;
.super Ljava/lang/Object;
.source "CouponsListFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/coupons/CouponsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/coupons/CouponsListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/coupons/CouponsListFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponsListFragment$1;->this$0:Lcom/biznessapps/coupons/CouponsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment$1;->this$0:Lcom/biznessapps/coupons/CouponsListFragment;

    # getter for: Lcom/biznessapps/coupons/CouponsListFragment;->preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponsListFragment;->access$000(Lcom/biznessapps/coupons/CouponsListFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment$1;->this$0:Lcom/biznessapps/coupons/CouponsListFragment;

    # getter for: Lcom/biznessapps/coupons/CouponsListFragment;->preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponsListFragment;->access$000(Lcom/biznessapps/coupons/CouponsListFragment;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/coupons/CouponEntity;->setUseAgain(Z)V

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/biznessapps/coupons/CouponDetailFragment$10;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "CouponDetailFragment.java"


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
.method constructor <init>(Lcom/biznessapps/coupons/CouponDetailFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$10;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$10;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->doActionPosting()V
    invoke-static {v0}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$800(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    .line 707
    return-void
.end method

.class Lcom/biznessapps/coupons/CouponDetailFragment$12;
.super Lcom/biznessapps/api/AsyncCallback;
.source "CouponDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/coupons/CouponDetailFragment;->doActionPosting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/coupons/CouponDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$12;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 728
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/coupons/CouponDetailFragment$12;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 732
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment$12;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v2}, Lcom/biznessapps/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 733
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 735
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasDataError(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    sget v1, Lcom/biznessapps/layout/R$string;->error_occured:I

    .line 741
    .local v1, "messageId":I
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment$12;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v2}, Lcom/biznessapps/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/coupons/CouponDetailFragment$12;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-virtual {v3, v1}, Lcom/biznessapps/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 743
    .end local v1    # "messageId":I
    :cond_0
    return-void

    .line 738
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/coupons/CouponDetailFragment$12;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->loadData()V
    invoke-static {v2}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$1600(Lcom/biznessapps/coupons/CouponDetailFragment;)V

    .line 739
    sget v1, Lcom/biznessapps/layout/R$string;->successfully_posted:I

    .restart local v1    # "messageId":I
    goto :goto_0
.end method

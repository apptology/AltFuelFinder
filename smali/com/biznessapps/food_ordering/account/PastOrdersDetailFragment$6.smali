.class Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;
.super Ljava/lang/Object;
.source "PastOrdersDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->mode:I
    invoke-static {v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$500(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # invokes: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getTimeStamp()J
    invoke-static {v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$700(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)J

    move-result-wide v1

    # setter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeStamp:J
    invoke-static {v0, v1, v2}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$602(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;J)J

    .line 392
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeStamp:J
    invoke-static {v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$600(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # invokes: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->checkAvailability()V
    invoke-static {v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$800(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->fo_select_day_time:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;I)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->fo_select_order_type:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method

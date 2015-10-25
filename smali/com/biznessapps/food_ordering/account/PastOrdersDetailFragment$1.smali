.class Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;
.super Ljava/lang/Object;
.source "PastOrdersDetailFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;
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
    .line 83
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 87
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v4, 0x0

    .line 97
    :goto_0
    return v4

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->fo_location_warning:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1$1;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;)V

    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->go_back:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    sget v7, Lcom/biznessapps/layout/R$string;->stay_here:I

    invoke-virtual {v6, v7}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

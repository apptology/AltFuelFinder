.class Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1$1;
.super Ljava/lang/Object;
.source "PastOrdersDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1$1;->this$1:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->clear()V

    .line 94
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1$1;->this$1:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 95
    return-void
.end method

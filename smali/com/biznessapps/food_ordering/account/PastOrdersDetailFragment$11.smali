.class Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$11;
.super Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
.source "PastOrdersDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->checkAvailability()V
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
    .line 589
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$11;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-direct {p0}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$11;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$11;->getResulItems()Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->openConfirmationScreen(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$1800(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Ljava/util/List;)V

    .line 594
    return-void
.end method

.class Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$10;
.super Ljava/lang/Object;
.source "PastOrdersDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineServiceButtons()V
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
    .line 557
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$10;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$10;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 562
    return-void
.end method

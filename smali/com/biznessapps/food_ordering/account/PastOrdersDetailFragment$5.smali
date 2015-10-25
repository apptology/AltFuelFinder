.class Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$5;
.super Ljava/lang/Object;
.source "PastOrdersDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$5;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$5;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$5;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$5;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeViewList:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$400(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deactivateView(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$200(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Ljava/util/List;)V

    .line 337
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$5;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$5;->val$view:Landroid/view/ViewGroup;

    # invokes: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->activateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$300(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Landroid/view/View;)V

    .line 338
    return-void
.end method

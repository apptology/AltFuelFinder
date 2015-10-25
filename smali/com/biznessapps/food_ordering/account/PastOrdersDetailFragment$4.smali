.class Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;
.super Ljava/lang/Object;
.source "PastOrdersDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineDay()V
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
    .line 242
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;->val$view:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->CALENDAR_TAG:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 247
    .local v0, "selectedCalendar":Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 248
    .local v1, "selectedDay":I
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # invokes: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineTime(I)V
    invoke-static {v2, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$000(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;I)V

    .line 249
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateViewList:Ljava/util/List;
    invoke-static {v3}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$100(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deactivateView(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$200(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Ljava/util/List;)V

    .line 250
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$4;->val$view:Landroid/view/ViewGroup;

    # invokes: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->activateView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$300(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;Landroid/view/View;)V

    .line 251
    return-void
.end method

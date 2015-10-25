.class Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;
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
    .line 415
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    iget-object v4, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v5}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$1600(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/widget/Button;

    iget-object v7, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->deliveryButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$1100(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/widget/Button;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->takeoutButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$1200(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/widget/Button;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dineInButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$1000(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/widget/Button;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/biznessapps/food_ordering/FOUtils;->updateButtons(Landroid/content/Context;Lcom/biznessapps/api/UiSettings;[Landroid/widget/Button;)Z

    move-result v0

    .line 420
    .local v0, "shouldActivate":Z
    iget-object v4, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    if-eqz v0, :cond_1

    :goto_0
    # setter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->mode:I
    invoke-static {v4, v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$502(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;I)I

    .line 421
    if-eqz v0, :cond_0

    .line 422
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # invokes: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->defineDay()V
    invoke-static {v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$1300(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)V

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->dateTimeContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$1400(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment$8;->this$0:Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->timeContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;->access$1500(Lcom/biznessapps/food_ordering/account/PastOrdersDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    return-void

    :cond_1
    move v1, v2

    .line 420
    goto :goto_0

    :cond_2
    move v1, v3

    .line 424
    goto :goto_1

    :cond_3
    move v2, v3

    .line 425
    goto :goto_2
.end method

.class Lcom/biznessapps/food_ordering/cart/CartFragment$6;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->initTipSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$6;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$6;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$6;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->firstTipButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$700(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;

    move-result-object v1

    # setter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->activeTipButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$602(Lcom/biznessapps/food_ordering/cart/CartFragment;Landroid/widget/Button;)Landroid/widget/Button;

    .line 447
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$6;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$6;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$800(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/widget/Button;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$6;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->firstTipButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$700(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$6;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->secondTipButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$900(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$6;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->thirdTipButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1000(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/biznessapps/food_ordering/FOUtils;->updateTipButtons(Landroid/content/Context;Lcom/biznessapps/api/UiSettings;[Landroid/widget/Button;)Z

    .line 448
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$6;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # invokes: Lcom/biznessapps/food_ordering/cart/CartFragment;->updateCharges()V
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1100(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    .line 449
    return-void
.end method

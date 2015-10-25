.class Lcom/biznessapps/food_ordering/cart/CartFragment$1;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->initViews(Landroid/view/ViewGroup;)V
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
    .line 184
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 188
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # setter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->paymentType:I
    invoke-static {v0, v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$002(Lcom/biznessapps/food_ordering/cart/CartFragment;I)I

    .line 189
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$100(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v1

    new-array v2, v2, [Landroid/widget/Button;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->cardButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$200(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->cashButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$300(Lcom/biznessapps/food_ordering/cart/CartFragment;)Landroid/widget/Button;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v5, v2}, Lcom/biznessapps/food_ordering/FOUtils;->updateButtons(Landroid/content/Context;Lcom/biznessapps/api/UiSettings;Z[Landroid/widget/Button;)Z

    .line 190
    return-void
.end method

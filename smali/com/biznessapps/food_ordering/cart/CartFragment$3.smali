.class Lcom/biznessapps/food_ordering/cart/CartFragment$3;
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

.field final synthetic val$hasPayments:Z


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Z)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$3;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    iput-boolean p2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$3;->val$hasPayments:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$3;->val$hasPayments:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$3;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # invokes: Lcom/biznessapps/food_ordering/cart/CartFragment;->checkout()V
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$500(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$3;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$3;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->fo_payment_not_available:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/food_ordering/cart/CartFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

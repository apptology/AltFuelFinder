.class Lcom/biznessapps/food_ordering/cart/CartFragment$14;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->showRemoveItemDialog(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

.field final synthetic val$item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$14;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$14;->val$item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 749
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$14;->val$item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 750
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$14;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # invokes: Lcom/biznessapps/food_ordering/cart/CartFragment;->initCartListView()V
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$2000(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    .line 751
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$14;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # invokes: Lcom/biznessapps/food_ordering/cart/CartFragment;->updateCharges()V
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1100(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    .line 752
    if-eqz p1, :cond_0

    .line 753
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 755
    :cond_0
    return-void
.end method

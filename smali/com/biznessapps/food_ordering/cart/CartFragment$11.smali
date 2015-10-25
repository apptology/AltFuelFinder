.class Lcom/biznessapps/food_ordering/cart/CartFragment$11;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->initCartListView()V
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
    .line 516
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$11;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedNumber(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;I)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .param p2, "quantity"    # I

    .prologue
    .line 520
    if-lez p2, :cond_0

    .line 521
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$11;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # invokes: Lcom/biznessapps/food_ordering/cart/CartFragment;->updateCharges()V
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1100(Lcom/biznessapps/food_ordering/cart/CartFragment;)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$11;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # invokes: Lcom/biznessapps/food_ordering/cart/CartFragment;->showRemoveItemDialog(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V
    invoke-static {v0, p1}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1500(Lcom/biznessapps/food_ordering/cart/CartFragment;Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V

    goto :goto_0
.end method

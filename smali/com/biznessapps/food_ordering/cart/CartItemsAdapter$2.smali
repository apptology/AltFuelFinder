.class Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;
.super Ljava/lang/Object;
.source "CartItemsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;

.field final synthetic val$item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

.field final synthetic val$priceView:Landroid/widget/TextView;

.field final synthetic val$valueView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->this$0:Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->val$item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    iput-object p3, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->val$valueView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->val$priceView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->val$item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getQuantity()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 87
    .local v0, "quantity":I
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->val$item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-virtual {v1, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setQuantity(I)V

    .line 88
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->val$valueView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->val$priceView:Landroid/widget/TextView;

    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->val$item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPrice()F

    move-result v3

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->this$0:Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->listener:Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->access$100(Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;)Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;->val$item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-interface {v1, v2, v0}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;->onChangedNumber(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;I)V

    .line 91
    return-void
.end method

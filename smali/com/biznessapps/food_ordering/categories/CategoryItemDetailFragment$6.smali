.class Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;
.super Ljava/lang/Object;
.source "CategoryItemDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->showConfirmationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$quantityValue:I

.field final synthetic val$sizeValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;ILjava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iput p2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->val$quantityValue:I

    iput-object p3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->val$sizeValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->specialInstructionView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1100(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "note":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$800(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setNote(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$800(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->val$quantityValue:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setQuantity(I)V

    .line 366
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$800(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->val$sizeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setSizeValue(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->item:Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$800(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->order:Lcom/biznessapps/food_ordering/entities/OrderEntity;
    invoke-static {v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1200(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/food_ordering/entities/OrderEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->isTaxExempted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setTaxExempted(Z)V

    .line 369
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->checkAvailability()V
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1300(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V

    .line 370
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->locker:Lcom/biznessapps/api/Locker;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1400(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/api/Locker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/Locker;->setLocked(Z)V

    .line 371
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 374
    :cond_0
    return-void
.end method

.class Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;
.super Ljava/lang/Object;
.source "CategoryItemDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->showQuantityDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 434
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->val$view:Landroid/view/View;

    sget v5, Lcom/biznessapps/layout/R$id;->quantity_edit_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, "quantityNumber":I
    if-lez v1, :cond_0

    .line 439
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->quantityViewList:Ljava/util/List;
    invoke-static {v5}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$300(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Ljava/util/List;

    move-result-object v5

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->deactivateViews(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$400(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Ljava/util/List;)V

    .line 441
    const/4 v4, 0x5

    if-gt v1, v4, :cond_2

    .line 442
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->activateViewByValue(I)V
    invoke-static {v4, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1600(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v1    # "quantityNumber":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1700(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$id;->scroll_container:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 457
    if-eqz p1, :cond_1

    .line 458
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 460
    :cond_1
    return-void

    .line 445
    .restart local v1    # "quantityNumber":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->val$itemView:Landroid/view/View;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->activateView(Landroid/view/View;)V
    invoke-static {v4, v5}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$500(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V

    .line 447
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->val$itemView:Landroid/view/View;

    sget v5, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 448
    .local v2, "textView":Landroid/widget/TextView;
    const-string v4, "%s (%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->moreText:Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$100(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->val$itemView:Landroid/view/View;

    sget v5, Lcom/biznessapps/layout/R$id;->INT_VALUE_TAG:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 450
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$9;->val$itemView:Landroid/view/View;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->updateQuantityAndPrice(Landroid/view/View;)V
    invoke-static {v4, v5}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$600(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 453
    .end local v1    # "quantityNumber":I
    .end local v2    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.class Lcom/biznessapps/food_ordering/cart/CartFragment$9;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->initEmailReceiptSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

.field final synthetic val$circleView:Landroid/widget/ImageView;

.field final synthetic val$emailLabelContainer:Landroid/view/ViewGroup;

.field final synthetic val$turnButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->val$turnButton:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->val$circleView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->val$emailLabelContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 485
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->val$turnButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 486
    .local v0, "hasTag":Z
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->val$turnButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move-object v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 487
    if-nez v0, :cond_3

    move v3, v1

    :goto_2
    iget-object v5, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->val$circleView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->val$turnButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v7}, Lcom/biznessapps/food_ordering/cart/CartFragment;->access$1400(Lcom/biznessapps/food_ordering/cart/CartFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lcom/biznessapps/utils/ViewUtils;->updateTurnOnOffViewState(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V

    .line 488
    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->val$emailLabelContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 489
    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$9;->val$emailLabelContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 490
    return-void

    .end local v0    # "hasTag":Z
    :cond_1
    move v0, v2

    .line 485
    goto :goto_0

    .line 486
    .restart local v0    # "hasTag":Z
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_3
    move v3, v2

    .line 487
    goto :goto_2

    .line 488
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_3
.end method

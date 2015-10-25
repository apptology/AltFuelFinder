.class Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$1;
.super Ljava/lang/Object;
.source "CategoryItemsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

.field final synthetic val$cartContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$1;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$1;->val$cartContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$1;->val$cartContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 54
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$1;->val$cartContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 55
    .local v0, "viewWidth":I
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$1;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->titleTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->access$000(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    return-void
.end method

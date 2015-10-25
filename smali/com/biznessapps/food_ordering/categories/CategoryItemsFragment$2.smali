.class Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;
.super Ljava/lang/Object;
.source "CategoryItemsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

.field final synthetic val$searchEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->val$searchEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->val$searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->access$102(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->val$searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 111
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->items:Ljava/util/List;
    invoke-static {v3}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->access$200(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->access$300(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;->access$400(Lcom/biznessapps/food_ordering/categories/CategoryItemsFragment;Landroid/app/Activity;Ljava/util/List;)V

    .line 112
    return-void
.end method

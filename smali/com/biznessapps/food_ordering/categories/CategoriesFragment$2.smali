.class Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;
.super Ljava/lang/Object;
.source "CategoriesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

.field final synthetic val$searchEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->val$searchEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->val$searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->access$102(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->val$searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 98
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->items:Ljava/util/List;
    invoke-static {v3}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->access$200(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->access$300(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->access$400(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Landroid/app/Activity;Ljava/util/List;)V

    .line 99
    return-void
.end method

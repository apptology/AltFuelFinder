.class Lcom/biznessapps/food_ordering/categories/CategoriesFragment$1;
.super Ljava/lang/Object;
.source "CategoriesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$1;->this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    .line 85
    .local v0, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/categories/CategoriesFragment$1;->this$0:Lcom/biznessapps/food_ordering/categories/CategoriesFragment;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->openDetail(Lcom/biznessapps/food_ordering/entities/CategoryEntity;)V
    invoke-static {v1, v0}, Lcom/biznessapps/food_ordering/categories/CategoriesFragment;->access$000(Lcom/biznessapps/food_ordering/categories/CategoriesFragment;Lcom/biznessapps/food_ordering/entities/CategoryEntity;)V

    .line 86
    return-void
.end method

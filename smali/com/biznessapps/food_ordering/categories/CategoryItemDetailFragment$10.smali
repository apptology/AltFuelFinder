.class Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$10;
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


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$10;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$10;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1800(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$id;->scroll_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 466
    if-eqz p1, :cond_0

    .line 467
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 469
    :cond_0
    return-void
.end method

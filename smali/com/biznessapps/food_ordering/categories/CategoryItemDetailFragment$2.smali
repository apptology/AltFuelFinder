.class Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$2;
.super Ljava/lang/Object;
.source "CategoryItemDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->initViews(Landroid/view/ViewGroup;)V
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
    .line 142
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$2;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # invokes: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->showConfirmationDialog()V
    invoke-static {v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$000(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)V

    .line 147
    return-void
.end method

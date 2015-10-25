.class Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$7;
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


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$7;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$7;->this$0:Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;

    # getter for: Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->locker:Lcom/biznessapps/api/Locker;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;->access$1400(Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment;)Lcom/biznessapps/api/Locker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/Locker;->setLocked(Z)V

    .line 380
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemDetailFragment$7;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 383
    :cond_0
    return-void
.end method

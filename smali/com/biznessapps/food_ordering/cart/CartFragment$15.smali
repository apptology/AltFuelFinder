.class Lcom/biznessapps/food_ordering/cart/CartFragment$15;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->showRemoveItemDialog(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$15;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 760
    if-eqz p1, :cond_0

    .line 761
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 763
    :cond_0
    return-void
.end method

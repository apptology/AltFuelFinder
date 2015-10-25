.class Lcom/biznessapps/food_ordering/categories/OptionsAdapter$2;
.super Ljava/lang/Object;
.source "OptionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

.field final synthetic val$checkView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$2;->this$0:Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$2;->val$checkView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$2;->val$checkView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 81
    return-void
.end method

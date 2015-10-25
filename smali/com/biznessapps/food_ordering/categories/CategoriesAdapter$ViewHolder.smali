.class Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CategoriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field backgroundView:Landroid/view/View;

.field itemsCountView:Landroid/widget/TextView;

.field nameView:Landroid/widget/TextView;

.field shadowView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$1;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;-><init>()V

    return-void
.end method

.class Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CartItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field addValueView:Landroid/widget/Button;

.field descriptionView:Landroid/widget/TextView;

.field nameView:Landroid/widget/TextView;

.field priceView:Landroid/widget/TextView;

.field subValueView:Landroid/widget/Button;

.field thumbnailView:Landroid/widget/ImageView;

.field valueView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$1;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;-><init>()V

    return-void
.end method

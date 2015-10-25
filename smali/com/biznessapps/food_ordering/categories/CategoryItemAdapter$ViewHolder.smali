.class Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CategoryItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field descriptionView:Landroid/widget/TextView;

.field nameView:Landroid/widget/TextView;

.field priceView:Landroid/widget/TextView;

.field thumbnailView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$1;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;-><init>()V

    return-void
.end method

.class Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PastOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/PastOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field deliveryView:Landroid/widget/TextView;

.field descriptionView:Landroid/widget/TextView;

.field priceView:Landroid/widget/TextView;

.field thumbnailView:Landroid/widget/ImageView;

.field titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/food_ordering/PastOrderAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/food_ordering/PastOrderAdapter$1;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;-><init>()V

    return-void
.end method

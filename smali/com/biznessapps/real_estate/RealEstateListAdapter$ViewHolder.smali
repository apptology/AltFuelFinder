.class Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RealEstateListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/real_estate/RealEstateListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field addressView:Landroid/widget/TextView;

.field bedroomView:Landroid/widget/TextView;

.field distanceView:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field priceView:Landroid/widget/TextView;

.field showerView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/real_estate/RealEstateListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/real_estate/RealEstateListAdapter$1;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;-><init>()V

    return-void
.end method

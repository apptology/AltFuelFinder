.class public Lcom/biznessapps/food_ordering/entities/OrderEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "OrderEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b2166f1f6ac8db2L


# instance fields
.field private categoryId:Ljava/lang/String;

.field private deliveryDate:Ljava/lang/String;

.field private isTaxExempted:Z

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private price:F

.field private quantity:I

.field private sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->deliveryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->options:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->price:F

    return v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->quantity:I

    return v0
.end method

.method public getSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->sizes:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public isTaxExempted()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->isTaxExempted:Z

    return v0
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->categoryId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDeliveryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "deliveryDate"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->deliveryDate:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->options:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setPrice(F)V
    .locals 0
    .param p1, "price"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->price:F

    .line 57
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->quantity:I

    .line 41
    return-void
.end method

.method public setSizes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->sizes:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setTaxExempted(Z)V
    .locals 0
    .param p1, "isTaxExempted"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->isTaxExempted:Z

    .line 73
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/OrderEntity;->thumbnail:Ljava/lang/String;

    .line 65
    return-void
.end method

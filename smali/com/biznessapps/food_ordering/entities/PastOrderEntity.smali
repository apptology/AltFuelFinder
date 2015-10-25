.class public Lcom/biznessapps/food_ordering/entities/PastOrderEntity;
.super Lcom/biznessapps/location/entities/LocationEntity;
.source "PastOrderEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x790a8f5a89c6720fL


# instance fields
.field private address:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private locationId:Ljava/lang/String;

.field private orderType:I

.field private orderedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail:Ljava/lang/String;

.field private time:Ljava/util/Date;

.field private timestamp:J

.field private totalAmount:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->locationId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->orderType:I

    return v0
.end method

.method public getOrderedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->orderedItems:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->timestamp:J

    return-wide v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    const-string v0, "%s %.2f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getCurrencySign()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->totalAmount:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->locationId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setOrderType(I)V
    .locals 0
    .param p1, "orderType"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->orderType:I

    .line 59
    return-void
.end method

.method public setOrderedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "orderedItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->orderedItems:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->thumbnail:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->time:Ljava/util/Date;

    .line 66
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->timestamp:J

    .line 40
    return-void
.end method

.method public setTotalAmount(F)V
    .locals 0
    .param p1, "totalAmount"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->totalAmount:F

    .line 49
    return-void
.end method

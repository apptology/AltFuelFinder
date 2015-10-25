.class public Lcom/biznessapps/food_ordering/entities/RestaurantEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "RestaurantEntity.java"


# static fields
.field private static final WEEK_NUMBER:I = 0x7

.field private static final serialVersionUID:J = -0x5732d2343936c6c1L


# instance fields
.field private convenienceFee:F

.field private convenienceFeeTaxable:Z

.field private cuisineType:Ljava/lang/String;

.field private deliveryDays:I

.field private deliveryFee:F

.field private deliveryFeeTaxable:Z

.field private deliveryMin:F

.field private deliveryRadius:F

.field private freeDeliveryAmount:F

.field private isDelivery:Z

.field private isDineIn:Z

.field private isTakeout:Z

.field private leadTime:I

.field private takeoutDays:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 24
    iput v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->takeoutDays:I

    .line 25
    iput v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryDays:I

    return-void
.end method


# virtual methods
.method public getConvenienceFee()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->convenienceFee:F

    return v0
.end method

.method public getCuisineType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->cuisineType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryDays()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryDays:I

    return v0
.end method

.method public getDeliveryFee()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryFee:F

    return v0
.end method

.method public getDeliveryMin()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryMin:F

    return v0
.end method

.method public getDeliveryRadius()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryRadius:F

    return v0
.end method

.method public getFreeDeliveryAmount()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->freeDeliveryAmount:F

    return v0
.end method

.method public getLeadTime()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->leadTime:I

    return v0
.end method

.method public getTakeoutDays()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->takeoutDays:I

    return v0
.end method

.method public isConvenienceFeeTaxable()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->convenienceFeeTaxable:Z

    return v0
.end method

.method public isDelivery()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDelivery:Z

    return v0
.end method

.method public isDeliveryFeeTaxable()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryFeeTaxable:Z

    return v0
.end method

.method public isDineIn()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDineIn:Z

    return v0
.end method

.method public isTakeout()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isTakeout:Z

    return v0
.end method

.method public setConvenienceFee(F)V
    .locals 0
    .param p1, "convenienceFee"    # F

    .prologue
    .line 96
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->convenienceFee:F

    .line 97
    return-void
.end method

.method public setConvenienceFeeTaxable(Z)V
    .locals 0
    .param p1, "convenienceFeeTaxable"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->convenienceFeeTaxable:Z

    .line 129
    return-void
.end method

.method public setCuisineType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cuisineType"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->cuisineType:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDelivery(Z)V
    .locals 0
    .param p1, "isDelivery"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDelivery:Z

    .line 57
    return-void
.end method

.method public setDeliveryDays(I)V
    .locals 0
    .param p1, "deliveryDays"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryDays:I

    .line 121
    return-void
.end method

.method public setDeliveryFee(F)V
    .locals 0
    .param p1, "deliveryFee"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryFee:F

    .line 65
    return-void
.end method

.method public setDeliveryFeeTaxable(Z)V
    .locals 0
    .param p1, "deliveryFeeTaxable"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryFeeTaxable:Z

    .line 137
    return-void
.end method

.method public setDeliveryMin(F)V
    .locals 0
    .param p1, "deliveryMin"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryMin:F

    .line 73
    return-void
.end method

.method public setDeliveryRadius(F)V
    .locals 0
    .param p1, "deliveryRadius"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->deliveryRadius:F

    .line 81
    return-void
.end method

.method public setDineIn(Z)V
    .locals 0
    .param p1, "isDineIn"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDineIn:Z

    .line 41
    return-void
.end method

.method public setFreeDeliveryAmount(F)V
    .locals 0
    .param p1, "freeDeliveryAmount"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->freeDeliveryAmount:F

    .line 89
    return-void
.end method

.method public setLeadTime(I)V
    .locals 0
    .param p1, "leadTime"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->leadTime:I

    .line 105
    return-void
.end method

.method public setTakeout(Z)V
    .locals 0
    .param p1, "isTakeout"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isTakeout:Z

    .line 49
    return-void
.end method

.method public setTakeoutDays(I)V
    .locals 0
    .param p1, "takeoutDays"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->takeoutDays:I

    .line 113
    return-void
.end method

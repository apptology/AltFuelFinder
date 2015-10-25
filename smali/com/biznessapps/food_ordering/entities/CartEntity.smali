.class public Lcom/biznessapps/food_ordering/entities/CartEntity;
.super Ljava/lang/Object;
.source "CartEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DELIVERY:I = 0x1

.field public static final DINE_IN:I = 0x3

.field public static final TAKEOUT:I = 0x2

.field private static final serialVersionUID:J = -0x6d0943ae9df22005L


# instance fields
.field private categoryId:Ljava/lang/String;

.field private clientToken:Ljava/lang/String;

.field private convenienceFee:F

.field private currency:Ljava/lang/String;

.field private currencySign:Ljava/lang/String;

.field private deliveryFee:F

.field private deliveryOption:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private timeStamp:J

.field private tip:F

.field private totalCharges:F

.field private totalItemsPrice:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "USD"

    iput-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->currency:Ljava/lang/String;

    .line 42
    const-string v0, "$"

    iput-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->currencySign:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToCart(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V
    .locals 1
    .param p1, "categoryItem"    # Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->updateValues()V

    .line 56
    return-void
.end method

.method public addToCart(Ljava/util/List;)V
    .locals 3
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
    .line 47
    .local p1, "categoryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 48
    .local v1, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    iget-object v2, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v1    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->updateValues()V

    .line 51
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->tip:F

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryOption:I

    .line 173
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    return-void
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public getConvenienceFee()F
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getConvenienceFee()F

    move-result v0

    return v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->currencySign:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryFee()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryFee:F

    return v0
.end method

.method public getDeliveryMin()F
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getDeliveryMin()F

    move-result v0

    return v0
.end method

.method public getDeliveryOption()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryOption:I

    return v0
.end method

.method public getFormattedValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "price"    # F

    .prologue
    .line 135
    const-string v0, "%s %.2f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->currencySign:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

.method public getItems()Ljava/util/List;
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
    .line 177
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    return-object v0
.end method

.method public getItemsPrice()Ljava/lang/String;
    .locals 7

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "price":F
    iget-object v3, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 165
    .local v1, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getQuantity()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPrice()F

    move-result v4

    invoke-static {v4}, Lcom/biznessapps/food_ordering/FOUtils;->getRoundValue(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    goto :goto_0

    .line 167
    .end local v1    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    :cond_0
    const-string v3, "%s %.2f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->currencySign:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->timeStamp:J

    return-wide v0
.end method

.method public getTipValue()F
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalItemsPrice:F

    iget v1, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->tip:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/biznessapps/food_ordering/FOUtils;->getRoundValue(F)F

    move-result v0

    return v0
.end method

.method public getTotalCharges()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isMeetDeliveryMinumum()Z
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalItemsPrice:F

    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getDeliveryMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFromCart(Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;)V
    .locals 1
    .param p1, "categoryItem"    # Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->updateValues()V

    .line 61
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->categoryId:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->clientToken:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->currency:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setCurrencySign(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencySign"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->currencySign:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setDeliveryOption(I)V
    .locals 2
    .param p1, "deliveryOption"    # I

    .prologue
    .line 201
    iget v1, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryOption:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 202
    .local v0, "isOptionChanged":Z
    :goto_0
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryOption:I

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/entities/CartEntity;->updateValues()V

    .line 206
    :cond_0
    return-void

    .line 201
    .end local v0    # "isOptionChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->timeStamp:J

    .line 194
    return-void
.end method

.method public setTip(F)V
    .locals 0
    .param p1, "tip"    # F

    .prologue
    .line 225
    iput p1, p0, Lcom/biznessapps/food_ordering/entities/CartEntity;->tip:F

    .line 226
    return-void
.end method

.method public updateValues()V
    .locals 20

    .prologue
    .line 68
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getRestaurantEntity()Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    move-result-object v12

    .line 69
    .local v12, "restaurantData":Lcom/biznessapps/food_ordering/entities/RestaurantEntity;
    if-eqz v12, :cond_9

    .line 70
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalItemsPrice:F

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 72
    .local v8, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalItemsPrice:F

    move/from16 v17, v0

    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getQuantity()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPrice()F

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/biznessapps/food_ordering/FOUtils;->getRoundValue(F)F

    move-result v19

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalItemsPrice:F

    goto :goto_0

    .line 75
    .end local v8    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalItemsPrice:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->tip:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FOUtils;->getRoundValue(F)F

    move-result v15

    .line 77
    .local v15, "tipValue":F
    invoke-virtual {v12}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getConvenienceFee()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->convenienceFee:F

    .line 79
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryOption:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 80
    invoke-virtual {v12}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getFreeDeliveryAmount()F

    move-result v5

    .line 81
    .local v5, "deliveryFreeAmount":F
    const/16 v17, 0x0

    cmpl-float v17, v5, v17

    if-lez v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalItemsPrice:F

    move/from16 v17, v0

    cmpl-float v17, v17, v5

    if-ltz v17, :cond_2

    .line 82
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryFee:F

    .line 91
    .end local v5    # "deliveryFreeAmount":F
    :goto_1
    const/4 v6, 0x0

    .line 92
    .local v6, "flatTax":F
    const/4 v10, 0x0

    .line 93
    .local v10, "rateTax":F
    const/4 v9, 0x0

    .line 94
    .local v9, "ratePrice":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->items:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 95
    .restart local v8    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->isTaxExempted()Z

    move-result v17

    if-nez v17, :cond_1

    .line 96
    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getQuantity()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v8}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPrice()F

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/biznessapps/food_ordering/FOUtils;->getRoundValue(F)F

    move-result v18

    mul-float v17, v17, v18

    add-float v9, v9, v17

    goto :goto_2

    .line 85
    .end local v6    # "flatTax":F
    .end local v8    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v9    # "ratePrice":F
    .end local v10    # "rateTax":F
    .restart local v5    # "deliveryFreeAmount":F
    :cond_2
    invoke-virtual {v12}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->getDeliveryFee()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryFee:F

    goto :goto_1

    .line 88
    .end local v5    # "deliveryFreeAmount":F
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryFee:F

    goto :goto_1

    .line 99
    .restart local v6    # "flatTax":F
    .restart local v9    # "ratePrice":F
    .restart local v10    # "rateTax":F
    :cond_4
    const/16 v16, 0x0

    .line 100
    .local v16, "totalTaxt":F
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getTaxes()Ljava/util/List;

    move-result-object v14

    .line 101
    .local v14, "taxList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/biznessapps/food_ordering/entities/TaxEntity;

    .line 102
    .local v13, "tax":Lcom/biznessapps/food_ordering/entities/TaxEntity;
    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 103
    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getAmount()F

    move-result v17

    add-float v6, v6, v17

    .line 105
    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getAmount()F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->setCaclulatedTax(F)V

    .line 120
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->currencySign:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->setCurrencySign(Ljava/lang/String;)V

    goto :goto_3

    .line 107
    :cond_5
    const/4 v3, 0x0

    .line 108
    .local v3, "convenienceFeeTax":F
    const/4 v4, 0x0

    .line 109
    .local v4, "deliveryFeeTax":F
    invoke-virtual {v12}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isConvenienceFeeTaxable()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->convenienceFee:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_6

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->convenienceFee:F

    move/from16 v17, v0

    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getAmount()F

    move-result v18

    mul-float v17, v17, v18

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FOUtils;->getRoundValue(F)F

    move-result v3

    .line 112
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryOption:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    invoke-virtual {v12}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->isDeliveryFeeTaxable()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryFee:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_7

    .line 113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryFee:F

    move/from16 v17, v0

    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getAmount()F

    move-result v18

    mul-float v17, v17, v18

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FOUtils;->getRoundValue(F)F

    move-result v4

    .line 115
    :cond_7
    invoke-virtual {v13}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getAmount()F

    move-result v17

    mul-float v17, v17, v9

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/biznessapps/food_ordering/FOUtils;->getRoundValue(F)F

    move-result v11

    .line 116
    .local v11, "rateWithoutFees":F
    add-float v17, v11, v3

    add-float v2, v17, v4

    .line 117
    .local v2, "calculatedTax":F
    invoke-virtual {v13, v2}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->setCaclulatedTax(F)V

    .line 118
    add-float/2addr v10, v2

    goto :goto_4

    .line 123
    .end local v2    # "calculatedTax":F
    .end local v3    # "convenienceFeeTax":F
    .end local v4    # "deliveryFeeTax":F
    .end local v11    # "rateWithoutFees":F
    .end local v13    # "tax":Lcom/biznessapps/food_ordering/entities/TaxEntity;
    :cond_8
    add-float v16, v10, v6

    .line 125
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalItemsPrice:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    .line 127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->convenienceFee:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->deliveryFee:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    move/from16 v17, v0

    add-float v17, v17, v16

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    move/from16 v17, v0

    add-float v17, v17, v15

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/biznessapps/food_ordering/entities/CartEntity;->totalCharges:F

    .line 132
    .end local v6    # "flatTax":F
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "ratePrice":F
    .end local v10    # "rateTax":F
    .end local v14    # "taxList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    .end local v15    # "tipValue":F
    .end local v16    # "totalTaxt":F
    :cond_9
    return-void
.end method

.class public Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;
.super Lcom/biznessapps/utils/json/JsonParserCommon;
.source "FoodOrderingParser.java"

# interfaces
.implements Lcom/biznessapps/utils/json/ParserConstants;
.implements Lcom/biznessapps/food_ordering/parser/FoodOrderingConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/biznessapps/utils/json/JsonParserCommon;-><init>()V

    return-void
.end method

.method public static final getAvailableItems(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 56
    .local v12, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_2

    .line 58
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 59
    .local v2, "itemData":Lorg/json/JSONObject;
    new-instance v11, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-direct {v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;-><init>()V

    .line 61
    .local v11, "order":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    const-string v13, "item_id"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setId(Ljava/lang/String;)V

    .line 62
    const-string v13, "category_id"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setCategoryId(Ljava/lang/String;)V

    .line 63
    const-string v13, "note"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setNote(Ljava/lang/String;)V

    .line 64
    const-string v13, "quantity"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setQuantity(I)V

    .line 65
    const-string v13, "size"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setSize(Ljava/lang/String;)V

    .line 66
    const-string v13, "size_id"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setSizeValue(Ljava/lang/String;)V

    .line 67
    const-string v13, "tax_exempted"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setTaxExempted(Z)V

    .line 68
    const-string v13, "price"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setPrice(F)V

    .line 69
    const-string v13, "name"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setTitle(Ljava/lang/String;)V

    .line 70
    const-string v13, "thumbnail"

    invoke-static {v2, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setImageUrl(Ljava/lang/String;)V

    .line 72
    const-string v13, "options"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 73
    .local v9, "optionsData":Lorg/json/JSONArray;
    if-eqz v9, :cond_1

    .line 74
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v8, "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 76
    .local v10, "optionsLength":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v10, :cond_0

    .line 77
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 78
    .local v7, "optionJsonItem":Lorg/json/JSONObject;
    new-instance v6, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    invoke-direct {v6}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;-><init>()V

    .line 79
    .local v6, "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    const-string v13, "option_id"

    invoke-static {v7, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setId(Ljava/lang/String;)V

    .line 80
    const-string v13, "name"

    invoke-static {v7, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setName(Ljava/lang/String;)V

    .line 81
    const-string v13, "price"

    invoke-static {v7, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v6, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setCharges(F)V

    .line 82
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 84
    .end local v6    # "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    .end local v7    # "optionJsonItem":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v11, v8}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setOptions(Ljava/util/List;)V

    .line 86
    .end local v4    # "j":I
    .end local v8    # "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    .end local v10    # "optionsLength":I
    :cond_1
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 88
    .end local v1    # "i":I
    .end local v2    # "itemData":Lorg/json/JSONObject;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "optionsData":Lorg/json/JSONArray;
    .end local v11    # "order":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v12    # "size":I
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v3
.end method

.method private static getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "openingTimes"    # Lorg/json/JSONObject;
    .param p1, "day"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v2, "intervals":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 528
    .local v0, "dayJson":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 530
    .local v5, "size":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 531
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 532
    .local v3, "item":Lorg/json/JSONObject;
    new-instance v1, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;

    invoke-direct {v1}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;-><init>()V

    .line 533
    .local v1, "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    const-string v6, "from"

    invoke-static {v3, v6}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->setFrom(I)V

    .line 534
    const-string v6, "to"

    invoke-static {v3, v6}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;->setTo(I)V

    .line 535
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 538
    .end local v1    # "interval":Lcom/biznessapps/food_ordering/locations/FOOpeningTime$Interval;
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "j":I
    .end local v5    # "size":I
    :cond_0
    return-object v2
.end method

.method public static parseAccoundData(Ljava/lang/String;)Lcom/biznessapps/food_ordering/account/AccountEntity;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v4, Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-direct {v4}, Lcom/biznessapps/food_ordering/account/AccountEntity;-><init>()V

    .line 33
    .local v4, "result":Lcom/biznessapps/food_ordering/account/AccountEntity;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 35
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v5, :cond_0

    .line 36
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 37
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v6, "address1"

    invoke-static {v3, v6}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress1(Ljava/lang/String;)V

    .line 38
    const-string v6, "address2"

    invoke-static {v3, v6}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setAddress2(Ljava/lang/String;)V

    .line 39
    const-string v6, "zipcode"

    invoke-static {v3, v6}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setZipcode(Ljava/lang/String;)V

    .line 40
    const-string v6, "phone"

    invoke-static {v3, v6}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setPhone(Ljava/lang/String;)V

    .line 41
    const-string v6, "email"

    invoke-static {v3, v6}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/food_ordering/account/AccountEntity;->setEmail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v5    # "size":I
    :cond_0
    :goto_0
    return-object v4

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseCategories(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity;>;"
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 337
    .local v8, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 338
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 339
    .local v9, "obj":Lorg/json/JSONObject;
    new-instance v0, Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    invoke-direct {v0}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;-><init>()V

    .line 341
    .local v0, "category":Lcom/biznessapps/food_ordering/entities/CategoryEntity;
    const-string v11, "id"

    invoke-static {v9, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->setId(Ljava/lang/String;)V

    .line 342
    const-string v11, "name"

    invoke-static {v9, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->setTitle(Ljava/lang/String;)V

    .line 343
    const-string v11, "total_items"

    invoke-static {v9, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->setTotalItems(I)V

    .line 344
    const-string v11, "image"

    invoke-static {v9, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->setImageUrl(Ljava/lang/String;)V

    .line 346
    const-string v11, "items"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 347
    .local v6, "itemsData":Lorg/json/JSONArray;
    if-eqz v6, :cond_1

    .line 348
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_0

    .line 350
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 351
    .local v4, "itemData":Lorg/json/JSONObject;
    new-instance v3, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-direct {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;-><init>()V

    .line 353
    .local v3, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    const-string v11, "id"

    invoke-static {v4, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setId(Ljava/lang/String;)V

    .line 354
    const-string v11, "name"

    invoke-static {v4, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setTitle(Ljava/lang/String;)V

    .line 355
    const-string v11, "description"

    invoke-static {v4, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setDescription(Ljava/lang/String;)V

    .line 356
    const-string v11, "price"

    invoke-static {v4, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v3, v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setPrice(F)V

    .line 357
    const-string v11, "thumbnail"

    invoke-static {v4, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setImageUrl(Ljava/lang/String;)V

    .line 359
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 361
    .end local v3    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v4    # "itemData":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v0, v5}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->setItems(Ljava/util/List;)V

    .line 363
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    .end local v7    # "j":I
    :cond_1
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 365
    .end local v0    # "category":Lcom/biznessapps/food_ordering/entities/CategoryEntity;
    .end local v2    # "i":I
    .end local v6    # "itemsData":Lorg/json/JSONArray;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 366
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    return-object v10
.end method

.method public static parseFoodMainData(Ljava/lang/String;)Lcom/biznessapps/food_ordering/FoodOrderingManager;
    .locals 39
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v29

    .line 375
    .local v29, "resultData":Lcom/biznessapps/food_ordering/FoodOrderingManager;
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 376
    .local v11, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v36

    if-lez v36, :cond_d

    .line 378
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 379
    .local v14, "obj":Lorg/json/JSONObject;
    const-string v36, "restaurant"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 380
    .local v27, "restaurantData":Lorg/json/JSONObject;
    if-eqz v27, :cond_0

    .line 381
    new-instance v28, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;

    invoke-direct/range {v28 .. v28}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;-><init>()V

    .line 382
    .local v28, "restaurantEntity":Lcom/biznessapps/food_ordering/entities/RestaurantEntity;
    const-string v36, "name"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setTitle(Ljava/lang/String;)V

    .line 383
    const-string v36, "description"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setDescription(Ljava/lang/String;)V

    .line 384
    const-string v36, "cuisine_type"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setCuisineType(Ljava/lang/String;)V

    .line 386
    const-string v36, "currency"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "currency":Ljava/lang/String;
    const-string v36, "currency_sign"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "currencySign":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setCurrency(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setCurrencySign(Ljava/lang/String;)V

    .line 390
    const-string v36, "is_dinein"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setDineIn(Z)V

    .line 391
    const-string v36, "is_takeout"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setTakeout(Z)V

    .line 392
    const-string v36, "is_delivery"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setDelivery(Z)V

    .line 393
    const-string v36, "delivery_fee"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setDeliveryFee(F)V

    .line 394
    const-string v36, "delivery_radius"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setDeliveryRadius(F)V

    .line 395
    const-string v36, "delivery_minimum"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setDeliveryMin(F)V

    .line 396
    const-string v36, "convenience_fee_taxable"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setConvenienceFeeTaxable(Z)V

    .line 397
    const-string v36, "delivery_fee_taxable"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setDeliveryFeeTaxable(Z)V

    .line 398
    const-string v36, "free_delivery_amount"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setFreeDeliveryAmount(F)V

    .line 399
    const-string v36, "convenience_fee"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setConvenienceFee(F)V

    .line 400
    const-string v36, "delivery_days"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setDeliveryDays(I)V

    .line 401
    const-string v36, "takeout_days"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setTakeoutDays(I)V

    .line 402
    const-string v36, "lead_time"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/RestaurantEntity;->setLeadTime(I)V

    .line 404
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->setRestaurantEntity(Lcom/biznessapps/food_ordering/entities/RestaurantEntity;)V

    .line 406
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lcom/biznessapps/food_ordering/entities/CartEntity;->setCurrency(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/biznessapps/food_ordering/entities/CartEntity;->setCurrencySign(Ljava/lang/String;)V

    .line 409
    .end local v3    # "currency":Ljava/lang/String;
    .end local v4    # "currencySign":Ljava/lang/String;
    .end local v28    # "restaurantEntity":Lcom/biznessapps/food_ordering/entities/RestaurantEntity;
    :cond_0
    const-string v36, "tax"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 410
    .local v31, "taxData":Lorg/json/JSONArray;
    if-eqz v31, :cond_3

    .line 411
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v34, "taxes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v35

    .line 413
    .local v35, "taxesNumber":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, v35

    if-ge v6, v0, :cond_2

    .line 414
    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v33

    .line 415
    .local v33, "taxObject":Lorg/json/JSONObject;
    new-instance v32, Lcom/biznessapps/food_ordering/entities/TaxEntity;

    invoke-direct/range {v32 .. v32}, Lcom/biznessapps/food_ordering/entities/TaxEntity;-><init>()V

    .line 416
    .local v32, "taxEntity":Lcom/biznessapps/food_ordering/entities/TaxEntity;
    const-string v36, "name"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->setTitle(Ljava/lang/String;)V

    .line 417
    const-string v36, "type"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->setType(I)V

    .line 418
    const-string v36, "amount"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v2

    .line 420
    .local v2, "amount":F
    const/16 v36, 0x0

    cmpl-float v36, v2, v36

    if-lez v36, :cond_1

    .line 421
    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->setAmount(F)V

    .line 422
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 425
    .end local v2    # "amount":F
    .end local v32    # "taxEntity":Lcom/biznessapps/food_ordering/entities/TaxEntity;
    .end local v33    # "taxObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->setTaxes(Ljava/util/List;)V

    .line 427
    .end local v6    # "i":I
    .end local v34    # "taxes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    .end local v35    # "taxesNumber":I
    :cond_3
    invoke-virtual/range {v29 .. v29}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v36

    const-string v37, "navbar"

    move-object/from16 v0, v37

    invoke-static {v14, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->hasNavigationBar(Z)V

    .line 428
    invoke-virtual/range {v29 .. v29}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v36

    const-string v37, "allow_tips"

    move-object/from16 v0, v37

    invoke-static {v14, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->setAllowTips(Z)V

    .line 429
    invoke-virtual/range {v29 .. v29}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v36

    const-string v37, "view_mode"

    move-object/from16 v0, v37

    invoke-static {v14, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->setViewMode(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {v29 .. v29}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v36

    const-string v37, "background"

    move-object/from16 v0, v37

    invoke-static {v14, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->setBackground(Ljava/lang/String;)V

    .line 432
    const-string v36, "payment_gateways"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    .line 433
    .local v26, "paymentJson":Lorg/json/JSONArray;
    if-eqz v26, :cond_5

    .line 434
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v30

    .line 435
    .local v30, "size":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v13, "methods":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    move/from16 v0, v30

    if-ge v10, v0, :cond_4

    .line 437
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 438
    .local v8, "itemData":Lorg/json/JSONObject;
    new-instance v7, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;

    invoke-direct {v7}, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;-><init>()V

    .line 439
    .local v7, "item":Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;
    const-string v36, "gateway_type"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;->setType(I)V

    .line 440
    const-string v36, "gateway_title"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;->setTitle(Ljava/lang/String;)V

    .line 441
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 443
    .end local v7    # "item":Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;
    .end local v8    # "itemData":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual/range {v29 .. v29}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->setPaymentGateways(Ljava/util/List;)V

    .line 445
    .end local v10    # "j":I
    .end local v13    # "methods":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CommonInfo$PaymentMethod;>;"
    .end local v30    # "size":I
    :cond_5
    const-string v36, "orders"

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 446
    .local v24, "ordersJson":Lorg/json/JSONArray;
    if-eqz v24, :cond_d

    .line 447
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v30

    .line 448
    .restart local v30    # "size":I
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v25, "pastOrders":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/PastOrderEntity;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    move/from16 v0, v30

    if-ge v6, v0, :cond_e

    .line 450
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 452
    .local v23, "ordersData":Lorg/json/JSONObject;
    const-string v36, "order_items"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 453
    .local v21, "orderItemsJson":Lorg/json/JSONArray;
    if-eqz v21, :cond_6

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v36

    if-nez v36, :cond_7

    .line 449
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 456
    :cond_7
    new-instance v7, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    invoke-direct {v7}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;-><init>()V

    .line 457
    .local v7, "item":Lcom/biznessapps/food_ordering/entities/PastOrderEntity;
    const-string v36, "order_type"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setOrderType(I)V

    .line 458
    const-string v36, "loc_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setLocationId(Ljava/lang/String;)V

    .line 459
    const-string v36, "due_on"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v36

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(JF)Ljava/util/Date;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setTime(Ljava/util/Date;)V

    .line 460
    const-string v36, "zip"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setZip(Ljava/lang/String;)V

    .line 461
    const-string v36, "total_amount"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setTotalAmount(F)V

    .line 462
    const-string v36, "currency"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setCurrency(Ljava/lang/String;)V

    .line 463
    const-string v36, "currency_sign"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setCurrencySign(Ljava/lang/String;)V

    .line 465
    const-string v36, "address_bottom_row"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setAddressBottomRow(Ljava/lang/String;)V

    .line 466
    const-string v36, "address_top_row"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setAddressTopRow(Ljava/lang/String;)V

    .line 467
    const-string v36, "address_1"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setAddress1(Ljava/lang/String;)V

    .line 468
    const-string v36, "address_2"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setAddress2(Ljava/lang/String;)V

    .line 469
    const-string v36, "city"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setCity(Ljava/lang/String;)V

    .line 470
    const-string v36, "state"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setState(Ljava/lang/String;)V

    .line 471
    const-string v36, "zip"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setZip(Ljava/lang/String;)V

    .line 473
    if-eqz v21, :cond_c

    .line 474
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 475
    .local v9, "itemsSize":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v22, "orderedItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_4
    if-ge v10, v9, :cond_b

    .line 478
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 479
    .restart local v8    # "itemData":Lorg/json/JSONObject;
    new-instance v20, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    invoke-direct/range {v20 .. v20}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;-><init>()V

    .line 481
    .local v20, "order":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    const-string v36, "item_id"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setId(Ljava/lang/String;)V

    .line 482
    const-string v36, "category_id"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setCategoryId(Ljava/lang/String;)V

    .line 483
    const-string v36, "note"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setNote(Ljava/lang/String;)V

    .line 484
    const-string v36, "quantity"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setQuantity(I)V

    .line 485
    const-string v36, "size"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setSize(Ljava/lang/String;)V

    .line 486
    const-string v36, "size_id"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setSizeValue(Ljava/lang/String;)V

    .line 487
    const-string v36, "tax_exempted"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setTaxExempted(Z)V

    .line 488
    const-string v36, "price"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v36

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setPrice(F)V

    .line 489
    const-string v36, "name"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setTitle(Ljava/lang/String;)V

    .line 490
    const-string v36, "thumbnail"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setImageUrl(Ljava/lang/String;)V

    .line 491
    if-nez v10, :cond_8

    .line 492
    const-string v36, "thumbnail"

    move-object/from16 v0, v36

    invoke-static {v8, v0}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setThumbnail(Ljava/lang/String;)V

    .line 495
    :cond_8
    const-string v36, "options"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 496
    .local v18, "optionsData":Lorg/json/JSONArray;
    if-eqz v18, :cond_a

    .line 497
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v17, "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v19

    .line 499
    .local v19, "optionsLength":I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_5
    move/from16 v0, v19

    if-ge v12, v0, :cond_9

    .line 500
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 501
    .local v16, "optionJsonItem":Lorg/json/JSONObject;
    new-instance v15, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    invoke-direct {v15}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;-><init>()V

    .line 502
    .local v15, "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    const-string v36, "option_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setId(Ljava/lang/String;)V

    .line 503
    const-string v36, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setName(Ljava/lang/String;)V

    .line 504
    const-string v36, "price"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setCharges(F)V

    .line 505
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 507
    .end local v15    # "option":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    .end local v16    # "optionJsonItem":Lorg/json/JSONObject;
    :cond_9
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->setOptions(Ljava/util/List;)V

    .line 510
    .end local v12    # "k":I
    .end local v17    # "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    .end local v19    # "optionsLength":I
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 512
    .end local v8    # "itemData":Lorg/json/JSONObject;
    .end local v18    # "optionsData":Lorg/json/JSONArray;
    .end local v20    # "order":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    :cond_b
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->setOrderedItems(Ljava/util/List;)V

    .line 514
    .end local v9    # "itemsSize":I
    .end local v10    # "j":I
    .end local v22    # "orderedItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    :cond_c
    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 519
    .end local v6    # "i":I
    .end local v7    # "item":Lcom/biznessapps/food_ordering/entities/PastOrderEntity;
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v14    # "obj":Lorg/json/JSONObject;
    .end local v21    # "orderItemsJson":Lorg/json/JSONArray;
    .end local v23    # "ordersData":Lorg/json/JSONObject;
    .end local v24    # "ordersJson":Lorg/json/JSONArray;
    .end local v25    # "pastOrders":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/PastOrderEntity;>;"
    .end local v26    # "paymentJson":Lorg/json/JSONArray;
    .end local v27    # "restaurantData":Lorg/json/JSONObject;
    .end local v30    # "size":I
    .end local v31    # "taxData":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 520
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_d
    :goto_6
    return-object v29

    .line 516
    .restart local v6    # "i":I
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v14    # "obj":Lorg/json/JSONObject;
    .restart local v24    # "ordersJson":Lorg/json/JSONArray;
    .restart local v25    # "pastOrders":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/PastOrderEntity;>;"
    .restart local v26    # "paymentJson":Lorg/json/JSONArray;
    .restart local v27    # "restaurantData":Lorg/json/JSONObject;
    .restart local v30    # "size":I
    .restart local v31    # "taxData":Lorg/json/JSONArray;
    :cond_e
    :try_start_1
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->setPastOrders(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public static final parseLocation(Ljava/lang/String;)Lcom/biznessapps/location/entities/LocationEntity;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, "location":Lcom/biznessapps/location/entities/LocationEntity;
    if-eqz p0, :cond_1

    .line 98
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 100
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v4}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v3    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .local v4, "location":Lcom/biznessapps/location/entities/LocationEntity;
    :try_start_1
    const-string v8, "id"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setId(Ljava/lang/String;)V

    .line 102
    const-string v8, "name"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setTitle(Ljava/lang/String;)V

    .line 103
    const-string v8, "image"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setImageUrl(Ljava/lang/String;)V

    .line 104
    const-string v8, "telephone"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setTelephone(Ljava/lang/String;)V

    .line 105
    const-string v8, "telephone_display"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setTelephoneDisplay(Ljava/lang/String;)V

    .line 106
    const-string v8, "email"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setEmail(Ljava/lang/String;)V

    .line 107
    const-string v8, "website"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setWebsite(Ljava/lang/String;)V

    .line 108
    const-string v8, "latitude"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setLatitude(Ljava/lang/String;)V

    .line 109
    const-string v8, "longitude"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setLongitude(Ljava/lang/String;)V

    .line 110
    const-string v8, "address_bottom_row"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setAddressBottomRow(Ljava/lang/String;)V

    .line 111
    const-string v8, "address_top_row"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setAddressTopRow(Ljava/lang/String;)V

    .line 112
    const-string v8, "address_1"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress1(Ljava/lang/String;)V

    .line 113
    const-string v8, "address_2"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress2(Ljava/lang/String;)V

    .line 114
    const-string v8, "city"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setCity(Ljava/lang/String;)V

    .line 115
    const-string v8, "state"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setState(Ljava/lang/String;)V

    .line 116
    const-string v8, "zip"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setZip(Ljava/lang/String;)V

    .line 117
    const-string v8, "comment"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setComment(Ljava/lang/String;)V

    .line 118
    const-string v8, "image1"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setImage1(Ljava/lang/String;)V

    .line 119
    const-string v8, "image2"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setImage2(Ljava/lang/String;)V

    .line 120
    const-string v8, "distance_type"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setDistanceType(Ljava/lang/String;)V

    .line 121
    const-string v8, "status"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setActiveStatus(Z)V

    .line 122
    const-string v8, "is_allowed"

    invoke-static {v5, v8}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/location/entities/LocationEntity;->setAvailable(Z)V

    .line 124
    const-string v8, "opening_times"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 125
    const-string v8, "opening_times"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "openingTimes":Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_0

    .line 128
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v6, "openTimes":Lorg/json/JSONObject;
    new-instance v1, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    invoke-direct {v1}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;-><init>()V

    .line 130
    .local v1, "foOpeningTime":Lcom/biznessapps/food_ordering/locations/FOOpeningTime;
    const/4 v8, 0x2

    const-string v9, "Monday"

    invoke-static {v6, v9}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 131
    const/4 v8, 0x3

    const-string v9, "Tuesday"

    invoke-static {v6, v9}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 132
    const/4 v8, 0x4

    const-string v9, "Wednesday"

    invoke-static {v6, v9}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 133
    const/4 v8, 0x5

    const-string v9, "Thursday"

    invoke-static {v6, v9}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 134
    const/4 v8, 0x6

    const-string v9, "Friday"

    invoke-static {v6, v9}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 135
    const/4 v8, 0x7

    const-string v9, "Saturday"

    invoke-static {v6, v9}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 136
    const/4 v8, 0x1

    const-string v9, "Sunday"

    invoke-static {v6, v9}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 137
    invoke-virtual {v4, v1}, Lcom/biznessapps/location/entities/LocationEntity;->setFoOpeningTime(Lcom/biznessapps/food_ordering/locations/FOOpeningTime;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1    # "foOpeningTime":Lcom/biznessapps/food_ordering/locations/FOOpeningTime;
    .end local v6    # "openTimes":Lorg/json/JSONObject;
    .end local v7    # "openingTimes":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v3, v4

    .line 148
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_1
    :goto_1
    return-object v3

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    new-instance v3, Lcom/biznessapps/location/entities/LocationEntity;

    .end local v3    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-direct {v3}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 145
    .restart local v3    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v3}, Lcom/biznessapps/location/entities/LocationEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 143
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .restart local v3    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    goto :goto_2

    .line 138
    .end local v3    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .restart local v4    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .restart local v7    # "openingTimes":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_0
.end method

.method public static final parseLocations(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v6, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    if-nez p0, :cond_1

    .line 154
    new-instance v0, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v0}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 155
    .local v0, "emptyItem":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v10

    const/4 v11, -0x5

    invoke-virtual {v10, v11}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setErrorCode(I)V

    .line 156
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v0    # "emptyItem":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_0
    :goto_0
    return-object v6

    .line 159
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 160
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 161
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 162
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v5, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v5}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 164
    .local v5, "location":Lcom/biznessapps/location/entities/LocationEntity;
    const-string v10, "id"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setId(Ljava/lang/String;)V

    .line 165
    const-string v10, "name"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setTitle(Ljava/lang/String;)V

    .line 166
    const-string v10, "image"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setImageUrl(Ljava/lang/String;)V

    .line 167
    const-string v10, "telephone"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setTelephone(Ljava/lang/String;)V

    .line 168
    const-string v10, "telephone_display"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setTelephoneDisplay(Ljava/lang/String;)V

    .line 169
    const-string v10, "email"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setEmail(Ljava/lang/String;)V

    .line 170
    const-string v10, "website"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setWebsite(Ljava/lang/String;)V

    .line 171
    const-string v10, "latitude"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setLatitude(Ljava/lang/String;)V

    .line 172
    const-string v10, "longitude"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setLongitude(Ljava/lang/String;)V

    .line 173
    const-string v10, "address_bottom_row"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setAddressBottomRow(Ljava/lang/String;)V

    .line 174
    const-string v10, "address_top_row"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setAddressTopRow(Ljava/lang/String;)V

    .line 175
    const-string v10, "address_1"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress1(Ljava/lang/String;)V

    .line 176
    const-string v10, "address_2"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress2(Ljava/lang/String;)V

    .line 177
    const-string v10, "city"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setCity(Ljava/lang/String;)V

    .line 178
    const-string v10, "state"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setState(Ljava/lang/String;)V

    .line 179
    const-string v10, "zip"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setZip(Ljava/lang/String;)V

    .line 180
    const-string v10, "comment"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setComment(Ljava/lang/String;)V

    .line 181
    const-string v10, "image1"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setImage1(Ljava/lang/String;)V

    .line 182
    const-string v10, "image2"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setImage2(Ljava/lang/String;)V

    .line 183
    const-string v10, "distance_type"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setDistanceType(Ljava/lang/String;)V

    .line 184
    const-string v10, "status"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setActiveStatus(Z)V

    .line 185
    const-string v10, "is_allowed"

    invoke-static {v7, v10}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/location/entities/LocationEntity;->setAvailable(Z)V

    .line 187
    const-string v10, "opening_times"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 188
    const-string v10, "opening_times"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, "openingTimes":Ljava/lang/String;
    invoke-static {v9}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "null"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_2

    .line 191
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    .local v8, "openTimes":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    invoke-direct {v2}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;-><init>()V

    .line 193
    .local v2, "foOpeningTime":Lcom/biznessapps/food_ordering/locations/FOOpeningTime;
    const/4 v10, 0x2

    const-string v11, "Monday"

    invoke-static {v8, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 194
    const/4 v10, 0x3

    const-string v11, "Tuesday"

    invoke-static {v8, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 195
    const/4 v10, 0x4

    const-string v11, "Wednesday"

    invoke-static {v8, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 196
    const/4 v10, 0x5

    const-string v11, "Thursday"

    invoke-static {v8, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 197
    const/4 v10, 0x6

    const-string v11, "Friday"

    invoke-static {v8, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 198
    const/4 v10, 0x7

    const-string v11, "Saturday"

    invoke-static {v8, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 199
    const/4 v10, 0x1

    const-string v11, "Sunday"

    invoke-static {v8, v11}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntervalsForDay(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/biznessapps/food_ordering/locations/FOOpeningTime;->addIntervals(ILjava/util/List;)V

    .line 200
    invoke-virtual {v5, v2}, Lcom/biznessapps/location/entities/LocationEntity;->setFoOpeningTime(Lcom/biznessapps/food_ordering/locations/FOOpeningTime;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    .end local v2    # "foOpeningTime":Lcom/biznessapps/food_ordering/locations/FOOpeningTime;
    .end local v8    # "openTimes":Lorg/json/JSONObject;
    .end local v9    # "openingTimes":Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 208
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v0, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v0}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 210
    .restart local v0    # "emptyItem":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setException(Ljava/lang/Exception;)V

    .line 211
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 201
    .end local v0    # "emptyItem":Lcom/biznessapps/location/entities/LocationEntity;
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .restart local v7    # "obj":Lorg/json/JSONObject;
    .restart local v9    # "openingTimes":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method public static parseOrder(Ljava/lang/String;)Lcom/biznessapps/food_ordering/entities/OrderEntity;
    .locals 14
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v9, Lcom/biznessapps/food_ordering/entities/OrderEntity;

    invoke-direct {v9}, Lcom/biznessapps/food_ordering/entities/OrderEntity;-><init>()V

    .line 220
    .local v9, "order":Lcom/biznessapps/food_ordering/entities/OrderEntity;
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 221
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 222
    .local v10, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v10, :cond_3

    .line 223
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 225
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v13, "id"

    invoke-static {v6, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setId(Ljava/lang/String;)V

    .line 226
    const-string v13, "name"

    invoke-static {v6, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setTitle(Ljava/lang/String;)V

    .line 227
    const-string v13, "price"

    invoke-static {v6, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v9, v13}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setPrice(F)V

    .line 228
    const-string v13, "thumbnail"

    invoke-static {v6, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setThumbnail(Ljava/lang/String;)V

    .line 229
    const-string v13, "image"

    invoke-static {v6, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setImageUrl(Ljava/lang/String;)V

    .line 230
    const-string v13, "tax_exempted"

    invoke-static {v6, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v9, v13}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setTaxExempted(Z)V

    .line 232
    const-string v13, "options"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 233
    .local v8, "optionsData":Lorg/json/JSONArray;
    if-eqz v8, :cond_1

    .line 234
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v7, "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_0

    .line 236
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 237
    .local v3, "itemData":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    invoke-direct {v2}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;-><init>()V

    .line 239
    .local v2, "item":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    const-string v13, "id"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setId(Ljava/lang/String;)V

    .line 240
    const-string v13, "name"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setName(Ljava/lang/String;)V

    .line 241
    const-string v13, "group"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setGroup(Ljava/lang/String;)V

    .line 242
    const-string v13, "required"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setRequired(Z)V

    .line 243
    const-string v13, "shown"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setShown(Z)V

    .line 244
    const-string v13, "min"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setMin(I)V

    .line 245
    const-string v13, "max"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setMax(I)V

    .line 246
    const-string v13, "charges"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setCharges(F)V

    .line 247
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "item":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    .end local v3    # "itemData":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v9, v7}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setOptions(Ljava/util/List;)V

    .line 251
    .end local v4    # "j":I
    .end local v7    # "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    :cond_1
    const-string v13, "sizes"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 252
    .local v12, "sizesData":Lorg/json/JSONArray;
    if-eqz v12, :cond_3

    .line 253
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v11, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;>;"
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_2

    .line 255
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 256
    .restart local v3    # "itemData":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;

    invoke-direct {v2}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;-><init>()V

    .line 258
    .local v2, "item":Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
    const-string v13, "id"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->setId(Ljava/lang/String;)V

    .line 259
    const-string v13, "size"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->setSizeName(Ljava/lang/String;)V

    .line 260
    const-string v13, "price"

    invoke-static {v3, v13}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v2, v13}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->setPrice(F)V

    .line 261
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 263
    .end local v2    # "item":Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
    .end local v3    # "itemData":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v9, v11}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setSizes(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v8    # "optionsData":Lorg/json/JSONArray;
    .end local v10    # "size":I
    .end local v11    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;>;"
    .end local v12    # "sizesData":Lorg/json/JSONArray;
    :cond_3
    :goto_2
    return-object v9

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static parseOrders(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 278
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 279
    .local v11, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_4

    .line 280
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 281
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v10, Lcom/biznessapps/food_ordering/entities/OrderEntity;

    invoke-direct {v10}, Lcom/biznessapps/food_ordering/entities/OrderEntity;-><init>()V

    .line 282
    .local v10, "order":Lcom/biznessapps/food_ordering/entities/OrderEntity;
    const-string v14, "id"

    invoke-static {v7, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setId(Ljava/lang/String;)V

    .line 283
    const-string v14, "category_id"

    invoke-static {v7, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setCategoryId(Ljava/lang/String;)V

    .line 284
    const-string v14, "name"

    invoke-static {v7, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setTitle(Ljava/lang/String;)V

    .line 285
    const-string v14, "description"

    invoke-static {v7, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setDescription(Ljava/lang/String;)V

    .line 286
    const-string v14, "price"

    invoke-static {v7, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v10, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setPrice(F)V

    .line 287
    const-string v14, "thumbnail"

    invoke-static {v7, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setThumbnail(Ljava/lang/String;)V

    .line 288
    const-string v14, "image"

    invoke-static {v7, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setImageUrl(Ljava/lang/String;)V

    .line 289
    const-string v14, "tax_exempted"

    invoke-static {v7, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v10, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setTaxExempted(Z)V

    .line 291
    const-string v14, "options"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 292
    .local v9, "optionsData":Lorg/json/JSONArray;
    if-eqz v9, :cond_1

    .line 293
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v8, "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_0

    .line 295
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 296
    .local v3, "itemData":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    invoke-direct {v2}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;-><init>()V

    .line 298
    .local v2, "item":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    const-string v14, "id"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setId(Ljava/lang/String;)V

    .line 299
    const-string v14, "name"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setName(Ljava/lang/String;)V

    .line 300
    const-string v14, "group"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setGroup(Ljava/lang/String;)V

    .line 301
    const-string v14, "required"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setRequired(Z)V

    .line 302
    const-string v14, "shown"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setShown(Z)V

    .line 303
    const-string v14, "min"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setMin(I)V

    .line 304
    const-string v14, "max"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setMax(I)V

    .line 305
    const-string v14, "charges"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->setCharges(F)V

    .line 306
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 308
    .end local v2    # "item":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    .end local v3    # "itemData":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v10, v8}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setOptions(Ljava/util/List;)V

    .line 310
    .end local v5    # "j":I
    .end local v8    # "options":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    :cond_1
    const-string v14, "sizes"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 311
    .local v13, "sizesData":Lorg/json/JSONArray;
    if-eqz v13, :cond_3

    .line 312
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v12, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;>;"
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_2

    .line 314
    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 315
    .restart local v3    # "itemData":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;

    invoke-direct {v2}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;-><init>()V

    .line 317
    .local v2, "item":Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
    const-string v14, "id"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->setId(Ljava/lang/String;)V

    .line 318
    const-string v14, "size"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->setSizeName(Ljava/lang/String;)V

    .line 319
    const-string v14, "price"

    invoke-static {v3, v14}, Lcom/biznessapps/food_ordering/parser/FoodOrderingParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v2, v14}, Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;->setPrice(F)V

    .line 320
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 322
    .end local v2    # "item":Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;
    .end local v3    # "itemData":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v10, v12}, Lcom/biznessapps/food_ordering/entities/OrderEntity;->setSizes(Ljava/util/List;)V

    .line 324
    .end local v5    # "j":I
    .end local v12    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderEntity$Size;>;"
    :cond_3
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 326
    .end local v1    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v9    # "optionsData":Lorg/json/JSONArray;
    .end local v10    # "order":Lcom/biznessapps/food_ordering/entities/OrderEntity;
    .end local v11    # "size":I
    .end local v13    # "sizesData":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4
    return-object v4
.end method

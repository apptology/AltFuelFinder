.class public Lcom/biznessapps/loyalty/LoyaltyJsonParser;
.super Lcom/biznessapps/utils/CommonParser;
.source "LoyaltyJsonParser.java"


# static fields
.field private static final COUPONS_DATA:Ljava/lang/String; = "couponsData"

.field private static final COUPON_CODE:Ljava/lang/String; = "couponCode"

.field private static final COUPON_ID:Ljava/lang/String; = "couponID"

.field private static final REWARD_ID:Ljava/lang/String; = "RewardID"

.field private static final REWARD_ITEMS:Ljava/lang/String; = "rewardItems"

.field private static final VIEW_PROGRESS:Ljava/lang/String; = "view_progress"

.field private static final VIEW_TYPE:Ljava/lang/String; = "view_type"

.field private static parser:Lcom/biznessapps/loyalty/LoyaltyJsonParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/utils/CommonParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/biznessapps/loyalty/LoyaltyJsonParser;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->parser:Lcom/biznessapps/loyalty/LoyaltyJsonParser;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyJsonParser;

    invoke-direct {v0}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;-><init>()V

    sput-object v0, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->parser:Lcom/biznessapps/loyalty/LoyaltyJsonParser;

    .line 40
    :cond_0
    sget-object v0, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->parser:Lcom/biznessapps/loyalty/LoyaltyJsonParser;

    return-object v0
.end method

.method private parseLoyaltyV1Entity(Lorg/json/JSONObject;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .locals 8
    .param p1, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 74
    new-instance v3, Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-direct {v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;-><init>()V

    .line 76
    .local v3, "item":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    const-string v7, "RewardID"

    invoke-virtual {p0, p1, v7}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setId(Ljava/lang/String;)V

    .line 77
    const-string v7, "text"

    invoke-virtual {p0, p1, v7}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setTitle(Ljava/lang/String;)V

    .line 78
    const-string v7, "thumbnail"

    invoke-virtual {p0, p1, v7}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setImageUrl(Ljava/lang/String;)V

    .line 79
    const-string v7, "background"

    invoke-virtual {p0, p1, v7}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setBackground(Ljava/lang/String;)V

    .line 80
    const-string v7, "headerImage"

    invoke-virtual {p0, p1, v7}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setHeaderImage(Ljava/lang/String;)V

    .line 81
    const-string v7, "view_progress"

    invoke-virtual {p0, p1, v7}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_0
    invoke-virtual {v3, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setShowAsPercents(Z)V

    .line 82
    const-string v6, "view_type"

    invoke-virtual {p0, p1, v6}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setUseGaugeOption(Z)V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v1, "coupons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    :try_start_0
    const-string v6, "couponsData"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 87
    .local v2, "couponsJson":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    .line 88
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 89
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 91
    .local v4, "itemJson":Lorg/json/JSONObject;
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    invoke-direct {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;-><init>()V

    .line 92
    .local v0, "coupon":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    const-string v6, "couponCode"

    invoke-virtual {p0, v4, v6}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setCouponCode(Ljava/lang/String;)V

    .line 93
    const-string v6, "couponID"

    invoke-virtual {p0, v4, v6}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setCouponId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    .line 97
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setLast(Z)V

    .line 99
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "coupon":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    .end local v1    # "coupons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    .end local v2    # "couponsJson":Lorg/json/JSONArray;
    .end local v4    # "itemJson":Lorg/json/JSONObject;
    .end local v5    # "j":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 101
    .restart local v1    # "coupons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    .restart local v2    # "couponsJson":Lorg/json/JSONArray;
    .restart local v5    # "j":I
    :cond_2
    invoke-virtual {v3, v1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setCoupons(Ljava/util/List;)V

    .line 102
    const-string v6, "current_count"

    invoke-virtual {p0, p1, v6}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setAwardedValue(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v2    # "couponsJson":Lorg/json/JSONArray;
    .end local v5    # "j":I
    :cond_3
    :goto_2
    return-object v3

    .line 104
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private parseLoyaltyV2Entity(Lorg/json/JSONObject;)Lcom/biznessapps/loyalty/LoyaltyV2Entity;
    .locals 17
    .param p1, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-direct {v4}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;-><init>()V

    .line 114
    .local v4, "item":Lcom/biznessapps/loyalty/LoyaltyV2Entity;
    const-string v15, "RewardID"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->setId(Ljava/lang/String;)V

    .line 115
    const-string v15, "text"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->setTitle(Ljava/lang/String;)V

    .line 116
    const-string v15, "thumbnail"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->setImageUrl(Ljava/lang/String;)V

    .line 117
    const-string v15, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->setBackground(Ljava/lang/String;)V

    .line 118
    const-string v15, "instruction"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->instruction:Ljava/lang/String;

    .line 119
    const-string v15, "perk_unit_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->perkUnitType:Ljava/lang/String;

    .line 120
    const-string v15, "unit_shorthand"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->unitShortHand:Ljava/lang/String;

    .line 121
    const-string v15, "total_perks"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v15

    iput v15, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->totalPerks:I

    .line 122
    const-string v15, "stamp_award_amount"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v15

    iput v15, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->stampAwardAmount:I

    .line 123
    const-string v15, "push_accept_award"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v15

    iput v15, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->pushAcceptAward:I

    .line 124
    const-string v15, "reward_on_download"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->rewardOnDownload:Z

    .line 125
    const-string v15, "reward_on_download_text"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->rewardOnDownloadText:Ljava/lang/String;

    .line 126
    const-string v15, "current_count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v4, v15}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->setAwardedValue(I)V

    .line 128
    const/4 v15, 0x1

    iput-boolean v15, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->showGaugeView:Z

    .line 131
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v10, "perks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV2Perk;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v12, "perksMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/biznessapps/loyalty/LoyaltyV2Perk;>;"
    const-string v15, "perks"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 134
    .local v11, "perksJson":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v5, v15, :cond_0

    .line 135
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 137
    .local v9, "perkJson":Lorg/json/JSONObject;
    new-instance v8, Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    invoke-direct {v8}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;-><init>()V

    .line 138
    .local v8, "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    const-string v15, "id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->setId(Ljava/lang/String;)V

    .line 139
    const-string v15, "title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->setTitle(Ljava/lang/String;)V

    .line 140
    const-string v15, "description"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->setDescription(Ljava/lang/String;)V

    .line 141
    const-string v15, "total_points"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v15

    iput v15, v8, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->totalPoints:I

    .line 142
    const-string v15, "reused"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v8, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->reused:Z

    .line 143
    const-string v15, "thumbnail"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->setImageUrl(Ljava/lang/String;)V

    .line 144
    const-string v15, "gauge_icon"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->gaugeIcon:Ljava/lang/String;

    .line 146
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    .end local v8    # "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    .end local v9    # "perkJson":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v4, v10}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->setDefinedLoyaltyPerks(Ljava/util/List;)V

    .line 152
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v3, "consumedPerks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/biznessapps/loyalty/LoyaltyV2Perk;>;"
    const-string v15, "user_loyalty_perks"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 155
    .local v13, "userLoyaltyJson":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 156
    .local v7, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v13, :cond_4

    if-eqz v7, :cond_4

    .line 157
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 158
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 159
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, "value":Ljava/lang/String;
    const-string v15, "-1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 162
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 163
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .line 164
    .local v2, "consumedPerk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    const/4 v15, 0x1

    iput-boolean v15, v2, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isConsumed:Z

    .line 165
    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    .end local v2    # "consumedPerk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    :cond_2
    const-string v15, "Loyalty"

    const-string v16, "consumed perk id doesn\'t included at the perk list"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    .end local v6    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_3
    iput-object v3, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->consumedLoyaltyPerks:Ljava/util/HashMap;

    .line 175
    :cond_4
    return-object v4
.end method


# virtual methods
.method public parseLoyaltyList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyCommonEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v6, "loyaltyList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyCommonEntity;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "jsonRoot":Lorg/json/JSONObject;
    const-string v8, "rewardItems"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 54
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 55
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 58
    .local v7, "obj":Lorg/json/JSONObject;
    const-string v8, "is_advanced"

    invoke-virtual {p0, v7, v8}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    .line 59
    .local v3, "isAdvanced":Z
    if-eqz v3, :cond_0

    .line 60
    invoke-direct {p0, v7}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->parseLoyaltyV2Entity(Lorg/json/JSONObject;)Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    move-result-object v0

    .line 65
    .local v0, "commonEntity":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    :goto_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "commonEntity":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    :cond_0
    invoke-direct {p0, v7}, Lcom/biznessapps/loyalty/LoyaltyJsonParser;->parseLoyaltyV1Entity(Lorg/json/JSONObject;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "commonEntity":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    goto :goto_1

    .line 67
    .end local v0    # "commonEntity":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    .end local v2    # "i":I
    .end local v3    # "isAdvanced":Z
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

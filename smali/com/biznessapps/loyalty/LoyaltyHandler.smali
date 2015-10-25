.class public Lcom/biznessapps/loyalty/LoyaltyHandler;
.super Ljava/lang/Object;
.source "LoyaltyHandler.java"


# static fields
.field private static final PREFS_KEY_LOYALTY_V5_DATA_PUBLISHED:Ljava/lang/String; = "LOYALTY_V5_DATA_PUBLISHED"

.field private static instance:Lcom/biznessapps/loyalty/LoyaltyHandler;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyHandler;->setContext(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/loyalty/LoyaltyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/loyalty/LoyaltyHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/biznessapps/loyalty/LoyaltyHandler;->instance:Lcom/biznessapps/loyalty/LoyaltyHandler;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyHandler;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/loyalty/LoyaltyHandler;->instance:Lcom/biznessapps/loyalty/LoyaltyHandler;

    .line 35
    :cond_0
    sget-object v0, Lcom/biznessapps/loyalty/LoyaltyHandler;->instance:Lcom/biznessapps/loyalty/LoyaltyHandler;

    invoke-virtual {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyHandler;->setContext(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lcom/biznessapps/loyalty/LoyaltyHandler;->instance:Lcom/biznessapps/loyalty/LoyaltyHandler;

    return-object v0
.end method


# virtual methods
.method public getOldLoyaltyDataTillV5()Ljava/lang/String;
    .locals 13

    .prologue
    .line 50
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;

    const-string v11, "LOYALTY_V5_DATA_PUBLISHED"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/biznessapps/api/CachingManager;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 52
    .local v8, "published":I
    if-nez v8, :cond_1

    .line 53
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/storage/StorageKeeper;->getAllLoyaltyItems()[Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v2

    .line 55
    .local v2, "entities":[Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .local v3, "entitiesObj":Lorg/json/JSONObject;
    move-object v0, v2

    .local v0, "arr$":[Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v0, v5

    .line 58
    .local v4, "entity":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :try_start_0
    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getApprovedCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "entity":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "oldData":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    const-string v12, "LOYALTY_V5_DATA_PUBLISHED"

    invoke-virtual {v9, v10, v11, v12}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;ILjava/lang/String;)V

    .line 71
    .end local v0    # "arr$":[Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .end local v2    # "entities":[Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .end local v3    # "entitiesObj":Lorg/json/JSONObject;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "oldData":Ljava/lang/String;
    :goto_2
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public handleLoyalityAwarded(Ljava/lang/String;)V
    .locals 14
    .param p1, "postDevTokenResponse"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 82
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v7, "responseObj":Lorg/json/JSONObject;
    const-string v12, "download_loyalty_awarded"

    invoke-static {v7, v12}, Lcom/biznessapps/utils/json/JsonParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "loyalityAwarded":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 85
    const-string v12, "download_loyalty_awarded_tab_id"

    invoke-static {v7, v12}, Lcom/biznessapps/utils/json/JsonParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "tabId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 89
    .local v8, "showDialog":Z
    invoke-static {}, Lcom/biznessapps/api/navigation/NavigationManager;->getTabsItems()Ljava/util/List;

    move-result-object v11

    .line 90
    .local v11, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/biznessapps/more/Tab;

    .line 91
    .local v9, "tab":Lcom/biznessapps/more/Tab;
    invoke-virtual {v9}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 92
    const/4 v8, 0x1

    .line 96
    .end local v9    # "tab":Lcom/biznessapps/more/Tab;
    :cond_1
    if-eqz v8, :cond_3

    .line 97
    iget-object v12, p0, Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;

    sget v13, Lcom/biznessapps/layout/R$string;->you_were_awarded_a_stamp_title:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "loyaltyTitle":Ljava/lang/String;
    const-string v12, "download_loyalty_awarded_body"

    invoke-static {v7, v12}, Lcom/biznessapps/utils/json/JsonParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "loyaltyBody":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 100
    iget-object v12, p0, Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;

    sget v13, Lcom/biznessapps/layout/R$string;->you_were_awarded_a_stamp_description:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    :cond_2
    const-string v12, "download_loyalty_awarded"

    invoke-static {v7, v12}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 103
    .local v5, "loyaltyId":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 106
    iget-object v12, p0, Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;

    check-cast v12, Landroid/app/Activity;

    new-instance v13, Lcom/biznessapps/loyalty/LoyaltyHandler$1;

    invoke-direct {v13, p0, v0, v5, v10}, Lcom/biznessapps/loyalty/LoyaltyHandler$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyHandler;Landroid/app/AlertDialog$Builder;ILjava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "loyalityAwarded":Ljava/lang/String;
    .end local v4    # "loyaltyBody":Ljava/lang/String;
    .end local v5    # "loyaltyId":I
    .end local v6    # "loyaltyTitle":Ljava/lang/String;
    .end local v7    # "responseObj":Lorg/json/JSONObject;
    .end local v8    # "showDialog":Z
    .end local v10    # "tabId":Ljava/lang/String;
    .end local v11    # "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :cond_3
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAllLoyalityItems()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageKeeper;->removeAllLoyaltyItems()V

    .line 76
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyHandler;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

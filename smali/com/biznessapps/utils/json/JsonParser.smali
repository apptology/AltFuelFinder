.class public Lcom/biznessapps/utils/json/JsonParser;
.super Lcom/biznessapps/utils/json/JsonParserCommon;
.source "JsonParser.java"

# interfaces
.implements Lcom/biznessapps/utils/json/ParserConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/biznessapps/utils/json/JsonParserCommon;-><init>()V

    return-void
.end method

.method public static final getBackground(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1663
    const/4 v0, 0x0

    .line 1665
    .local v0, "background":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1666
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 1668
    .local v4, "size":I
    if-lez v4, :cond_0

    .line 1669
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1670
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "background"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1675
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "size":I
    :cond_0
    :goto_0
    return-object v0

    .line 1672
    :catch_0
    move-exception v1

    .line 1673
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBearerToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2379
    const/4 v1, 0x0

    .line 2381
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2382
    .local v2, "rootObject":Lorg/json/JSONObject;
    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2386
    .end local v2    # "rootObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 2383
    :catch_0
    move-exception v0

    .line 2384
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFlickrUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1362
    const/4 v1, 0x0

    .line 1364
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "user"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1369
    .end local v2    # "root":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getGalleries(Ljava/lang/String;)Lcom/biznessapps/flickr/Galleries;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1399
    const/4 v2, 0x0

    .line 1400
    .local v2, "result":Lcom/biznessapps/flickr/Galleries;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1402
    .local v0, "g":Lcom/google/gson/Gson;
    :try_start_0
    const-class v3, Lcom/biznessapps/flickr/RespGalleries;

    invoke-virtual {v0, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/flickr/RespGalleries;

    .line 1403
    .local v1, "p":Lcom/biznessapps/flickr/RespGalleries;
    invoke-virtual {v1}, Lcom/biznessapps/flickr/RespGalleries;->getGalleries()Lcom/biznessapps/flickr/Galleries;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1406
    .end local v1    # "p":Lcom/biznessapps/flickr/RespGalleries;
    :goto_0
    return-object v2

    .line 1404
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getNetworkResult(Ljava/lang/String;)Lcom/biznessapps/common/entities/NetworkResultEntity;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2462
    new-instance v4, Lcom/biznessapps/common/entities/NetworkResultEntity;

    invoke-direct {v4}, Lcom/biznessapps/common/entities/NetworkResultEntity;-><init>()V

    .line 2464
    .local v4, "result":Lcom/biznessapps/common/entities/NetworkResultEntity;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2465
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 2468
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2470
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setErrorCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2476
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v4

    .line 2473
    :catch_0
    move-exception v0

    .line 2474
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getNewsSettings(Ljava/lang/String;)Lcom/biznessapps/news/NewsSettings;
    .locals 13
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2325
    const/4 v7, 0x0

    .line 2327
    .local v7, "result":Lcom/biznessapps/news/NewsSettings;
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2329
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v8, Lcom/biznessapps/news/NewsSettings;

    invoke-direct {v8}, Lcom/biznessapps/news/NewsSettings;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2330
    .end local v7    # "result":Lcom/biznessapps/news/NewsSettings;
    .local v8, "result":Lcom/biznessapps/news/NewsSettings;
    :try_start_1
    const-string v11, "google_key"

    invoke-static {v5, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/biznessapps/news/NewsSettings;->setGoogleSearchKey(Ljava/lang/String;)V

    .line 2331
    const-string v11, "twitter_key"

    invoke-static {v5, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/biznessapps/news/NewsSettings;->setTwitterSearchKey(Ljava/lang/String;)V

    .line 2334
    const-string v11, "google_news"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2335
    .local v1, "googleJsonList":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 2336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2337
    .local v2, "googleList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 2338
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2339
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/biznessapps/news/SearchEntity;

    invoke-direct {v6}, Lcom/biznessapps/news/SearchEntity;-><init>()V

    .line 2340
    .local v6, "object":Lcom/biznessapps/news/SearchEntity;
    const-string v11, "title"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setTitle(Ljava/lang/String;)V

    .line 2341
    const-string v11, "author"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setName(Ljava/lang/String;)V

    .line 2342
    const-string v11, "content"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setText(Ljava/lang/String;)V

    .line 2343
    const-string v11, "url"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setLink(Ljava/lang/String;)V

    .line 2344
    const-string v11, "published"

    invoke-static {v4, v11}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lcom/biznessapps/news/SearchEntity;->setTimeStamp(J)V

    .line 2345
    const-string v11, "image"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setImageUrl(Ljava/lang/String;)V

    .line 2346
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setNewsSource(I)V

    .line 2347
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2337
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2349
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "object":Lcom/biznessapps/news/SearchEntity;
    :cond_0
    invoke-virtual {v8, v2}, Lcom/biznessapps/news/NewsSettings;->setGoogleSearchList(Ljava/util/List;)V

    .line 2352
    .end local v2    # "googleList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    .end local v3    # "i":I
    :cond_1
    const-string v11, "twitter_news"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 2353
    .local v9, "twitterJsonList":Lorg/json/JSONArray;
    if-eqz v9, :cond_3

    .line 2354
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2355
    .local v10, "twitterList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 2356
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2357
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/biznessapps/news/SearchEntity;

    invoke-direct {v6}, Lcom/biznessapps/news/SearchEntity;-><init>()V

    .line 2358
    .restart local v6    # "object":Lcom/biznessapps/news/SearchEntity;
    const-string v11, "title"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setTitle(Ljava/lang/String;)V

    .line 2359
    const-string v11, "author"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setName(Ljava/lang/String;)V

    .line 2360
    const-string v11, "content"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setText(Ljava/lang/String;)V

    .line 2361
    const-string v11, "url"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setLink(Ljava/lang/String;)V

    .line 2362
    const-string v11, "published"

    invoke-static {v4, v11}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lcom/biznessapps/news/SearchEntity;->setTimeStamp(J)V

    .line 2363
    const-string v11, "image"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setImageUrl(Ljava/lang/String;)V

    .line 2364
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Lcom/biznessapps/news/SearchEntity;->setNewsSource(I)V

    .line 2365
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2355
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2367
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "object":Lcom/biznessapps/news/SearchEntity;
    :cond_2
    invoke-virtual {v8, v10}, Lcom/biznessapps/news/NewsSettings;->setTwitterSearchList(Ljava/util/List;)V

    .line 2370
    .end local v3    # "i":I
    .end local v10    # "twitterList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    :cond_3
    const-string v11, "background"

    invoke-static {v5, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/biznessapps/news/NewsSettings;->setBackground(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 2374
    .end local v1    # "googleJsonList":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v8    # "result":Lcom/biznessapps/news/NewsSettings;
    .end local v9    # "twitterJsonList":Lorg/json/JSONArray;
    .restart local v7    # "result":Lcom/biznessapps/news/NewsSettings;
    :goto_2
    return-object v7

    .line 2371
    :catch_0
    move-exception v0

    .line 2372
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2371
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "result":Lcom/biznessapps/news/NewsSettings;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    .restart local v8    # "result":Lcom/biznessapps/news/NewsSettings;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "result":Lcom/biznessapps/news/NewsSettings;
    .restart local v7    # "result":Lcom/biznessapps/news/NewsSettings;
    goto :goto_3
.end method

.method public static getPhotoStream(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1335
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v10, "root":Lorg/json/JSONObject;
    const-string v14, "photos"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "photo"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1339
    .local v7, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v3, v14, :cond_0

    .line 1340
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1341
    .local v8, "obj":Lorg/json/JSONObject;
    new-instance v6, Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {v6}, Lcom/biznessapps/gallery/GalleryData$Item;-><init>()V

    .line 1343
    .local v6, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    const-string v14, "id"

    invoke-static {v8, v14}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1344
    .local v4, "id":Ljava/lang/String;
    const-string v14, "farm"

    invoke-static {v8, v14}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1345
    .local v2, "farm":Ljava/lang/String;
    const-string v14, "secret"

    invoke-static {v8, v14}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1346
    .local v11, "secret":Ljava/lang/String;
    const-string v14, "server"

    invoke-static {v8, v14}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1347
    .local v12, "server":Ljava/lang/String;
    const-string v14, "title"

    invoke-static {v8, v14}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1349
    .local v5, "info":Ljava/lang/String;
    const-string v14, "https://farm%s.staticflickr.com/%s/%s_%s.jpg"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    const/16 v16, 0x2

    aput-object v4, v15, v16

    const/16 v16, 0x3

    aput-object v11, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1351
    .local v13, "url":Ljava/lang/String;
    invoke-virtual {v6, v13}, Lcom/biznessapps/gallery/GalleryData$Item;->setFullUrl(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v6, v5}, Lcom/biznessapps/gallery/GalleryData$Item;->setInfo(Ljava/lang/String;)V

    .line 1353
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1355
    .end local v2    # "farm":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "info":Ljava/lang/String;
    .end local v6    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v10    # "root":Lorg/json/JSONObject;
    .end local v11    # "secret":Ljava/lang/String;
    .end local v12    # "server":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1356
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1358
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    return-object v9
.end method

.method public static getPhotosInGallery(Ljava/lang/String;)Lcom/biznessapps/flickr/Photos;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1410
    const/4 v1, 0x0

    .line 1411
    .local v1, "result":Lcom/biznessapps/flickr/Photos;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1413
    .local v0, "g":Lcom/google/gson/Gson;
    :try_start_0
    const-class v3, Lcom/biznessapps/flickr/RespGalleryPhotos;

    invoke-virtual {v0, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/flickr/RespGalleryPhotos;

    .line 1414
    .local v2, "s":Lcom/biznessapps/flickr/RespGalleryPhotos;
    invoke-virtual {v2}, Lcom/biznessapps/flickr/RespGalleryPhotos;->getPhotos()Lcom/biznessapps/flickr/Photos;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1417
    .end local v2    # "s":Lcom/biznessapps/flickr/RespGalleryPhotos;
    :goto_0
    return-object v1

    .line 1415
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getPhotosInPhotoset(Ljava/lang/String;)Lcom/biznessapps/flickr/Photoset;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1373
    new-instance v6, Lcom/biznessapps/flickr/Photoset;

    invoke-direct {v6}, Lcom/biznessapps/flickr/Photoset;-><init>()V

    .line 1374
    .local v6, "result":Lcom/biznessapps/flickr/Photoset;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    .local v5, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/Photo;>;"
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1377
    .local v7, "root":Lorg/json/JSONObject;
    const-string v8, "photoset"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "photo"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1378
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1379
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1380
    .local v4, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/flickr/Photo;

    invoke-direct {v2}, Lcom/biznessapps/flickr/Photo;-><init>()V

    .line 1382
    .local v2, "item":Lcom/biznessapps/flickr/Photo;
    const-string v8, "id"

    invoke-static {v4, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/biznessapps/flickr/Photo;->setId(Ljava/lang/String;)V

    .line 1383
    const-string v8, "title"

    invoke-static {v4, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/biznessapps/flickr/Photo;->setTitle(Ljava/lang/String;)V

    .line 1384
    const-string v8, "url_m"

    invoke-static {v4, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/biznessapps/flickr/Photo;->setUrl(Ljava/lang/String;)V

    .line 1385
    const-string v8, "farm"

    invoke-static {v4, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/biznessapps/flickr/Photo;->setFarm(Ljava/lang/String;)V

    .line 1386
    const-string v8, "secret"

    invoke-static {v4, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/biznessapps/flickr/Photo;->setSecret(Ljava/lang/String;)V

    .line 1387
    const-string v8, "server"

    invoke-static {v4, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/biznessapps/flickr/Photo;->setServer(Ljava/lang/String;)V

    .line 1389
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1391
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/flickr/Photo;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v7    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1392
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1394
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v6, v5}, Lcom/biznessapps/flickr/Photoset;->setPhotos(Ljava/util/List;)V

    .line 1395
    return-object v6
.end method

.method public static getPhotosets(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/flickr/Photoset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/Photoset;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v6, "root":Lorg/json/JSONObject;
    const-string v7, "photosets"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "photoset"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1314
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 1315
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1316
    .local v4, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/flickr/Photoset;

    invoke-direct {v2}, Lcom/biznessapps/flickr/Photoset;-><init>()V

    .line 1318
    .local v2, "item":Lcom/biznessapps/flickr/Photoset;
    const-string v7, "id"

    invoke-static {v4, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/flickr/Photoset;->setId(Ljava/lang/String;)V

    .line 1319
    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "_content"

    invoke-static {v7, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/flickr/Photoset;->setTitle(Ljava/lang/String;)V

    .line 1320
    const-string v7, "farm"

    invoke-static {v4, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/flickr/Photoset;->setFarm(Ljava/lang/String;)V

    .line 1321
    const-string v7, "secret"

    invoke-static {v4, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/flickr/Photoset;->setSecret(Ljava/lang/String;)V

    .line 1322
    const-string v7, "server"

    invoke-static {v4, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/flickr/Photoset;->setServer(Ljava/lang/String;)V

    .line 1323
    const-string v7, "primary"

    invoke-static {v4, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/flickr/Photoset;->setPrimary(Ljava/lang/String;)V

    .line 1324
    const-string v7, "description"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "_content"

    invoke-static {v7, v8}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/flickr/Photoset;->setDescription(Ljava/lang/String;)V

    .line 1326
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1328
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/flickr/Photoset;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1331
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    return-object v5
.end method

.method public static final getTellFriendImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 934
    const/4 v4, 0x0

    .line 936
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 937
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 938
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 939
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "image"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 941
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 944
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static getTwitterIconUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2395
    const/4 v1, 0x0

    .line 2397
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2398
    .local v2, "rootObject":Lorg/json/JSONObject;
    const-string v3, "profile_image_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2402
    .end local v2    # "rootObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 2399
    :catch_0
    move-exception v0

    .line 2400
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasDataError(Ljava/lang/String;)Z
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2493
    const/4 v1, 0x0

    .line 2495
    .local v1, "hasError":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2496
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 2499
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2501
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 2502
    const/4 v1, 0x1

    .line 2509
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v1

    .line 2506
    :catch_0
    move-exception v0

    .line 2507
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hasInvalidTokenError(Ljava/lang/String;)Z
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2513
    const/4 v1, 0x0

    .line 2515
    .local v1, "hasError":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2516
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 2519
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2521
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 2522
    const/4 v1, 0x1

    .line 2529
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v1

    .line 2526
    :catch_0
    move-exception v0

    .line 2527
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAllowedCommenting(Ljava/lang/String;)Z
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2452
    const/4 v0, 0x0

    .line 2454
    .local v0, "isAllowed":Z
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2455
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "allow_comment"

    invoke-static {v1, v2}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2458
    .end local v1    # "root":Lorg/json/JSONObject;
    :goto_0
    return v0

    .line 2456
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isSuccess(Ljava/lang/String;)Z
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2480
    const/4 v1, 0x0

    .line 2482
    .local v1, "isSuccess":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2483
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2484
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2488
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return v1

    .line 2485
    :catch_0
    move-exception v0

    .line 2486
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final parseActivitiesList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/ActivityEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1777
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .local v1, "activitiesList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/ActivityEntity;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1780
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 1781
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1782
    .local v8, "obj":Lorg/json/JSONObject;
    new-instance v5, Lcom/biznessapps/coupons/ActivityEntity;

    invoke-direct {v5}, Lcom/biznessapps/coupons/ActivityEntity;-><init>()V

    .line 1784
    .local v5, "item":Lcom/biznessapps/coupons/ActivityEntity;
    const-string v10, "action"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 1785
    .local v0, "action":I
    const-string v10, "sequence"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    .line 1786
    .local v9, "sequence":I
    const-string v10, "name"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1787
    .local v7, "name":Ljava/lang/String;
    const-string v10, "avatar_url"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1789
    .local v2, "avatarUrl":Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1790
    invoke-virtual {v5, v0}, Lcom/biznessapps/coupons/ActivityEntity;->setAction(I)V

    .line 1791
    invoke-virtual {v5, v9}, Lcom/biznessapps/coupons/ActivityEntity;->setSequence(I)V

    .line 1792
    invoke-virtual {v5, v7}, Lcom/biznessapps/coupons/ActivityEntity;->setName(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v5, v2}, Lcom/biznessapps/coupons/ActivityEntity;->setAvatarUrl(Ljava/lang/String;)V

    .line 1794
    const-string v10, "perk"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/coupons/ActivityEntity;->setPerk(Ljava/lang/String;)V

    .line 1795
    const-string v10, "points"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/coupons/ActivityEntity;->setPoints(I)V

    .line 1796
    const-string v10, "time"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/biznessapps/coupons/ActivityEntity;->setTimeStamp(J)V

    .line 1797
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1800
    .end local v0    # "action":I
    .end local v2    # "avatarUrl":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/biznessapps/coupons/ActivityEntity;
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "sequence":I
    :catch_0
    move-exception v3

    .line 1801
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1804
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v10, Lcom/biznessapps/utils/json/JsonParser$1;

    invoke-direct {v10}, Lcom/biznessapps/utils/json/JsonParser$1;-><init>()V

    invoke-static {v1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1819
    return-object v1
.end method

.method public static final parseAppInfo(Lorg/json/JSONObject;)Lcom/biznessapps/common/entities/AppInfoEntity;
    .locals 21
    .param p0, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 859
    new-instance v3, Lcom/biznessapps/common/entities/AppInfoEntity;

    invoke-direct {v3}, Lcom/biznessapps/common/entities/AppInfoEntity;-><init>()V

    .line 860
    .local v3, "appInfo":Lcom/biznessapps/common/entities/AppInfoEntity;
    const-string v17, "image"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/biznessapps/common/entities/AppInfoEntity;->setImageUrl(Ljava/lang/String;)V

    .line 861
    const-string v17, "imagesInOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 862
    const-string v17, "imagesInOrder"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 863
    .local v4, "imagesInUrlJson":Lorg/json/JSONArray;
    const-string v17, "manyImages"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "yes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 864
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/biznessapps/common/entities/AppInfoEntity;->setHasManyImages(Z)V

    .line 866
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v5, "imagesUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_1

    .line 868
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 869
    .local v16, "url":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 871
    .end local v16    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v5}, Lcom/biznessapps/common/entities/AppInfoEntity;->setImagesInOrder(Ljava/util/List;)V

    .line 873
    .end local v4    # "imagesInUrlJson":Lorg/json/JSONArray;
    .end local v5    # "imagesUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "j":I
    :cond_2
    const-string v17, "linkedTabs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 874
    const-string v17, "linkedTabs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 875
    .local v9, "linkedTabsJSON":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v8, "linkedTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_3

    .line 877
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 878
    .local v7, "jsonItem":Lorg/json/JSONObject;
    new-instance v15, Lcom/biznessapps/more/Tab;

    invoke-direct {v15}, Lcom/biznessapps/more/Tab;-><init>()V

    .line 879
    .local v15, "tab":Lcom/biznessapps/more/Tab;
    const-string v17, "tab_id"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/biznessapps/more/Tab;->setTabId(Ljava/lang/String;)V

    .line 880
    const-string v17, "item_id"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/biznessapps/more/Tab;->setItemId(Ljava/lang/String;)V

    .line 881
    const-string v17, "cat_id"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/biznessapps/more/Tab;->setSectionId(Ljava/lang/String;)V

    .line 882
    const-string v17, "view"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/biznessapps/more/Tab;->setViewController(Ljava/lang/String;)V

    .line 883
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 885
    .end local v7    # "jsonItem":Lorg/json/JSONObject;
    .end local v15    # "tab":Lcom/biznessapps/more/Tab;
    :cond_3
    invoke-virtual {v3, v8}, Lcom/biznessapps/common/entities/AppInfoEntity;->setImagesLinkedTabs(Ljava/util/List;)V

    .line 887
    .end local v6    # "j":I
    .end local v8    # "linkedTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    .end local v9    # "linkedTabsJSON":Lorg/json/JSONArray;
    :cond_4
    const-string v17, "only4ipad"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/biznessapps/common/entities/AppInfoEntity;->setForIpadOnly(Z)V

    .line 888
    const-string v17, "addresses"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 889
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppInfoEntity;->getLocations()Ljava/util/List;

    move-result-object v17

    const-string v18, "addresses"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/biznessapps/utils/json/JsonParser;->parseLocation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 891
    :cond_5
    const-string v17, "home_sub_tabs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 892
    const-string v17, "home_sub_tabs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 893
    .local v14, "subTabsJson":Lorg/json/JSONArray;
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    .line 894
    .local v10, "r":Ljava/util/Random;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v13, "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_7

    .line 896
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 898
    .local v11, "subItem":Lorg/json/JSONObject;
    new-instance v12, Lcom/biznessapps/more/Tab;

    invoke-direct {v12}, Lcom/biznessapps/more/Tab;-><init>()V

    .line 899
    .local v12, "subTab":Lcom/biznessapps/more/Tab;
    const-string v17, "tab_id"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabId(Ljava/lang/String;)V

    .line 900
    const-string v17, "TabImage"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setImage(Ljava/lang/String;)V

    .line 901
    const-string v17, "Custom_Icon"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 902
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UrlWrapper;->getHost()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "images/subtabicons/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabImageUrl(Ljava/lang/String;)V

    .line 909
    :goto_3
    const-string v17, "ViewController"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setViewController(Ljava/lang/String;)V

    .line 910
    const-string v17, "NavigationController"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setNavigationController(Ljava/lang/String;)V

    .line 911
    const-string v17, "LastUpdated"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setLastUpdated(Ljava/lang/String;)V

    .line 912
    const-string v17, "TabLabelText"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setLabel(Ljava/lang/String;)V

    .line 914
    const-string v17, "TabLabelFont"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabLabelFont(Ljava/lang/String;)V

    .line 915
    const-string v17, "TabLableTextColor"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabLabelTextColor(Ljava/lang/String;)V

    .line 916
    const-string v17, "TabLableTextBackgroundColor"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabLabelTextBgColor(Ljava/lang/String;)V

    .line 917
    const-string v17, "seq"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setSeq(I)V

    .line 918
    const-string v17, "is_hide"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setHide(Z)V

    .line 923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v12, v0, v1}, Lcom/biznessapps/more/Tab;->setId(J)V

    .line 924
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 904
    :cond_6
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, "appId":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UrlWrapper;->getHost()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "uploads/cutom_icon/%s/%s"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v2, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabImageUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 926
    .end local v2    # "appId":Ljava/lang/String;
    .end local v11    # "subItem":Lorg/json/JSONObject;
    .end local v12    # "subTab":Lcom/biznessapps/more/Tab;
    :cond_7
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_8

    .line 927
    invoke-virtual {v3, v13}, Lcom/biznessapps/common/entities/AppInfoEntity;->setSubTabs(Ljava/util/List;)V

    .line 930
    .end local v6    # "j":I
    .end local v10    # "r":Ljava/util/Random;
    .end local v13    # "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    .end local v14    # "subTabsJson":Lorg/json/JSONArray;
    :cond_8
    return-object v3
.end method

.method public static final parseAppSettings(Lorg/json/JSONObject;)Lcom/biznessapps/common/entities/AppSettings;
    .locals 20
    .param p0, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 953
    if-eqz p0, :cond_0

    const/16 v17, 0x1

    :goto_0
    invoke-static/range {v17 .. v17}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 955
    new-instance v4, Lcom/biznessapps/common/entities/AppSettings;

    invoke-direct {v4}, Lcom/biznessapps/common/entities/AppSettings;-><init>()V

    .line 957
    .local v4, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    const-string v17, "AppID"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setAppId(Ljava/lang/String;)V

    .line 958
    const-string v17, "AppName"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setAppName(Ljava/lang/String;)V

    .line 959
    const-string v17, "consumer_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setConsumerKey(Ljava/lang/String;)V

    .line 960
    const-string v17, "consumer_secret"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setConsumerSecret(Ljava/lang/String;)V

    .line 961
    const-string v17, "ga_property_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setGaAccountId(Ljava/lang/String;)V

    .line 963
    const-string v17, "global_background_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setGlobalBgColor(Ljava/lang/String;)V

    .line 964
    const-string v17, "home_layout"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHomeLayoutType(I)V

    .line 965
    const-string v17, "EvenRowColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setEvenRowColor(Ljava/lang/String;)V

    .line 966
    const-string v17, "OddRowColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setOddRowColor(Ljava/lang/String;)V

    .line 967
    const-string v17, "FeatureTextColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setFeatureTextColor(Ljava/lang/String;)V

    .line 968
    const-string v17, "ButtonTextColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setButtonTextColor(Ljava/lang/String;)V

    .line 969
    const-string v17, "ButtonBgColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setButtonBgColor(Ljava/lang/String;)V

    .line 970
    const-string v17, "EvenRowTextColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setEvenRowTextColor(Ljava/lang/String;)V

    .line 971
    const-string v17, "OddRowTextColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setOddRowTextColor(Ljava/lang/String;)V

    .line 972
    const-string v17, "NavigationBarColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setNavigBarColor(Ljava/lang/String;)V

    .line 973
    const-string v17, "NavigationTextColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setNavigBarTextColor(Ljava/lang/String;)V

    .line 974
    const-string v17, "NavigationTextShadowColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setNavigBarTextShadowColor(Ljava/lang/String;)V

    .line 975
    const-string v17, "SectionBarColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setSectionBarColor(Ljava/lang/String;)V

    .line 976
    const-string v17, "SectionBarTextColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setSectionBarTextColor(Ljava/lang/String;)V

    .line 977
    const-string v17, "premium_navigation_position"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setNavigationMenuType(I)V

    .line 978
    const-string v17, "message_icon_linked_tab"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMessateLinkedTab(Ljava/lang/String;)V

    .line 979
    const-string v17, "message_icon_opacity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMessageIconOpacity(I)V

    .line 980
    const-string v17, "music_icon_opacity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMusicIconOpacity(I)V

    .line 981
    const-string v17, "blur_effect"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setUseBlurEffect(Z)V

    .line 982
    const-string v17, "blur_effect_home_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setUseBlurEffectForHome(Z)V

    .line 983
    const-string v17, "blur_effect_more_tab"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setUseBlurEffectForMoreTab(Z)V

    .line 984
    const-string v17, "message_tab_blurred"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setUseBlurEffectForMessagesTab(Z)V

    .line 986
    const-string v17, "timezone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setServerTimezone(I)V

    .line 987
    const-string v17, "splash_image"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setSplashImage(Ljava/lang/String;)V

    .line 988
    const-string v17, "pushing_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setPushingIp(Ljava/lang/String;)V

    .line 989
    const-string v17, "protected_header_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setProtectedHeaderColor(Ljava/lang/String;)V

    .line 991
    const-string v17, "email_collect_tab"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 992
    .local v8, "emailInfoData":Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 993
    const-string v17, "tab_ids"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 994
    .local v15, "tabIdsData":Lorg/json/JSONArray;
    if-eqz v15, :cond_2

    .line 995
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v14, "tabIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 997
    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 953
    .end local v4    # "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    .end local v8    # "emailInfoData":Lorg/json/JSONObject;
    .end local v9    # "i":I
    .end local v14    # "tabIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "tabIdsData":Lorg/json/JSONArray;
    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 999
    .restart local v4    # "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    .restart local v8    # "emailInfoData":Lorg/json/JSONObject;
    .restart local v9    # "i":I
    .restart local v14    # "tabIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "tabIdsData":Lorg/json/JSONArray;
    :cond_1
    const-string v17, "email_collect_title"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1000
    .local v16, "title":Ljava/lang/String;
    const-string v17, "email_collect_body"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1002
    .local v5, "body":Ljava/lang/String;
    new-instance v6, Lcom/biznessapps/common/entities/EmailCollectInfo;

    invoke-direct {v6}, Lcom/biznessapps/common/entities/EmailCollectInfo;-><init>()V

    .line 1003
    .local v6, "data":Lcom/biznessapps/common/entities/EmailCollectInfo;
    invoke-virtual {v6, v14}, Lcom/biznessapps/common/entities/EmailCollectInfo;->setTabIds(Ljava/util/List;)V

    .line 1004
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/biznessapps/common/entities/EmailCollectInfo;->setTitle(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v6, v5}, Lcom/biznessapps/common/entities/EmailCollectInfo;->setBody(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v4, v6}, Lcom/biznessapps/common/entities/AppSettings;->setEmailCollectInfo(Lcom/biznessapps/common/entities/EmailCollectInfo;)V

    .line 1007
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "!!!!!!!!!!!! set email collect = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getEmailCollectInfo()Lcom/biznessapps/common/entities/EmailCollectInfo;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1011
    .end local v5    # "body":Ljava/lang/String;
    .end local v6    # "data":Lcom/biznessapps/common/entities/EmailCollectInfo;
    .end local v9    # "i":I
    .end local v14    # "tabIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "tabIdsData":Lorg/json/JSONArray;
    .end local v16    # "title":Ljava/lang/String;
    :cond_2
    const-string v17, "is_protected"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1012
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setProtected(Z)V

    .line 1014
    :cond_3
    const-string v17, "MailingListPrompt"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1015
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMailingListPrompt(Z)V

    .line 1017
    :cond_4
    const-string v17, "social_onboarding"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setSocialOnBoard(Z)V

    .line 1018
    const-string v17, "tab_text"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/high16 v18, -0x1000000

    invoke-static/range {v17 .. v18}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHomeTabTextColor(I)V

    .line 1019
    const-string v17, "tab_showtext"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setShowHomeTabText(Z)V

    .line 1020
    const-string v17, "message_icon_on"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMessageIconUsed(Z)V

    .line 1021
    const-string v17, "music_icon_on"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    .line 1023
    .local v11, "isMusicIconUsed":Z
    const-string v17, "music_icon_linked_tab"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1024
    const/4 v11, 0x0

    .line 1026
    :cond_5
    invoke-virtual {v4, v11}, Lcom/biznessapps/common/entities/AppSettings;->setMusicIconUsed(Z)V

    .line 1027
    const-string v17, "ShowNewsFeed"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setShowNewsFeed(Z)V

    .line 1029
    const-string v17, "message_icon_pos_h"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1030
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMessageIconLeft(Z)V

    .line 1033
    :cond_6
    const-string v17, "music_icon_pos_h"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1034
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMusicIconLeft(Z)V

    .line 1036
    :cond_7
    const-string v17, "message_icon_pos_v"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1037
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMessageIconTop(Z)V

    .line 1039
    :cond_8
    const-string v17, "music_icon_pos_v"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1040
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMusicIconTop(Z)V

    .line 1042
    :cond_9
    const-string v17, "CallButton"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "yes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHasCallButton(Z)V

    .line 1043
    const-string v17, "DirectionButton"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "yes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHasDirectionButton(Z)V

    .line 1044
    const-string v17, "TellFriendButton"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "yes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHasTellFriendButton(Z)V

    .line 1046
    const-string v17, "AppStoreURL"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setAppStoreUrl(Ljava/lang/String;)V

    .line 1047
    const-string v17, "PlayStoreURL"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setPlayStoreUrl(Ljava/lang/String;)V

    .line 1048
    const-string v17, "HTML5URL"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHtmlStoreUrl(Ljava/lang/String;)V

    .line 1050
    const-string v17, "ismodernsliding"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setModernSlidingUsed(Z)V

    .line 1051
    const-string v17, "slidingEnabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setAnimationMode(I)V

    .line 1052
    const-string v17, "UseTextColors"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setUseTextColors(Ljava/lang/String;)V

    .line 1053
    const-string v17, "moreTabBackgroundForiPhone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMoreTabBg(Ljava/lang/String;)V

    .line 1054
    const-string v17, "moreTabBackgroundForiPad"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMoreTabTabletBg(Ljava/lang/String;)V

    .line 1055
    const-string v17, "moreButtonNavigation"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "yes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1056
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMoreButtonNavigation(Z)V

    .line 1058
    :cond_a
    const-string v17, "moreButtonNavigationIcon"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setMoreIconUrl(Ljava/lang/String;)V

    .line 1060
    const-string v17, "rows"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setRows(I)V

    .line 1061
    const-string v17, "cols"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setCols(I)V

    .line 1062
    const-string v17, "tab_src"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setTabSrc(Ljava/lang/String;)V

    .line 1063
    const-string v17, "tab_tint"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setTabTint(Ljava/lang/String;)V

    .line 1064
    const-string v17, "tab_tint_opacity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setTabTintOpacity(F)V

    .line 1065
    const-string v17, "tab_icon"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setTabIcon(Ljava/lang/String;)V

    .line 1066
    const-string v17, "tab_text"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setTabText(Ljava/lang/String;)V

    .line 1067
    const-string v17, "tab_font"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setTabFont(Ljava/lang/String;)V

    .line 1068
    const-string v17, "tab_showtext"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    const-string v17, "tab_showtext"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1069
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setShowText(Z)V

    .line 1071
    :cond_b
    const-string v17, "is_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setUseHomeOldBg(Z)V

    .line 1072
    const-string v17, "is_normal_header"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setNormalHeader(Z)V

    .line 1073
    const-string v17, "header_height"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHeaderHeight(F)V

    .line 1074
    const-string v17, "header_width"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHeaderWidth(F)V

    .line 1075
    const-string v17, "header_align"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHeaderAlignment(Ljava/lang/String;)V

    .line 1076
    const-string v17, "header_src"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHeaderSrc(Ljava/lang/String;)V

    .line 1077
    const-string v17, "header_tint"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHeaderTint(Ljava/lang/String;)V

    .line 1078
    const-string v17, "header_tint_opacity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setHeaderTintOpacity(F)V

    .line 1079
    const-string v17, "hide_comment"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setShouldHideComments(Z)V

    .line 1080
    const-string v17, "facebook_api_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setFacebookAppId(Ljava/lang/String;)V

    .line 1081
    const-string v17, "global_header"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setGlobalHeaderUrl(Ljava/lang/String;)V

    .line 1082
    const-string v17, "nav_tint_opacity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setNavTintOpacity(F)V

    .line 1083
    const-string v17, "RSSIcon"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setRssIconUrl(Ljava/lang/String;)V

    .line 1084
    const-string v17, "ads"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1085
    .local v2, "adsObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_c

    .line 1086
    const-string v17, "ads_type"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1087
    .local v3, "adsType":Ljava/lang/String;
    const-string v17, "admob"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 1088
    .local v10, "isAdmob":Z
    invoke-virtual {v4, v10}, Lcom/biznessapps/common/entities/AppSettings;->setAdmob(Z)V

    .line 1089
    const-string v17, "show_ads"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setUseAds(Z)V

    .line 1090
    if-eqz v10, :cond_e

    .line 1091
    const-string v17, "admob_pub_id"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setAdsId(Ljava/lang/String;)V

    .line 1096
    .end local v3    # "adsType":Ljava/lang/String;
    .end local v10    # "isAdmob":Z
    :cond_c
    :goto_2
    const-string v17, "moreTab"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 1097
    .local v13, "moreTabJson":Lorg/json/JSONObject;
    if-eqz v13, :cond_d

    .line 1099
    :try_start_0
    new-instance v12, Lcom/biznessapps/more/Tab;

    invoke-direct {v12}, Lcom/biznessapps/more/Tab;-><init>()V

    .line 1100
    .local v12, "moreTab":Lcom/biznessapps/more/Tab;
    const-string v17, "TabLabel"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setLabel(Ljava/lang/String;)V

    .line 1101
    const-string v17, "TabImage"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setImage(Ljava/lang/String;)V

    .line 1102
    const-string v17, "moreviewcontroller"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setViewController(Ljava/lang/String;)V

    .line 1103
    const-string v17, "custom_design"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setHasCustomDesign(Z)V

    .line 1104
    const-string v17, "openInSafari"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setOpenInSafari(Z)V

    .line 1105
    const-string v17, "tab_src"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabSrc(Ljava/lang/String;)V

    .line 1106
    const-string v17, "tab_icon"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabIcon(Ljava/lang/String;)V

    .line 1107
    const-string v17, "tab_tint"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabTint(Ljava/lang/String;)V

    .line 1108
    const-string v17, "tab_tint_opacity"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabTintOpacity(F)V

    .line 1109
    const-string v17, "tab_text"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setTabText(Ljava/lang/String;)V

    .line 1110
    const-string v17, "tab_showtext"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setShowText(Z)V

    .line 1112
    const-string v17, "NavigationBarColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setNavigBarColor(Ljava/lang/String;)V

    .line 1113
    const-string v17, "NavigationTextColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setNavigBarTextColor(Ljava/lang/String;)V

    .line 1114
    const-string v17, "NavigationTextShadowColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setNavigBarTextShadowColor(Ljava/lang/String;)V

    .line 1115
    const-string v17, "SectionBarColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setSectionBarColor(Ljava/lang/String;)V

    .line 1116
    const-string v17, "SectionBarTextColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setSectionBarTextColor(Ljava/lang/String;)V

    .line 1117
    const-string v17, "global_header"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setGlobalHeaderUrl(Ljava/lang/String;)V

    .line 1118
    const-string v17, "nav_tint_opacity"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setNavTintOpacity(F)V

    .line 1120
    const-string v17, "global_background_color"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setGlobalBgColor(Ljava/lang/String;)V

    .line 1121
    const-string v17, "EvenRowColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setEvenRowColor(Ljava/lang/String;)V

    .line 1122
    const-string v17, "OddRowColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setOddRowColor(Ljava/lang/String;)V

    .line 1123
    const-string v17, "FeatureTextColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setFeatureTextColor(Ljava/lang/String;)V

    .line 1124
    const-string v17, "ButtonTextColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setButtonTextColor(Ljava/lang/String;)V

    .line 1125
    const-string v17, "ButtonBgColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setButtonBgColor(Ljava/lang/String;)V

    .line 1126
    const-string v17, "EvenRowTextColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setEvenRowTextColor(Ljava/lang/String;)V

    .line 1127
    const-string v17, "OddRowTextColor"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/biznessapps/more/Tab;->setOddRowTextColor(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v4, v12}, Lcom/biznessapps/common/entities/AppSettings;->setMoreTab(Lcom/biznessapps/more/Tab;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    .end local v12    # "moreTab":Lcom/biznessapps/more/Tab;
    :cond_d
    :goto_3
    return-object v4

    .line 1093
    .end local v13    # "moreTabJson":Lorg/json/JSONObject;
    .restart local v3    # "adsType":Ljava/lang/String;
    .restart local v10    # "isAdmob":Z
    :cond_e
    const-string v17, "dfp_unit_id"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/entities/AppSettings;->setAdsId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1129
    .end local v3    # "adsType":Ljava/lang/String;
    .end local v10    # "isAdmob":Z
    .restart local v13    # "moreTabJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 1130
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public static parseAroundUsData(Ljava/lang/String;)Lcom/biznessapps/around_us/AroundUsEntity;
    .locals 13
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 334
    new-instance v2, Lcom/biznessapps/around_us/AroundUsEntity;

    invoke-direct {v2}, Lcom/biznessapps/around_us/AroundUsEntity;-><init>()V

    .line 335
    .local v2, "item":Lcom/biznessapps/around_us/AroundUsEntity;
    if-nez p0, :cond_1

    .line 336
    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v11

    const/4 v12, -0x5

    invoke-virtual {v11, v12}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setErrorCode(I)V

    .line 388
    :cond_0
    :goto_0
    return-object v2

    .line 339
    :cond_1
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 340
    .local v10, "root":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_0

    .line 341
    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 342
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v11, "background"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setImageUrl(Ljava/lang/String;)V

    .line 343
    const-string v11, "green_title"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setGreenTitle(Ljava/lang/String;)V

    .line 344
    const-string v11, "green_color"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setGreenColor(Ljava/lang/String;)V

    .line 345
    const-string v11, "green_color_text"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setGreenTextColor(Ljava/lang/String;)V

    .line 346
    const-string v11, "purple_title"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setPurpleTitle(Ljava/lang/String;)V

    .line 347
    const-string v11, "purple_color"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setPurpleColor(Ljava/lang/String;)V

    .line 348
    const-string v11, "purple_color_text"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setPurpleTextColor(Ljava/lang/String;)V

    .line 349
    const-string v11, "red_title"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setRedTitle(Ljava/lang/String;)V

    .line 350
    const-string v11, "red_color"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setRedColor(Ljava/lang/String;)V

    .line 351
    const-string v11, "red_color_text"

    invoke-static {v6, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/around_us/AroundUsEntity;->setRedTextColor(Ljava/lang/String;)V

    .line 353
    const-string v11, "poi"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 354
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v7, "poi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 357
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 358
    .local v8, "poiData":Lorg/json/JSONObject;
    new-instance v9, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-direct {v9}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;-><init>()V

    .line 360
    .local v9, "poiItem":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    new-instance v5, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v5}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 362
    .local v5, "location":Lcom/biznessapps/location/entities/LocationEntity;
    const-string v11, "address1"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress1(Ljava/lang/String;)V

    .line 363
    const-string v11, "address2"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress2(Ljava/lang/String;)V

    .line 364
    const-string v11, "city"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setCity(Ljava/lang/String;)V

    .line 365
    const-string v11, "state"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setState(Ljava/lang/String;)V

    .line 366
    const-string v11, "zip"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setZip(Ljava/lang/String;)V

    .line 367
    const-string v11, "telephone"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setTelephone(Ljava/lang/String;)V

    .line 368
    const-string v11, "email"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setEmail(Ljava/lang/String;)V

    .line 369
    const-string v11, "website"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setWebsite(Ljava/lang/String;)V

    .line 371
    const-string v11, "id"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setId(Ljava/lang/String;)V

    .line 372
    const-string v11, "name"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setName(Ljava/lang/String;)V

    .line 373
    const-string v11, "color"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setColor(Ljava/lang/String;)V

    .line 374
    const-string v11, "description"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setDescription(Ljava/lang/String;)V

    .line 375
    const-string v11, "longitude"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setLongitude(Ljava/lang/String;)V

    .line 376
    const-string v11, "latitude"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setLatitude(Ljava/lang/String;)V

    .line 377
    const-string v11, "image"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setImageUrl(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v9, v5}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setLocation(Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 379
    const-string v11, "distance_type"

    invoke-static {v8, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->setDistanceType(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 382
    .end local v5    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .end local v8    # "poiData":Lorg/json/JSONObject;
    .end local v9    # "poiItem":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    :cond_2
    invoke-virtual {v2, v7}, Lcom/biznessapps/around_us/AroundUsEntity;->setPoi(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 384
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "poi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    .end local v10    # "root":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setException(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public static final parseBackgroundData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 788
    .local v0, "background":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 789
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 790
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 791
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v5, "background"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 789
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 793
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 796
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public static final parseCallUsItems(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/call_us/CallUsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/call_us/CallUsEntity;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 431
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 432
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 434
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/call_us/CallUsEntity;

    invoke-direct {v2}, Lcom/biznessapps/call_us/CallUsEntity;-><init>()V

    .line 435
    .local v2, "item":Lcom/biznessapps/call_us/CallUsEntity;
    const-string v6, "title"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/call_us/CallUsEntity;->setTitle(Ljava/lang/String;)V

    .line 436
    const-string v6, "phone"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/call_us/CallUsEntity;->setPhone(Ljava/lang/String;)V

    .line 437
    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/call_us/CallUsEntity;->setId(Ljava/lang/String;)V

    .line 438
    const-string v6, "background"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/call_us/CallUsEntity;->setBackground(Ljava/lang/String;)V

    .line 439
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/call_us/CallUsEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method public static final parseCommonData(Ljava/lang/String;)Lcom/biznessapps/common/entities/CommonEntity;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 768
    const/4 v2, 0x0

    .line 770
    .local v2, "item":Lcom/biznessapps/common/entities/CommonEntity;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 771
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 772
    .local v6, "size":I
    if-lez v6, :cond_0

    .line 773
    new-instance v3, Lcom/biznessapps/common/entities/CommonEntity;

    invoke-direct {v3}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .local v3, "item":Lcom/biznessapps/common/entities/CommonEntity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 775
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 776
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v7, "image"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/common/entities/CommonEntity;->setImageUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "size":I
    .restart local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 782
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v2

    .line 779
    .end local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .restart local v1    # "i":I
    .restart local v3    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "size":I
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .restart local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    goto :goto_1

    .end local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .restart local v3    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    :cond_1
    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .restart local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    goto :goto_2
.end method

.method public static final parseCoupons(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/CouponEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v1, "couponList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 699
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 700
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 702
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v0, Lcom/biznessapps/coupons/CouponEntity;

    invoke-direct {v0}, Lcom/biznessapps/coupons/CouponEntity;-><init>()V

    .line 703
    .local v0, "coupon":Lcom/biznessapps/coupons/CouponEntity;
    const-string v7, "id"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setId(Ljava/lang/String;)V

    .line 704
    const-string v7, "title"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setTitle(Ljava/lang/String;)V

    .line 705
    const-string v7, "timezone_value"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v6

    .line 707
    .local v6, "timezoneValue":F
    const-string v7, "start_date"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8, v6}, Lcom/biznessapps/utils/DateUtils;->getDateWithLocalOffset(JF)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setStartDate(Ljava/util/Date;)V

    .line 708
    const-string v7, "end_date"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8, v6}, Lcom/biznessapps/utils/DateUtils;->getEndDateWithLocalOffset(JF)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setEndDate(Ljava/util/Date;)V

    .line 709
    const-string v7, "checkin_target"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setCheckinTarget(I)V

    .line 710
    const-string v7, "checkin_target"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setCheckinTargetMax(I)V

    .line 711
    const-string v7, "checkin_interval"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setCheckinInterval(I)V

    .line 712
    const-string v7, "reusable"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 713
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setReusable(Z)V

    .line 715
    :cond_0
    const-string v7, "longitude"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setLongitude(Ljava/lang/String;)V

    .line 716
    const-string v7, "latitude"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setLatitude(Ljava/lang/String;)V

    .line 717
    const-string v7, "description"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setDescription(Ljava/lang/String;)V

    .line 718
    const-string v7, "code"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setCode(Ljava/lang/String;)V

    .line 719
    const-string v7, "background"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 721
    const-string v7, "background"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setBackground(Ljava/lang/String;)V

    .line 725
    :cond_1
    const-string v7, "headerImage"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setHeaderImage(Ljava/lang/String;)V

    .line 726
    const-string v7, "radius_unit"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setDistanceType(Ljava/lang/String;)V

    .line 727
    const-string v7, "radius"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setRadius(F)V

    .line 729
    const-string v7, "locations"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 730
    const-string v7, "locations"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/utils/json/JsonParser;->parseLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/coupons/CouponEntity;->setLocations(Ljava/util/List;)V

    .line 732
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 734
    .end local v0    # "coupon":Lcom/biznessapps/coupons/CouponEntity;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "timezoneValue":F
    :catch_0
    move-exception v2

    .line 735
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 737
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v1
.end method

.method public static final parseCouponsLocation(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2077
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2079
    .local v4, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2080
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 2081
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2082
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;

    invoke-direct {v2}, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;-><init>()V

    .line 2083
    .local v2, "item":Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;
    const-string v6, "latitude"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;->setLatitude(Ljava/lang/String;)V

    .line 2084
    const-string v6, "longitude"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;->setLongitude(Ljava/lang/String;)V

    .line 2086
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2088
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2089
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2091
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static final parseEmailPhoto(Ljava/lang/String;)Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 195
    .local v2, "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 196
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-direct {v3}, Lcom/biznessapps/email_photo/EmailPhotoEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v2    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .local v3, "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 198
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 199
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v6, "description"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->setDescription(Ljava/lang/String;)V

    .line 200
    const-string v6, "email"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->setEmail(Ljava/lang/String;)V

    .line 201
    const-string v6, "background"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->setImageUrl(Ljava/lang/String;)V

    .line 202
    const-string v6, "subject"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->setSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_0
    move-object v2, v3

    .line 207
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    :goto_1
    return-object v2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .restart local v1    # "i":I
    .restart local v3    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .restart local v2    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    goto :goto_2
.end method

.method public static final parseEventDetail(Ljava/lang/String;)Lcom/biznessapps/events/EventEntity;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 540
    new-instance v1, Lcom/biznessapps/events/EventEntity;

    invoke-direct {v1}, Lcom/biznessapps/events/EventEntity;-><init>()V

    .line 541
    .local v1, "entity":Lcom/biznessapps/events/EventEntity;
    if-nez p0, :cond_1

    .line 542
    invoke-virtual {v1}, Lcom/biznessapps/events/EventEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v5

    const/4 v6, -0x5

    invoke-virtual {v5, v6}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setErrorCode(I)V

    .line 568
    :cond_0
    :goto_0
    return-object v1

    .line 545
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 546
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 547
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 548
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setId(Ljava/lang/String;)V

    .line 549
    const-string v5, "title"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setTitle(Ljava/lang/String;)V

    .line 550
    const-string v5, "city"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setCity(Ljava/lang/String;)V

    .line 551
    const-string v5, "description"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setDescription(Ljava/lang/String;)V

    .line 552
    const-string v5, "header_image"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setImageUrl(Ljava/lang/String;)V

    .line 553
    const-string v5, "goingcount"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setGoingCount(I)V

    .line 554
    const-string v5, "photocount"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setPhotoCount(I)V

    .line 555
    const-string v5, "commentscount"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setCommentsCount(I)V

    .line 556
    const-string v5, "address1"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setAddress1(Ljava/lang/String;)V

    .line 557
    const-string v5, "address2"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setAddress2(Ljava/lang/String;)V

    .line 558
    const-string v5, "latitude"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setLatitude(Ljava/lang/String;)V

    .line 559
    const-string v5, "longitude"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setLongitude(Ljava/lang/String;)V

    .line 560
    const-string v5, "start_time"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(J)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setDatetimeBegin(Ljava/util/Date;)V

    .line 561
    const-string v5, "end_time"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(J)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setDatetimeEnd(Ljava/util/Date;)V

    .line 562
    const-string v5, "zip"

    invoke-static {v4, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/biznessapps/events/EventEntity;->setZip(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 564
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/biznessapps/events/EventEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setException(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public static final parseEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/events/EventEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/events/EventEntity;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 605
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 606
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 608
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/events/EventEntity;

    invoke-direct {v2}, Lcom/biznessapps/events/EventEntity;-><init>()V

    .line 610
    .local v2, "event":Lcom/biznessapps/events/EventEntity;
    const-string v11, "id"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setId(Ljava/lang/String;)V

    .line 611
    const-string v11, "title"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setTitle(Ljava/lang/String;)V

    .line 612
    const-string v11, "section"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setSection(Ljava/lang/String;)V

    .line 613
    const-string v11, "background"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setBackground(Ljava/lang/String;)V

    .line 614
    const-string v11, "city"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setCity(Ljava/lang/String;)V

    .line 615
    const-string v11, "state"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setState(Ljava/lang/String;)V

    .line 617
    const-string v11, "recurring"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "recurring_day"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 618
    const-string v11, "recurring"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setRecurring(Z)V

    .line 619
    const-string v11, "recurring_day"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/biznessapps/events/EventEntity$RecurringDay;->findDay(I)Lcom/biznessapps/events/EventEntity$RecurringDay;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setRecurringDay(Lcom/biznessapps/events/EventEntity$RecurringDay;)V

    .line 621
    :cond_0
    const-string v11, "timezone_value"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v8

    .line 622
    .local v8, "offset":F
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v10

    .line 623
    .local v10, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->getServerTimezone()I

    move-result v9

    .line 625
    .local v9, "serverOffset":I
    const-string v11, "start_time"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12, v8, v9}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(JFI)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setDatetimeBegin(Ljava/util/Date;)V

    .line 626
    const-string v11, "end_time"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12, v8, v9}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(JFI)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setDatetimeEnd(Ljava/util/Date;)V

    .line 627
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 628
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v11, "MMMM"

    invoke-direct {v0, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, "dateFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, "month":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_2

    .line 631
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setMonth(Ljava/lang/String;)V

    .line 635
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    const-string v11, "dd"

    invoke-direct {v0, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 636
    .restart local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setDay(Ljava/lang/String;)V

    .line 638
    .end local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    .end local v6    # "month":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 633
    .restart local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    .restart local v6    # "month":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v6}, Lcom/biznessapps/events/EventEntity;->setMonth(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 640
    .end local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    .end local v2    # "event":Lcom/biznessapps/events/EventEntity;
    .end local v4    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "month":Ljava/lang/String;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "offset":F
    .end local v9    # "serverOffset":I
    .end local v10    # "settings":Lcom/biznessapps/common/entities/AppSettings;
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 643
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v3
.end method

.method public static final parseEventsV2(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/events/EventEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/events/EventEntity;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 650
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 651
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 653
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/events/EventEntity;

    invoke-direct {v2}, Lcom/biznessapps/events/EventEntity;-><init>()V

    .line 655
    .local v2, "event":Lcom/biznessapps/events/EventEntity;
    const-string v11, "id"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setId(Ljava/lang/String;)V

    .line 656
    const-string v11, "title"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setTitle(Ljava/lang/String;)V

    .line 657
    const-string v11, "section"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setSection(Ljava/lang/String;)V

    .line 658
    const-string v11, "background"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setBackground(Ljava/lang/String;)V

    .line 659
    const-string v11, "city"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setCity(Ljava/lang/String;)V

    .line 660
    const-string v11, "state"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setState(Ljava/lang/String;)V

    .line 661
    const-string v11, "address1"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setAddress1(Ljava/lang/String;)V

    .line 662
    const-string v11, "address2"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setAddress2(Ljava/lang/String;)V

    .line 663
    const-string v11, "address_bottom_row"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setAddressBottomRow(Ljava/lang/String;)V

    .line 664
    const-string v11, "address_top_row"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setAddressTopRow(Ljava/lang/String;)V

    .line 666
    const-string v11, "recurring"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "recurring_day"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 667
    const-string v11, "recurring"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setRecurring(Z)V

    .line 668
    const-string v11, "recurring_day"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/biznessapps/events/EventEntity$RecurringDay;->findDay(I)Lcom/biznessapps/events/EventEntity$RecurringDay;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setRecurringDay(Lcom/biznessapps/events/EventEntity$RecurringDay;)V

    .line 671
    :cond_0
    const-string v11, "timezone_value"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v8

    .line 672
    .local v8, "offset":F
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v10

    .line 673
    .local v10, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->getServerTimezone()I

    move-result v9

    .line 674
    .local v9, "serverOffset":I
    const-string v11, "start_time"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12, v8, v9}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(JFI)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setDatetimeBegin(Ljava/util/Date;)V

    .line 675
    const-string v11, "end_time"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12, v8, v9}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(JFI)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setDatetimeEnd(Ljava/util/Date;)V

    .line 676
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 677
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v11, "MMMM"

    invoke-direct {v0, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "dateFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 679
    .local v6, "month":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_2

    .line 680
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setMonth(Ljava/lang/String;)V

    .line 684
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    const-string v11, "dd"

    invoke-direct {v0, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 685
    .restart local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/events/EventEntity;->setDay(Ljava/lang/String;)V

    .line 687
    .end local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    .end local v6    # "month":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 682
    .restart local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    .restart local v6    # "month":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v6}, Lcom/biznessapps/events/EventEntity;->setMonth(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 689
    .end local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    .end local v2    # "event":Lcom/biznessapps/events/EventEntity;
    .end local v4    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "month":Ljava/lang/String;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "offset":F
    .end local v9    # "serverOffset":I
    .end local v10    # "settings":Lcom/biznessapps/common/entities/AppSettings;
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 692
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v3
.end method

.method public static final parseFacebookSearchList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1935
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1936
    .local v6, "root":Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1937
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1938
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1939
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v3, Lcom/biznessapps/news/SearchEntity;

    invoke-direct {v3}, Lcom/biznessapps/news/SearchEntity;-><init>()V

    .line 1941
    .local v3, "item":Lcom/biznessapps/news/SearchEntity;
    const-string v7, "created_time"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/news/SearchEntity;->setNewsDate(Ljava/lang/String;)V

    .line 1942
    const-string v7, "name"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/news/SearchEntity;->setTitle(Ljava/lang/String;)V

    .line 1943
    const-string v7, "picture"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/news/SearchEntity;->setImageUrl(Ljava/lang/String;)V

    .line 1944
    const-string v7, "message"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/news/SearchEntity;->setText(Ljava/lang/String;)V

    .line 1945
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1947
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/biznessapps/news/SearchEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1948
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1950
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public static parseFanComments(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 280
    .local v5, "root":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 282
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 283
    .local v1, "commentData":Lorg/json/JSONObject;
    new-instance v0, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-direct {v0}, Lcom/biznessapps/fan_wall/CommentEntity;-><init>()V

    .line 284
    .local v0, "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    const-string v6, "comment"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setComment(Ljava/lang/String;)V

    .line 285
    const-string v6, "id"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setId(Ljava/lang/String;)V

    .line 286
    const-string v6, "image"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setImageUrl(Ljava/lang/String;)V

    .line 287
    const-string v6, "name"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setTitle(Ljava/lang/String;)V

    .line 288
    const-string v6, "replies"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setReplies(I)V

    .line 289
    const-string v6, "timestamp"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/biznessapps/fan_wall/CommentEntity;->setTimeStamp(J)V

    .line 290
    const-string v6, "latitude"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setLatitude(Ljava/lang/String;)V

    .line 291
    const-string v6, "longitude"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setLongitude(Ljava/lang/String;)V

    .line 292
    const-string v6, "background"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setBackground(Ljava/lang/String;)V

    .line 293
    const-string v6, "uploadedImage"

    invoke-static {v1, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setUploadImageUrl(Ljava/lang/String;)V

    .line 294
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    .end local v1    # "commentData":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v5    # "root":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static parseFanWallData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/FanWallEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/FanWallEntity;>;"
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 306
    .local v9, "root":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 308
    new-instance v4, Lcom/biznessapps/fan_wall/FanWallEntity;

    invoke-direct {v4}, Lcom/biznessapps/fan_wall/FanWallEntity;-><init>()V

    .line 309
    .local v4, "item":Lcom/biznessapps/fan_wall/FanWallEntity;
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 310
    .local v8, "obj":Lorg/json/JSONObject;
    const-string v10, "image"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/biznessapps/fan_wall/FanWallEntity;->setImageUrl(Ljava/lang/String;)V

    .line 312
    const-string v10, "comments"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 313
    .local v7, "jsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 315
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 316
    .local v1, "commentData":Lorg/json/JSONObject;
    new-instance v0, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-direct {v0}, Lcom/biznessapps/fan_wall/CommentEntity;-><init>()V

    .line 317
    .local v0, "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    const-string v10, "comment"

    invoke-static {v1, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/fan_wall/CommentEntity;->setComment(Ljava/lang/String;)V

    .line 318
    const-string v10, "id"

    invoke-static {v1, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/fan_wall/CommentEntity;->setId(Ljava/lang/String;)V

    .line 319
    const-string v10, "image"

    invoke-static {v1, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/fan_wall/CommentEntity;->setImageUrl(Ljava/lang/String;)V

    .line 320
    const-string v10, "name"

    invoke-static {v1, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/fan_wall/CommentEntity;->setTitle(Ljava/lang/String;)V

    .line 321
    const-string v10, "replies"

    invoke-static {v1, v10}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/fan_wall/CommentEntity;->setReplies(I)V

    .line 322
    const-string v10, "time"

    invoke-static {v1, v10}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/biznessapps/fan_wall/CommentEntity;->setTimeStamp(J)V

    .line 323
    invoke-virtual {v4, v0}, Lcom/biznessapps/fan_wall/FanWallEntity;->addComment(Lcom/biznessapps/fan_wall/CommentEntity;)V

    .line 313
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    .end local v1    # "commentData":Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    .end local v3    # "i":I
    .end local v4    # "item":Lcom/biznessapps/fan_wall/FanWallEntity;
    .end local v6    # "j":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "root":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v5
.end method

.method public static final parseFlickrData(Ljava/lang/String;)Lcom/biznessapps/gallery/GalleryData;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1189
    new-instance v4, Lcom/biznessapps/gallery/GalleryData;

    invoke-direct {v4}, Lcom/biznessapps/gallery/GalleryData;-><init>()V

    .line 1191
    .local v4, "resultData":Lcom/biznessapps/gallery/GalleryData;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 1193
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1194
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v7, "gallery_type"

    invoke-static {v3, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "coverflow"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    :goto_0
    invoke-virtual {v4, v7}, Lcom/biznessapps/gallery/GalleryData;->setUseCoverflow(Z)V

    .line 1195
    const-string v7, "userId"

    invoke-static {v3, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/gallery/GalleryData;->setUserId(Ljava/lang/String;)V

    .line 1196
    const-string v7, "APIKEY"

    invoke-static {v3, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/gallery/GalleryData;->setApiKey(Ljava/lang/String;)V

    .line 1197
    const-string v7, "display"

    invoke-static {v3, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "photo_set"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v4, v5}, Lcom/biznessapps/gallery/GalleryData;->setDisplayPhotosets(Z)V

    .line 1198
    const-string v5, "background"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/gallery/GalleryData;->setBackground(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_2
    return-object v4

    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_1
    move v7, v6

    .line 1194
    goto :goto_0

    :cond_2
    move v5, v6

    .line 1197
    goto :goto_1

    .line 1201
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static parseFlickrUser(Ljava/lang/String;)Lcom/biznessapps/flickr/User;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1299
    const/4 v2, 0x0

    .line 1300
    .local v2, "result":Lcom/biznessapps/flickr/User;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1302
    .local v0, "g":Lcom/google/gson/Gson;
    :try_start_0
    const-class v3, Lcom/biznessapps/flickr/RespUser;

    invoke-virtual {v0, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/flickr/RespUser;

    .line 1303
    .local v1, "r":Lcom/biznessapps/flickr/RespUser;
    invoke-virtual {v1}, Lcom/biznessapps/flickr/RespUser;->getUser()Lcom/biznessapps/flickr/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1306
    .end local v1    # "r":Lcom/biznessapps/flickr/RespUser;
    :goto_0
    return-object v2

    .line 1304
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static final parseGalleryMetadata(Ljava/lang/String;)Lcom/biznessapps/gallery/GalleryData;
    .locals 14
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1142
    const/4 v11, 0x0

    .line 1145
    .local v11, "resultData":Lcom/biznessapps/gallery/GalleryData;
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v8, "jsonArray":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v1, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    new-instance v12, Lcom/biznessapps/gallery/GalleryData;

    invoke-direct {v12}, Lcom/biznessapps/gallery/GalleryData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    .end local v11    # "resultData":Lcom/biznessapps/gallery/GalleryData;
    .local v12, "resultData":Lcom/biznessapps/gallery/GalleryData;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 1151
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1153
    .local v10, "obj":Lorg/json/JSONObject;
    const-string v13, "images"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1154
    .local v2, "dataArray":Lorg/json/JSONArray;
    new-instance v0, Lcom/biznessapps/flickr/GalleryAlbum;

    invoke-direct {v0}, Lcom/biznessapps/flickr/GalleryAlbum;-><init>()V

    .line 1155
    .local v0, "album":Lcom/biznessapps/flickr/GalleryAlbum;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v4, "galleryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    const-string v13, "section_id"

    invoke-static {v10, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/biznessapps/flickr/GalleryAlbum;->setId(Ljava/lang/String;)V

    .line 1157
    const-string v13, "name"

    invoke-static {v10, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/biznessapps/flickr/GalleryAlbum;->setTitle(Ljava/lang/String;)V

    .line 1158
    const-string v13, "coverflow"

    invoke-static {v10, v13}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v0, v13}, Lcom/biznessapps/flickr/GalleryAlbum;->setUseCoverflow(Z)V

    .line 1159
    const-string v13, "thumbnail"

    invoke-static {v10, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/biznessapps/flickr/GalleryAlbum;->setImageUrl(Ljava/lang/String;)V

    .line 1161
    if-nez v5, :cond_0

    .line 1162
    const-string v13, "background"

    invoke-static {v10, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/biznessapps/gallery/GalleryData;->setBackground(Ljava/lang/String;)V

    .line 1164
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 1165
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 1167
    .local v9, "jsonItem":Lorg/json/JSONObject;
    new-instance v6, Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {v6}, Lcom/biznessapps/gallery/GalleryData$Item;-><init>()V

    .line 1168
    .local v6, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    const-string v13, "id"

    invoke-static {v9, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/biznessapps/gallery/GalleryData$Item;->setId(Ljava/lang/String;)V

    .line 1169
    const-string v13, "ext"

    invoke-static {v9, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/biznessapps/gallery/GalleryData$Item;->setExt(Ljava/lang/String;)V

    .line 1170
    const-string v13, "height"

    invoke-static {v9, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/biznessapps/gallery/GalleryData$Item;->setHeight(Ljava/lang/String;)V

    .line 1171
    const-string v13, "width"

    invoke-static {v9, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/biznessapps/gallery/GalleryData$Item;->setWidth(Ljava/lang/String;)V

    .line 1172
    const-string v13, "info"

    invoke-static {v9, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/biznessapps/gallery/GalleryData$Item;->setInfo(Ljava/lang/String;)V

    .line 1173
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1176
    .end local v6    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v9    # "jsonItem":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v0, v4}, Lcom/biznessapps/flickr/GalleryAlbum;->setItems(Ljava/util/List;)V

    .line 1177
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1179
    .end local v0    # "album":Lcom/biznessapps/flickr/GalleryAlbum;
    .end local v2    # "dataArray":Lorg/json/JSONArray;
    .end local v4    # "galleryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    .end local v7    # "j":I
    .end local v10    # "obj":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v12, v1}, Lcom/biznessapps/gallery/GalleryData;->setAlbums(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v12

    .line 1183
    .end local v1    # "albums":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    .end local v5    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "resultData":Lcom/biznessapps/gallery/GalleryData;
    .restart local v11    # "resultData":Lcom/biznessapps/gallery/GalleryData;
    :goto_2
    return-object v11

    .line 1180
    :catch_0
    move-exception v3

    .line 1181
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1180
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v11    # "resultData":Lcom/biznessapps/gallery/GalleryData;
    .restart local v1    # "albums":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    .restart local v5    # "i":I
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    .restart local v12    # "resultData":Lcom/biznessapps/gallery/GalleryData;
    :catch_1
    move-exception v3

    move-object v11, v12

    .end local v12    # "resultData":Lcom/biznessapps/gallery/GalleryData;
    .restart local v11    # "resultData":Lcom/biznessapps/gallery/GalleryData;
    goto :goto_3
.end method

.method public static final parseGlobalSearchData(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1871
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1872
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1873
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v3, Lcom/biznessapps/news/SearchEntity;

    invoke-direct {v3}, Lcom/biznessapps/news/SearchEntity;-><init>()V

    .line 1874
    .local v3, "item":Lcom/biznessapps/news/SearchEntity;
    const-string v6, "tab_id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/news/SearchEntity;->setTabId(Ljava/lang/String;)V

    .line 1875
    const-string v6, "section_id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/news/SearchEntity;->setSectionId(Ljava/lang/String;)V

    .line 1876
    const-string v6, "item_id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/news/SearchEntity;->setItemId(Ljava/lang/String;)V

    .line 1877
    const-string v6, "section"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/news/SearchEntity;->setSection(Ljava/lang/String;)V

    .line 1878
    const-string v6, "thumbnail"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/news/SearchEntity;->setThumbnail(Ljava/lang/String;)V

    .line 1879
    const-string v6, "user_profile"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1880
    const-string v6, "user_profile"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/news/SearchEntity;->setThumbnail(Ljava/lang/String;)V

    .line 1882
    :cond_0
    const-string v6, "link"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/news/SearchEntity;->setLink(Ljava/lang/String;)V

    .line 1883
    const-string v6, "news_type"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/news/SearchEntity;->setNewsType(Ljava/lang/String;)V

    .line 1884
    const-string v6, "content"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/news/SearchEntity;->setText(Ljava/lang/String;)V

    .line 1885
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1887
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/biznessapps/news/SearchEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1888
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1890
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method public static final parseInfo(Ljava/lang/String;)Lcom/biznessapps/common/entities/CommonListEntity;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, "infoEntity":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-static {p0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 520
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 521
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-direct {v3}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v2    # "infoEntity":Lcom/biznessapps/common/entities/CommonListEntity;
    .local v3, "infoEntity":Lcom/biznessapps/common/entities/CommonListEntity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 523
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 524
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setId(Ljava/lang/String;)V

    .line 525
    const-string v6, "title"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setTitle(Ljava/lang/String;)V

    .line 526
    const-string v6, "description"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setDescription(Ljava/lang/String;)V

    .line 527
    const-string v6, "image"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setImageUrl(Ljava/lang/String;)V

    .line 528
    const-string v6, "background"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setBackground(Ljava/lang/String;)V

    .line 529
    const-string v6, "header_image"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setHeaderImage(Ljava/lang/String;)V

    .line 530
    const-string v6, "isNewDesign"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setHasNewDesign(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_0
    move-object v2, v3

    .line 536
    .end local v1    # "i":I
    .end local v3    # "infoEntity":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "infoEntity":Lcom/biznessapps/common/entities/CommonListEntity;
    :cond_1
    :goto_1
    return-object v2

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "infoEntity":Lcom/biznessapps/common/entities/CommonListEntity;
    .restart local v1    # "i":I
    .restart local v3    # "infoEntity":Lcom/biznessapps/common/entities/CommonListEntity;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "infoEntity":Lcom/biznessapps/common/entities/CommonListEntity;
    .restart local v2    # "infoEntity":Lcom/biznessapps/common/entities/CommonListEntity;
    goto :goto_2
.end method

.method public static final parseInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v3, "infoItemList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 575
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 576
    new-instance v2, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-direct {v2}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 578
    .local v2, "infoItem":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 579
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v7, "id"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/common/entities/CommonListEntity;->setId(Ljava/lang/String;)V

    .line 580
    const-string v7, "title"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/common/entities/CommonListEntity;->setTitle(Ljava/lang/String;)V

    .line 581
    const-string v7, "description"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/common/entities/CommonListEntity;->setDescription(Ljava/lang/String;)V

    .line 582
    const-string v7, "thumbnail"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 583
    .local v6, "thumbnail":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 584
    const-string v7, "image"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 586
    :cond_0
    const-string v7, "isNewDesign"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 587
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/biznessapps/common/entities/CommonListEntity;->setHasNewDesign(Z)V

    .line 589
    :cond_1
    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setImageUrl(Ljava/lang/String;)V

    .line 590
    const-string v7, "section"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/common/entities/CommonListEntity;->setSection(Ljava/lang/String;)V

    .line 591
    const-string v7, "background"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/common/entities/CommonListEntity;->setBackground(Ljava/lang/String;)V

    .line 592
    const-string v7, "header_image"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/common/entities/CommonListEntity;->setHeaderImage(Ljava/lang/String;)V

    .line 593
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    .end local v1    # "i":I
    .end local v2    # "infoItem":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "thumbnail":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v3
.end method

.method public static final parseInstagramData(Ljava/lang/String;)Lcom/biznessapps/gallery/GalleryData;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1225
    new-instance v4, Lcom/biznessapps/gallery/GalleryData;

    invoke-direct {v4}, Lcom/biznessapps/gallery/GalleryData;-><init>()V

    .line 1227
    .local v4, "resultData":Lcom/biznessapps/gallery/GalleryData;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1229
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1232
    .local v3, "obj":Lorg/json/JSONObject;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/biznessapps/gallery/GalleryData;->setUseCoverflow(Z)V

    .line 1233
    const-string v5, "user_id"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/gallery/GalleryData;->setUserId(Ljava/lang/String;)V

    .line 1234
    const-string v5, "token"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/gallery/GalleryData;->setApiKey(Ljava/lang/String;)V

    .line 1235
    const-string v5, "background"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/gallery/GalleryData;->setBackground(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v4

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final parseInstagramImages(Lcom/biznessapps/gallery/GalleryData;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "galleryData"    # Lcom/biznessapps/gallery/GalleryData;
    .param p1, "metadata"    # Ljava/lang/String;

    .prologue
    .line 1246
    const/4 v9, 0x0

    .line 1248
    .local v9, "nextUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v4

    .line 1249
    .local v4, "galleryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    if-nez v4, :cond_0

    .line 1250
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "galleryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .restart local v4    # "galleryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    :cond_0
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1255
    .local v13, "root":Lorg/json/JSONObject;
    const-string v15, "pagination"

    invoke-static {v13, v15}, Lcom/biznessapps/utils/json/JsonParser;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 1258
    .local v11, "pagination":Lorg/json/JSONObject;
    const-string v15, "next_url"

    invoke-static {v11, v15}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1261
    const-string v15, "data"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1262
    .local v8, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    if-ge v5, v15, :cond_3

    .line 1264
    :try_start_1
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1266
    .local v10, "obj":Lorg/json/JSONObject;
    const-string v15, "type"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1267
    .local v14, "type":Ljava/lang/String;
    const-string v15, "video"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1262
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v14    # "type":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1271
    .restart local v10    # "obj":Lorg/json/JSONObject;
    .restart local v14    # "type":Ljava/lang/String;
    :cond_1
    const-string v15, "images"

    invoke-static {v10, v15}, Lcom/biznessapps/utils/json/JsonParser;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1272
    .local v6, "imagesObj":Lorg/json/JSONObject;
    const-string v15, "standard_resolution"

    invoke-static {v6, v15}, Lcom/biznessapps/utils/json/JsonParser;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 1273
    .local v12, "resolutionObj":Lorg/json/JSONObject;
    const-string v15, "caption"

    invoke-static {v10, v15}, Lcom/biznessapps/utils/json/JsonParser;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1274
    .local v2, "captionObj":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 1275
    .local v1, "caption":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1276
    const-string v15, "text"

    invoke-static {v2, v15}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1279
    :cond_2
    new-instance v7, Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {v7}, Lcom/biznessapps/gallery/GalleryData$Item;-><init>()V

    .line 1280
    .local v7, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    const-string v15, "height"

    invoke-static {v12, v15}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/biznessapps/gallery/GalleryData$Item;->setHeight(Ljava/lang/String;)V

    .line 1281
    const-string v15, "width"

    invoke-static {v12, v15}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/biznessapps/gallery/GalleryData$Item;->setWidth(Ljava/lang/String;)V

    .line 1282
    const-string v15, "url"

    invoke-static {v12, v15}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/biznessapps/gallery/GalleryData$Item;->setFullUrl(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v7, v1}, Lcom/biznessapps/gallery/GalleryData$Item;->setInfo(Ljava/lang/String;)V

    .line 1284
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1285
    .end local v1    # "caption":Ljava/lang/String;
    .end local v2    # "captionObj":Lorg/json/JSONObject;
    .end local v6    # "imagesObj":Lorg/json/JSONObject;
    .end local v7    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v12    # "resolutionObj":Lorg/json/JSONObject;
    .end local v14    # "type":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1286
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1289
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "pagination":Lorg/json/JSONObject;
    .end local v13    # "root":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 1290
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1293
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/biznessapps/gallery/GalleryData;->setItems(Ljava/util/List;)V

    .line 1295
    return-object v9
.end method

.method public static final parseLocation(Ljava/lang/String;)Ljava/util/List;
    .locals 13
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
    .line 1425
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    .local v6, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    if-nez p0, :cond_1

    .line 1427
    new-instance v0, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v0}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 1428
    .local v0, "emptyItem":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v11

    const/4 v12, -0x5

    invoke-virtual {v11, v12}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setErrorCode(I)V

    .line 1429
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    .end local v0    # "emptyItem":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_0
    :goto_0
    return-object v6

    .line 1432
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1433
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 1434
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1435
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v5, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v5}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 1437
    .local v5, "location":Lcom/biznessapps/location/entities/LocationEntity;
    const-string v11, "id"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setId(Ljava/lang/String;)V

    .line 1438
    const-string v11, "name"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setTitle(Ljava/lang/String;)V

    .line 1439
    const-string v11, "image"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setImageUrl(Ljava/lang/String;)V

    .line 1440
    const-string v11, "telephone"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setTelephone(Ljava/lang/String;)V

    .line 1441
    const-string v11, "telephone_display"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setTelephoneDisplay(Ljava/lang/String;)V

    .line 1442
    const-string v11, "email"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setEmail(Ljava/lang/String;)V

    .line 1443
    const-string v11, "website"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setWebsite(Ljava/lang/String;)V

    .line 1444
    const-string v11, "latitude"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setLatitude(Ljava/lang/String;)V

    .line 1445
    const-string v11, "longitude"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setLongitude(Ljava/lang/String;)V

    .line 1446
    const-string v11, "address_bottom_row"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setAddressBottomRow(Ljava/lang/String;)V

    .line 1447
    const-string v11, "address_top_row"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setAddressTopRow(Ljava/lang/String;)V

    .line 1448
    const-string v11, "address_1"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress1(Ljava/lang/String;)V

    .line 1449
    const-string v11, "address_2"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress2(Ljava/lang/String;)V

    .line 1450
    const-string v11, "city"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setCity(Ljava/lang/String;)V

    .line 1451
    const-string v11, "state"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setState(Ljava/lang/String;)V

    .line 1452
    const-string v11, "zip"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setZip(Ljava/lang/String;)V

    .line 1453
    const-string v11, "comment"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setComment(Ljava/lang/String;)V

    .line 1454
    const-string v11, "image1"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setImage1(Ljava/lang/String;)V

    .line 1455
    const-string v11, "image2"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/location/entities/LocationEntity;->setImage2(Ljava/lang/String;)V

    .line 1457
    const-string v11, "opening_times"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1458
    const-string v11, "opening_times"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1459
    .local v10, "openingTimes":Ljava/lang/String;
    invoke-static {v10}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "opening_times"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1460
    new-instance v8, Lorg/json/JSONArray;

    const-string v11, "opening_times"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1461
    .local v8, "openTimes":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 1462
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1463
    new-instance v9, Lcom/biznessapps/location/entities/LocationOpeningTime;

    invoke-direct {v9}, Lcom/biznessapps/location/entities/LocationOpeningTime;-><init>()V

    .line 1464
    .local v9, "openingTime":Lcom/biznessapps/location/entities/LocationOpeningTime;
    const-string v11, "day"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/location/entities/LocationOpeningTime;->setDay(Ljava/lang/String;)V

    .line 1465
    const-string v11, "open_from"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/location/entities/LocationOpeningTime;->setOpenFrom(Ljava/lang/String;)V

    .line 1466
    const-string v11, "open_to"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/biznessapps/location/entities/LocationOpeningTime;->setOpenTo(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v5}, Lcom/biznessapps/location/entities/LocationEntity;->getOpeningTimes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1471
    .end local v3    # "j":I
    .end local v8    # "openTimes":Lorg/json/JSONArray;
    .end local v9    # "openingTime":Lcom/biznessapps/location/entities/LocationOpeningTime;
    .end local v10    # "openingTimes":Ljava/lang/String;
    :cond_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1473
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1474
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v0, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v0}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 1475
    .restart local v0    # "emptyItem":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setException(Ljava/lang/Exception;)V

    .line 1476
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static final parseLocationList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
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
    .line 1732
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v5, "locationList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1735
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 1736
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1737
    .local v6, "obj":Lorg/json/JSONObject;
    new-instance v3, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v3}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 1739
    .local v3, "item":Lcom/biznessapps/location/entities/LocationEntity;
    const-string v7, "id"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1741
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1735
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1745
    :cond_0
    invoke-virtual {v3, v2}, Lcom/biznessapps/location/entities/LocationEntity;->setId(Ljava/lang/String;)V

    .line 1746
    const-string v7, "title"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setTitle(Ljava/lang/String;)V

    .line 1747
    const-string v7, "latitude"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setLatitude(Ljava/lang/String;)V

    .line 1748
    const-string v7, "longitude"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setLongitude(Ljava/lang/String;)V

    .line 1749
    const-string v7, "address_1"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress1(Ljava/lang/String;)V

    .line 1750
    const-string v7, "address_2"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setAddress2(Ljava/lang/String;)V

    .line 1751
    const-string v7, "address_bottom_row"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setAddressBottomRow(Ljava/lang/String;)V

    .line 1752
    const-string v7, "address_top_row"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setAddressTopRow(Ljava/lang/String;)V

    .line 1753
    const-string v7, "city"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setCity(Ljava/lang/String;)V

    .line 1754
    const-string v7, "state"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setState(Ljava/lang/String;)V

    .line 1755
    const-string v7, "zip"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setZip(Ljava/lang/String;)V

    .line 1756
    const-string v7, "telephone"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setTelephone(Ljava/lang/String;)V

    .line 1757
    const-string v7, "email"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setEmail(Ljava/lang/String;)V

    .line 1758
    const-string v7, "website"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setWebsite(Ljava/lang/String;)V

    .line 1759
    const-string v7, "background"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setBackground(Ljava/lang/String;)V

    .line 1760
    const-string v7, "each_background"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setItemBgUrl(Ljava/lang/String;)V

    .line 1761
    const-string v7, "timezone_value"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setTimezoneValue(F)V

    .line 1762
    const-string v7, "tab_id"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setTabId(Ljava/lang/String;)V

    .line 1763
    const-string v7, "distance_type"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/location/entities/LocationEntity;->setDistanceType(Ljava/lang/String;)V

    .line 1764
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1766
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1767
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1769
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    return-object v5
.end method

.method public static final parseMailingList(Ljava/lang/String;)Lcom/biznessapps/mailing_list/MailingListEntity;
    .locals 12
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v5, 0x0

    .line 394
    .local v5, "item":Lcom/biznessapps/mailing_list/MailingListEntity;
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 396
    .local v8, "jsonArray":Lorg/json/JSONArray;
    new-instance v6, Lcom/biznessapps/mailing_list/MailingListEntity;

    invoke-direct {v6}, Lcom/biznessapps/mailing_list/MailingListEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v5    # "item":Lcom/biznessapps/mailing_list/MailingListEntity;
    .local v6, "item":Lcom/biznessapps/mailing_list/MailingListEntity;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 398
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 399
    .local v10, "obj":Lorg/json/JSONObject;
    const-string v11, "image"

    invoke-static {v10, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/mailing_list/MailingListEntity;->setImageUrl(Ljava/lang/String;)V

    .line 400
    const-string v11, "logo_image"

    invoke-static {v10, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/mailing_list/MailingListEntity;->setLogoImage(Ljava/lang/String;)V

    .line 401
    const-string v11, "description"

    invoke-static {v10, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/mailing_list/MailingListEntity;->setDescription(Ljava/lang/String;)V

    .line 402
    const-string v11, "categories"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 403
    .local v1, "categoriesInJson":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/mailing_list/MailingListEntity$Category;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_0

    .line 406
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v9

    .line 407
    .local v9, "jsonItem":Lorg/json/JSONArray;
    new-instance v2, Lcom/biznessapps/mailing_list/MailingListEntity$Category;

    invoke-direct {v2}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;-><init>()V

    .line 408
    .local v2, "category":Lcom/biznessapps/mailing_list/MailingListEntity$Category;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->setId(Ljava/lang/String;)V

    .line 409
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->setName(Ljava/lang/String;)V

    .line 410
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 412
    .end local v2    # "category":Lcom/biznessapps/mailing_list/MailingListEntity$Category;
    .end local v9    # "jsonItem":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v6, v0}, Lcom/biznessapps/mailing_list/MailingListEntity;->setCategories(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    .end local v0    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/mailing_list/MailingListEntity$Category;>;"
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "categoriesInJson":Lorg/json/JSONArray;
    .end local v10    # "obj":Lorg/json/JSONObject;
    :cond_2
    move-object v5, v6

    .line 418
    .end local v4    # "i":I
    .end local v6    # "item":Lcom/biznessapps/mailing_list/MailingListEntity;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "item":Lcom/biznessapps/mailing_list/MailingListEntity;
    :goto_2
    return-object v5

    .line 415
    :catch_0
    move-exception v3

    .line 416
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 415
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "item":Lcom/biznessapps/mailing_list/MailingListEntity;
    .restart local v4    # "i":I
    .restart local v6    # "item":Lcom/biznessapps/mailing_list/MailingListEntity;
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "item":Lcom/biznessapps/mailing_list/MailingListEntity;
    .restart local v5    # "item":Lcom/biznessapps/mailing_list/MailingListEntity;
    goto :goto_3
.end method

.method public static final parseMenuItemsList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/menu_items/MenuSectionEntities;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v4, "menuSectionItemList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/menu_items/MenuSectionEntities;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 499
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 501
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v3, Lcom/biznessapps/menu_items/MenuSectionEntities;

    invoke-direct {v3}, Lcom/biznessapps/menu_items/MenuSectionEntities;-><init>()V

    .line 502
    .local v3, "menuSectionItem":Lcom/biznessapps/menu_items/MenuSectionEntities;
    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/menu_items/MenuSectionEntities;->setId(Ljava/lang/String;)V

    .line 503
    const-string v6, "price"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/menu_items/MenuSectionEntities;->setPrice(Ljava/lang/String;)V

    .line 504
    const-string v6, "currency"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/menu_items/MenuSectionEntities;->setCurrency(Ljava/lang/String;)V

    .line 505
    const-string v6, "currency_sign"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/menu_items/MenuSectionEntities;->setCurrencySign(Ljava/lang/String;)V

    .line 506
    const-string v6, "title"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/menu_items/MenuSectionEntities;->setTitle(Ljava/lang/String;)V

    .line 507
    const-string v6, "background"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/menu_items/MenuSectionEntities;->setBackground(Ljava/lang/String;)V

    .line 508
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "menuSectionItem":Lcom/biznessapps/menu_items/MenuSectionEntities;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static final parseMenuList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v4, "menuSectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 477
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 478
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 480
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-direct {v2}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 481
    .local v2, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setId(Ljava/lang/String;)V

    .line 482
    const-string v6, "section"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setSection(Ljava/lang/String;)V

    .line 483
    const-string v6, "title"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setTitle(Ljava/lang/String;)V

    .line 484
    const-string v6, "background"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setBackground(Ljava/lang/String;)V

    .line 485
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static final parseMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/messages/MessageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v4, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 452
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 453
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 455
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v3, Lcom/biznessapps/messages/MessageEntity;

    invoke-direct {v3}, Lcom/biznessapps/messages/MessageEntity;-><init>()V

    .line 456
    .local v3, "message":Lcom/biznessapps/messages/MessageEntity;
    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setId(Ljava/lang/String;)V

    .line 457
    const-string v6, "title"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setTitle(Ljava/lang/String;)V

    .line 458
    const-string v6, "date"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/biznessapps/messages/MessageEntity;->setTimeStamp(J)V

    .line 459
    const-string v6, "background"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setBackground(Ljava/lang/String;)V

    .line 460
    const-string v6, "rich_tab_id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setTabId(Ljava/lang/String;)V

    .line 461
    const-string v6, "rich_type"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setType(I)V

    .line 462
    const-string v6, "rich_url"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setUrl(Ljava/lang/String;)V

    .line 463
    const-string v6, "rich_cat_id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setCategoryId(Ljava/lang/String;)V

    .line 464
    const-string v6, "rich_detail_id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setDetailId(Ljava/lang/String;)V

    .line 465
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "message":Lcom/biznessapps/messages/MessageEntity;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static final parseMortgage(Ljava/lang/String;)Lcom/biznessapps/mortgage/MortgageEntity;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 178
    .local v3, "mortgage":Lcom/biznessapps/mortgage/MortgageEntity;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Lcom/biznessapps/mortgage/MortgageEntity;

    invoke-direct {v4}, Lcom/biznessapps/mortgage/MortgageEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v3    # "mortgage":Lcom/biznessapps/mortgage/MortgageEntity;
    .local v4, "mortgage":Lcom/biznessapps/mortgage/MortgageEntity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 181
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 182
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v6, "interest"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/mortgage/MortgageEntity;->setInterest(Ljava/lang/String;)V

    .line 183
    const-string v6, "readonly"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/mortgage/MortgageEntity;->setReadOnly(Z)V

    .line 184
    const-string v6, "image"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/mortgage/MortgageEntity;->setImageUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_0
    move-object v3, v4

    .line 189
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "mortgage":Lcom/biznessapps/mortgage/MortgageEntity;
    .restart local v3    # "mortgage":Lcom/biznessapps/mortgage/MortgageEntity;
    :goto_1
    return-object v3

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "mortgage":Lcom/biznessapps/mortgage/MortgageEntity;
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "mortgage":Lcom/biznessapps/mortgage/MortgageEntity;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "mortgage":Lcom/biznessapps/mortgage/MortgageEntity;
    .restart local v3    # "mortgage":Lcom/biznessapps/mortgage/MortgageEntity;
    goto :goto_2
.end method

.method public static final parseMusicList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/music/PlaylistEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2036
    const/4 v0, 0x0

    .line 2038
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2039
    .local v5, "jsonArray":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2040
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 2041
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2042
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v7, "id"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2040
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2045
    :cond_0
    new-instance v4, Lcom/biznessapps/music/PlaylistEntity;

    invoke-direct {v4}, Lcom/biznessapps/music/PlaylistEntity;-><init>()V

    .line 2047
    .local v4, "item":Lcom/biznessapps/music/PlaylistEntity;
    if-nez v3, :cond_1

    .line 2048
    const-string v7, "background"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setBackground(Ljava/lang/String;)V

    .line 2049
    const-string v7, "header"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setHeader(Ljava/lang/String;)V

    .line 2050
    const-string v7, "tint"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setTintColor(Ljava/lang/String;)V

    .line 2053
    :cond_1
    const-string v7, "artist"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setArtist(Ljava/lang/String;)V

    .line 2054
    const-string v7, "duration"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setDuration(I)V

    .line 2055
    const-string v7, "album"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setAlbum(Ljava/lang/String;)V

    .line 2056
    const-string v7, "id"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setId(Ljava/lang/String;)V

    .line 2057
    const-string v7, "itune"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setItune(Ljava/lang/String;)V

    .line 2058
    const-string v7, "note"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setDescription(Ljava/lang/String;)V

    .line 2059
    const-string v7, "onsale"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setOnSale(I)V

    .line 2060
    const-string v7, "album_art"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setAlbumArt(Ljava/lang/String;)V

    .line 2061
    const-string v7, "previewUrl"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setPreviewUrl(Ljava/lang/String;)V

    .line 2062
    const-string v7, "title"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/biznessapps/music/PlaylistEntity;->setTitle(Ljava/lang/String;)V

    .line 2064
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2066
    .end local v4    # "item":Lcom/biznessapps/music/PlaylistEntity;
    .end local v6    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 2067
    .end local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2069
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0

    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    .restart local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    .restart local v3    # "i":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    move-object v0, v1

    .line 2068
    .end local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    .restart local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    goto :goto_3

    .line 2066
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static final parseNewDesignData(Ljava/lang/String;)Lcom/biznessapps/common/entities/AppInfoEntity;
    .locals 11
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 800
    new-instance v0, Lcom/biznessapps/common/entities/AppInfoEntity;

    invoke-direct {v0}, Lcom/biznessapps/common/entities/AppInfoEntity;-><init>()V

    .line 802
    .local v0, "appInfo":Lcom/biznessapps/common/entities/AppInfoEntity;
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 803
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 804
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 806
    .local v7, "obj":Lorg/json/JSONObject;
    const-string v9, "image"

    invoke-static {v7, v9}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/biznessapps/common/entities/AppInfoEntity;->setImageUrl(Ljava/lang/String;)V

    .line 807
    const-string v9, "imagesInOrder"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 808
    .local v3, "imagesInUrlJson":Lorg/json/JSONArray;
    const-string v9, "manyImages"

    invoke-static {v7, v9}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "yes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 809
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/biznessapps/common/entities/AppInfoEntity;->setHasManyImages(Z)V

    .line 811
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v4, "imagesUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 813
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 814
    .local v8, "url":Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 816
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4}, Lcom/biznessapps/common/entities/AppInfoEntity;->setImagesInOrder(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    .end local v2    # "i":I
    .end local v3    # "imagesInUrlJson":Lorg/json/JSONArray;
    .end local v4    # "imagesUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "j":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 821
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v0
.end method

.method public static parsePhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 258
    .local v6, "root":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 259
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 260
    .local v5, "photoData":Lorg/json/JSONObject;
    new-instance v3, Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {v3}, Lcom/biznessapps/gallery/GalleryData$Item;-><init>()V

    .line 261
    .local v3, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    const-string v7, "caption"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/gallery/GalleryData$Item;->setInfo(Ljava/lang/String;)V

    .line 262
    const-string v7, "id"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/gallery/GalleryData$Item;->setId(Ljava/lang/String;)V

    .line 263
    const-string v7, "image"

    invoke-static {v5, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 266
    invoke-virtual {v3, v2}, Lcom/biznessapps/gallery/GalleryData$Item;->setFullUrl(Ljava/lang/String;)V

    .line 267
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "i":I
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v3    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v5    # "photoData":Lorg/json/JSONObject;
    .end local v6    # "root":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public static final parsePicasaData(Ljava/lang/String;)Lcom/biznessapps/gallery/GalleryData;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1208
    new-instance v4, Lcom/biznessapps/gallery/GalleryData;

    invoke-direct {v4}, Lcom/biznessapps/gallery/GalleryData;-><init>()V

    .line 1210
    .local v4, "resultData":Lcom/biznessapps/gallery/GalleryData;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1212
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1213
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "gallery_type"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "coverflow"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/biznessapps/gallery/GalleryData;->setUseCoverflow(Z)V

    .line 1214
    const-string v5, "userId"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/gallery/GalleryData;->setUserId(Ljava/lang/String;)V

    .line 1215
    const-string v5, "background"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/gallery/GalleryData;->setBackground(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-object v4

    .line 1213
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1218
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static final parseRealEstateItem(Ljava/lang/String;)Lcom/biznessapps/real_estate/RealEstateEntity;
    .locals 40
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1483
    new-instance v23, Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-direct/range {v23 .. v23}, Lcom/biznessapps/real_estate/RealEstateEntity;-><init>()V

    .line 1485
    .local v23, "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    :try_start_0
    new-instance v25, Lorg/json/JSONArray;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v25, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v38

    if-lez v38, :cond_1b

    .line 1488
    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 1490
    .local v26, "obj":Lorg/json/JSONObject;
    const-string v38, "id"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setId(Ljava/lang/String;)V

    .line 1491
    const-string v38, "latitude"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setLatitude(Ljava/lang/String;)V

    .line 1492
    const-string v38, "longitude"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setLongitude(Ljava/lang/String;)V

    .line 1493
    const-string v38, "address_1"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAddress1(Ljava/lang/String;)V

    .line 1494
    const-string v38, "address_2"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAddress2(Ljava/lang/String;)V

    .line 1495
    const-string v38, "address_bottom_row"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAddressBottomRow(Ljava/lang/String;)V

    .line 1496
    const-string v38, "address_top_row"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAddressTopRow(Ljava/lang/String;)V

    .line 1497
    const-string v38, "city"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setCity(Ljava/lang/String;)V

    .line 1498
    const-string v38, "state"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setState(Ljava/lang/String;)V

    .line 1499
    const-string v38, "zip"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setZip(Ljava/lang/String;)V

    .line 1500
    const-string v38, "type"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setType(Ljava/lang/String;)V

    .line 1501
    const-string v38, "distance_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setDistanceType(Ljava/lang/String;)V

    .line 1502
    const-string v38, "price"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setPrice(Ljava/lang/String;)V

    .line 1503
    const-string v38, "price_unit"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setPriceUnit(Ljava/lang/String;)V

    .line 1504
    const-string v38, "baths"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setBaths(Ljava/lang/String;)V

    .line 1505
    const-string v38, "beds"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setBeds(Ljava/lang/String;)V

    .line 1506
    const-string v38, "background"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setBackground(Ljava/lang/String;)V

    .line 1507
    const-string v38, "thumbnail_url"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setImageUrl(Ljava/lang/String;)V

    .line 1508
    const-string v38, "description"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setDescription(Ljava/lang/String;)V

    .line 1509
    const-string v38, "agent"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAgent(Ljava/lang/String;)V

    .line 1510
    const-string v38, "phonenumber"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setPhoneNumber(Ljava/lang/String;)V

    .line 1511
    const-string v38, "email"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setEmail(Ljava/lang/String;)V

    .line 1512
    const-string v38, "status"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setStatus(Ljava/lang/String;)V

    .line 1513
    const-string v38, "yearbuilt"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setYearBuild(I)V

    .line 1514
    const-string v38, "yearupdated"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setYearUpdated(I)V

    .line 1515
    const-string v38, "lotsize"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setLotSize(Ljava/lang/String;)V

    .line 1516
    const-string v38, "lotunit"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setLotUnit(Ljava/lang/String;)V

    .line 1517
    const-string v38, "houseunit"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setHouseUnit(Ljava/lang/String;)V

    .line 1518
    const-string v38, "sqft"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setSqft(Ljava/lang/String;)V

    .line 1519
    const-string v38, "basement"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setBasement(Ljava/lang/String;)V

    .line 1520
    const-string v38, "architectural_style"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setArchitecturalStyle(Ljava/lang/String;)V

    .line 1521
    const-string v38, "appliances"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1522
    .local v3, "appliancesJson":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 1523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1524
    .local v2, "appliances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_0

    .line 1525
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 1527
    :cond_0
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAppliances(Ljava/util/List;)V

    .line 1529
    .end local v2    # "appliances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "j":I
    :cond_1
    const-string v38, "cooling_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1530
    .local v7, "coolingTypesJson":Lorg/json/JSONArray;
    if-eqz v7, :cond_3

    .line 1531
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    .local v6, "coolingTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    .line 1533
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 1535
    :cond_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setCoolingTypes(Ljava/util/List;)V

    .line 1537
    .end local v6    # "coolingTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "j":I
    :cond_3
    const-string v38, "floor_covering"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1538
    .local v13, "floorCoveringJson":Lorg/json/JSONArray;
    if-eqz v13, :cond_5

    .line 1539
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    .local v12, "floorCovering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_4

    .line 1541
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 1543
    :cond_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/biznessapps/real_estate/RealEstateEntity;->setFloorCovering(Ljava/util/List;)V

    .line 1545
    .end local v12    # "floorCovering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "j":I
    :cond_5
    const-string v38, "heating_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 1546
    .local v19, "heatingTypeJson":Lorg/json/JSONArray;
    if-eqz v19, :cond_7

    .line 1547
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    .local v20, "heatingTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_6

    .line 1549
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1551
    :cond_6
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setHeatingTypes(Ljava/util/List;)V

    .line 1553
    .end local v20    # "heatingTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "j":I
    :cond_7
    const-string v38, "heating_fuel"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 1554
    .local v18, "heatingFuelJson":Lorg/json/JSONArray;
    if-eqz v18, :cond_9

    .line 1555
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .local v17, "heatingFuel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_8

    .line 1557
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1559
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setHeatingFuel(Ljava/util/List;)V

    .line 1562
    .end local v17    # "heatingFuel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "j":I
    :cond_9
    const-string v38, "indoor_features"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 1563
    .local v22, "indoorFeaturesJson":Lorg/json/JSONArray;
    if-eqz v22, :cond_b

    .line 1564
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    .local v21, "indoorFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    .line 1566
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1565
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 1568
    :cond_a
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setIndoorFeature(Ljava/util/List;)V

    .line 1571
    .end local v21    # "indoorFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "j":I
    :cond_b
    const-string v38, "rooms"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 1572
    .local v35, "roomsJson":Lorg/json/JSONArray;
    if-eqz v35, :cond_d

    .line 1573
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v34, "rooms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_6
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_c

    .line 1575
    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 1577
    :cond_c
    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setRooms(Ljava/util/List;)V

    .line 1580
    .end local v24    # "j":I
    .end local v34    # "rooms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    const-string v38, "building_amenities"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1581
    .local v5, "buildingAmenitiesJson":Lorg/json/JSONArray;
    if-eqz v5, :cond_f

    .line 1582
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    .local v4, "buildingAmenities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_e

    .line 1584
    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 1586
    :cond_e
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->setBuildingAmenities(Ljava/util/List;)V

    .line 1589
    .end local v4    # "buildingAmenities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "j":I
    :cond_f
    const-string v38, "exterior"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1590
    .local v11, "exteriorJson":Lorg/json/JSONArray;
    if-eqz v11, :cond_11

    .line 1591
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1592
    .local v10, "exterior":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_8
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    .line 1593
    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 1595
    :cond_10
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/biznessapps/real_estate/RealEstateEntity;->setExterior(Ljava/util/List;)V

    .line 1598
    .end local v10    # "exterior":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "j":I
    :cond_11
    const-string v38, "outdoor_amenities"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    .line 1599
    .local v28, "outdoorAmenitiesJson":Lorg/json/JSONArray;
    if-eqz v28, :cond_13

    .line 1600
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    .local v27, "outdoorAmenities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_9
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_12

    .line 1602
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 1604
    :cond_12
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setOutdoorAmenities(Ljava/util/List;)V

    .line 1607
    .end local v24    # "j":I
    .end local v27    # "outdoorAmenities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    const-string v38, "parking"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 1608
    .local v30, "parkingJson":Lorg/json/JSONArray;
    if-eqz v30, :cond_15

    .line 1609
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    .local v29, "parking":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_a
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_14

    .line 1611
    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 1613
    :cond_14
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setParking(Ljava/util/List;)V

    .line 1616
    .end local v24    # "j":I
    .end local v29    # "parking":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    const-string v38, "roof"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v33

    .line 1617
    .local v33, "roofJson":Lorg/json/JSONArray;
    if-eqz v33, :cond_17

    .line 1618
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    .local v32, "roof":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_b
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_16

    .line 1620
    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    add-int/lit8 v24, v24, 0x1

    goto :goto_b

    .line 1622
    :cond_16
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setRoof(Ljava/util/List;)V

    .line 1625
    .end local v24    # "j":I
    .end local v32    # "roof":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    const-string v38, "view"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v37

    .line 1626
    .local v37, "viewJson":Lorg/json/JSONArray;
    if-eqz v37, :cond_19

    .line 1627
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1628
    .local v36, "view":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_c
    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    .line 1629
    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 1631
    :cond_18
    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->setView(Ljava/util/List;)V

    .line 1634
    .end local v24    # "j":I
    .end local v36    # "view":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    const-string v38, "gallery"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 1636
    .local v16, "galleryJson":Lorg/json/JSONObject;
    if-eqz v16, :cond_1b

    .line 1637
    const-string v38, "enable_description"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    .line 1638
    .local v8, "enabledDescription":Z
    const-string v38, "photos"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 1639
    .local v31, "photosArray":Lorg/json/JSONArray;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1640
    .local v14, "gallery":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_d
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v24

    move/from16 v1, v38

    if-ge v0, v1, :cond_1c

    .line 1641
    new-instance v15, Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {v15}, Lcom/biznessapps/gallery/GalleryData$Item;-><init>()V

    .line 1642
    .local v15, "galleryItem":Lcom/biznessapps/gallery/GalleryData$Item;
    if-eqz v8, :cond_1a

    .line 1643
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v38

    const-string v39, "description"

    invoke-virtual/range {v38 .. v39}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Lcom/biznessapps/gallery/GalleryData$Item;->setInfo(Ljava/lang/String;)V

    .line 1648
    :goto_e
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v38

    const-string v39, "url"

    invoke-virtual/range {v38 .. v39}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Lcom/biznessapps/gallery/GalleryData$Item;->setFullUrl(Ljava/lang/String;)V

    .line 1650
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 1646
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Lcom/biznessapps/real_estate/RealEstateEntity;->getAddress1()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Lcom/biznessapps/gallery/GalleryData$Item;->setInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    .line 1656
    .end local v3    # "appliancesJson":Lorg/json/JSONArray;
    .end local v5    # "buildingAmenitiesJson":Lorg/json/JSONArray;
    .end local v7    # "coolingTypesJson":Lorg/json/JSONArray;
    .end local v8    # "enabledDescription":Z
    .end local v11    # "exteriorJson":Lorg/json/JSONArray;
    .end local v13    # "floorCoveringJson":Lorg/json/JSONArray;
    .end local v14    # "gallery":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    .end local v15    # "galleryItem":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v16    # "galleryJson":Lorg/json/JSONObject;
    .end local v18    # "heatingFuelJson":Lorg/json/JSONArray;
    .end local v19    # "heatingTypeJson":Lorg/json/JSONArray;
    .end local v22    # "indoorFeaturesJson":Lorg/json/JSONArray;
    .end local v24    # "j":I
    .end local v25    # "jsonArray":Lorg/json/JSONArray;
    .end local v26    # "obj":Lorg/json/JSONObject;
    .end local v28    # "outdoorAmenitiesJson":Lorg/json/JSONArray;
    .end local v30    # "parkingJson":Lorg/json/JSONArray;
    .end local v31    # "photosArray":Lorg/json/JSONArray;
    .end local v33    # "roofJson":Lorg/json/JSONArray;
    .end local v35    # "roomsJson":Lorg/json/JSONArray;
    .end local v37    # "viewJson":Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    .line 1657
    .local v9, "ex":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1659
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_1b
    :goto_f
    return-object v23

    .line 1652
    .restart local v3    # "appliancesJson":Lorg/json/JSONArray;
    .restart local v5    # "buildingAmenitiesJson":Lorg/json/JSONArray;
    .restart local v7    # "coolingTypesJson":Lorg/json/JSONArray;
    .restart local v8    # "enabledDescription":Z
    .restart local v11    # "exteriorJson":Lorg/json/JSONArray;
    .restart local v13    # "floorCoveringJson":Lorg/json/JSONArray;
    .restart local v14    # "gallery":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    .restart local v16    # "galleryJson":Lorg/json/JSONObject;
    .restart local v18    # "heatingFuelJson":Lorg/json/JSONArray;
    .restart local v19    # "heatingTypeJson":Lorg/json/JSONArray;
    .restart local v22    # "indoorFeaturesJson":Lorg/json/JSONArray;
    .restart local v24    # "j":I
    .restart local v25    # "jsonArray":Lorg/json/JSONArray;
    .restart local v26    # "obj":Lorg/json/JSONObject;
    .restart local v28    # "outdoorAmenitiesJson":Lorg/json/JSONArray;
    .restart local v30    # "parkingJson":Lorg/json/JSONArray;
    .restart local v31    # "photosArray":Lorg/json/JSONArray;
    .restart local v33    # "roofJson":Lorg/json/JSONArray;
    .restart local v35    # "roomsJson":Lorg/json/JSONArray;
    .restart local v37    # "viewJson":Lorg/json/JSONArray;
    :cond_1c
    :try_start_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/biznessapps/real_estate/RealEstateEntity;->setGallery(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_f
.end method

.method public static final parseRealEstateList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/real_estate/RealEstateEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1684
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1686
    .local v5, "realEstateList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/real_estate/RealEstateEntity;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1688
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1689
    .local v4, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-direct {v2}, Lcom/biznessapps/real_estate/RealEstateEntity;-><init>()V

    .line 1691
    .local v2, "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    const-string v6, "id"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "id"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1687
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1695
    :cond_1
    if-nez v1, :cond_2

    .line 1697
    const-string v6, "show_all"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setShowAll(Z)V

    .line 1700
    :cond_2
    const-string v6, "id"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setId(Ljava/lang/String;)V

    .line 1701
    const-string v6, "latitude"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setLatitude(Ljava/lang/String;)V

    .line 1702
    const-string v6, "longitude"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setLongitude(Ljava/lang/String;)V

    .line 1703
    const-string v6, "address_1"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAddress1(Ljava/lang/String;)V

    .line 1704
    const-string v6, "address_2"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAddress2(Ljava/lang/String;)V

    .line 1705
    const-string v6, "address_bottom_row"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAddressBottomRow(Ljava/lang/String;)V

    .line 1706
    const-string v6, "address_top_row"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setAddressTopRow(Ljava/lang/String;)V

    .line 1707
    const-string v6, "city"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setCity(Ljava/lang/String;)V

    .line 1708
    const-string v6, "state"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setState(Ljava/lang/String;)V

    .line 1709
    const-string v6, "zip"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setZip(Ljava/lang/String;)V

    .line 1710
    const-string v6, "type"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setType(Ljava/lang/String;)V

    .line 1711
    const-string v6, "distance_type"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setDistanceType(Ljava/lang/String;)V

    .line 1712
    const-string v6, "price"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setPrice(Ljava/lang/String;)V

    .line 1713
    const-string v6, "price_unit"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setPriceUnit(Ljava/lang/String;)V

    .line 1714
    const-string v6, "baths"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setBaths(Ljava/lang/String;)V

    .line 1715
    const-string v6, "beds"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setBeds(Ljava/lang/String;)V

    .line 1716
    const-string v6, "background"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setBackground(Ljava/lang/String;)V

    .line 1717
    const-string v6, "thumbnail_url"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setImageUrl(Ljava/lang/String;)V

    .line 1718
    const-string v6, "rent"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/real_estate/RealEstateEntity;->setRent(I)V

    .line 1719
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1721
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1722
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1724
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    return-object v5
.end method

.method public static final parseResellerInfo(Ljava/lang/String;)Lcom/biznessapps/reseller/ResellerInfo;
    .locals 11
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2406
    new-instance v7, Lcom/biznessapps/reseller/ResellerInfo;

    invoke-direct {v7}, Lcom/biznessapps/reseller/ResellerInfo;-><init>()V

    .line 2408
    .local v7, "info":Lcom/biznessapps/reseller/ResellerInfo;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2409
    .local v9, "root":Lorg/json/JSONObject;
    const-string v10, "reseller"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2410
    .local v4, "commonInfoObject":Lorg/json/JSONObject;
    const-string v10, "username"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setUsername(Ljava/lang/String;)V

    .line 2411
    const-string v10, "telephone"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setPhone(Ljava/lang/String;)V

    .line 2412
    const-string v10, "reseller_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setName(Ljava/lang/String;)V

    .line 2413
    const-string v10, "owner_email"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setOwnerEmail(Ljava/lang/String;)V

    .line 2414
    const-string v10, "locations"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setLocations(Ljava/lang/String;)V

    .line 2415
    const-string v10, "partner_domain"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setPartnerDomain(Ljava/lang/String;)V

    .line 2416
    const-string v10, "partner_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setPartnerName(Ljava/lang/String;)V

    .line 2417
    const-string v10, "partner_contact_email"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setPartnerContactEmail(Ljava/lang/String;)V

    .line 2418
    const-string v10, "partner_support_email"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setPartnerSupportEmail(Ljava/lang/String;)V

    .line 2419
    const-string v10, "is_active"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v7, v10}, Lcom/biznessapps/reseller/ResellerInfo;->setActive(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2421
    :try_start_1
    const-string v10, "header_background_color"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 2422
    .local v3, "colorValue":I
    invoke-virtual {v7, v3}, Lcom/biznessapps/reseller/ResellerInfo;->setHeaderBgColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2427
    .end local v3    # "colorValue":I
    :goto_0
    :try_start_2
    const-string v10, "apps"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2428
    .local v2, "appsInfoObject":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2430
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 2431
    new-instance v0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;

    invoke-direct {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;-><init>()V

    .line 2432
    .local v0, "app":Lcom/biznessapps/reseller/ResellerInfo$AppInfo;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2434
    .local v8, "obj":Lorg/json/JSONObject;
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->setId(Ljava/lang/String;)V

    .line 2435
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->setName(Ljava/lang/String;)V

    .line 2436
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->setAppCode(Ljava/lang/String;)V

    .line 2437
    const-string v10, "thumbnail"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->setThumbnail(Ljava/lang/String;)V

    .line 2438
    const-string v10, "live"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->setLive(Z)V

    .line 2439
    const-string v10, "demo"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->setDemo(Z)V

    .line 2440
    const-string v10, "active"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->setActive(Z)V

    .line 2441
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2430
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2443
    .end local v0    # "app":Lcom/biznessapps/reseller/ResellerInfo$AppInfo;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v7, v1}, Lcom/biznessapps/reseller/ResellerInfo;->setApps(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2447
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    .end local v2    # "appsInfoObject":Lorg/json/JSONArray;
    .end local v4    # "commonInfoObject":Lorg/json/JSONObject;
    .end local v6    # "i":I
    .end local v9    # "root":Lorg/json/JSONObject;
    :goto_2
    return-object v7

    .line 2444
    :catch_0
    move-exception v5

    .line 2445
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2423
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "commonInfoObject":Lorg/json/JSONObject;
    .restart local v9    # "root":Lorg/json/JSONObject;
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method public static parseReservationCenterData(Lcom/biznessapps/reservation/ReservationDataKeeper;Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;
    .locals 21
    .param p0, "dataKeeper"    # Lcom/biznessapps/reservation/ReservationDataKeeper;
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 2261
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2262
    .local v10, "jsonArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_7

    .line 2263
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 2265
    .local v14, "obj":Lorg/json/JSONObject;
    const-string v20, "admin_email"

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setAdminEmail(Ljava/lang/String;)V

    .line 2266
    const-string v20, "background"

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setBackground(Ljava/lang/String;)V

    .line 2267
    const-string v20, "brief"

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setBrief(Ljava/lang/String;)V

    .line 2268
    const-string v20, "headerImage"

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setHeaderImage(Ljava/lang/String;)V

    .line 2269
    const-string v20, "open_time"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 2270
    const-string v20, "open_time"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 2271
    .local v16, "openTimesJson":Lorg/json/JSONArray;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2272
    .local v15, "openTimes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationOpeningTime;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_0

    .line 2273
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 2274
    .local v19, "timeJsonItem":Lorg/json/JSONObject;
    new-instance v17, Lcom/biznessapps/location/entities/LocationOpeningTime;

    invoke-direct/range {v17 .. v17}, Lcom/biznessapps/location/entities/LocationOpeningTime;-><init>()V

    .line 2275
    .local v17, "openingTime":Lcom/biznessapps/location/entities/LocationOpeningTime;
    const-string v20, "day"

    invoke-static/range {v19 .. v20}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/biznessapps/location/entities/LocationOpeningTime;->setDay(Ljava/lang/String;)V

    .line 2276
    const-string v20, "time"

    invoke-static/range {v19 .. v20}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/biznessapps/location/entities/LocationOpeningTime;->setTime(Ljava/lang/String;)V

    .line 2277
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2272
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2279
    .end local v17    # "openingTime":Lcom/biznessapps/location/entities/LocationOpeningTime;
    .end local v19    # "timeJsonItem":Lorg/json/JSONObject;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setOpenTimes(Ljava/util/List;)V

    .line 2281
    .end local v9    # "j":I
    .end local v15    # "openTimes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationOpeningTime;>;"
    .end local v16    # "openTimesJson":Lorg/json/JSONArray;
    :cond_1
    const-string v20, "block_days"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2282
    const-string v20, "block_days"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2283
    .local v3, "blockedDaysJson":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2284
    .local v2, "blockedDays":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;>;"
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_3

    .line 2285
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 2286
    .local v11, "jsonEntity":Lorg/json/JSONObject;
    const-string v20, "date"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/biznessapps/utils/DateUtils;->getBlockedDay(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 2287
    .local v4, "date":Ljava/util/Date;
    if-eqz v4, :cond_2

    .line 2288
    new-instance v6, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;

    invoke-direct {v6}, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;-><init>()V

    .line 2289
    .local v6, "entity":Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;
    invoke-virtual {v6, v4}, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;->setDate(Ljava/util/Date;)V

    .line 2290
    const-string v20, "note"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;->setNote(Ljava/lang/String;)V

    .line 2291
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2284
    .end local v6    # "entity":Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2294
    .end local v4    # "date":Ljava/util/Date;
    .end local v11    # "jsonEntity":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setBlockedDays(Ljava/util/List;)V

    .line 2296
    .end local v2    # "blockedDays":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;>;"
    .end local v3    # "blockedDaysJson":Lorg/json/JSONArray;
    .end local v9    # "j":I
    :cond_4
    const-string v20, "locations"

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/biznessapps/utils/json/JsonParser;->parseLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setLocations(Ljava/util/List;)V

    .line 2299
    const-string v20, "payment_gateways"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2300
    const-string v20, "payment_gateways"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 2301
    .local v18, "paymentJson":Lorg/json/JSONArray;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2302
    .local v13, "methods":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;>;"
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_5

    .line 2303
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 2304
    .local v12, "jsonItem":Lorg/json/JSONObject;
    new-instance v8, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;

    invoke-direct {v8}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;-><init>()V

    .line 2305
    .local v8, "item":Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;
    const-string v20, "gateway_type"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->setGatewayType(I)V

    .line 2306
    const-string v20, "gateway_title"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->setGatewayTitle(Ljava/lang/String;)V

    .line 2307
    const-string v20, "gateway_appid"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->setGatewayAppId(Ljava/lang/String;)V

    .line 2308
    const-string v20, "gateway_key"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->setGatewayKey(Ljava/lang/String;)V

    .line 2309
    const-string v20, "gateway_password"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->setGatewayPassword(Ljava/lang/String;)V

    .line 2310
    const-string v20, "others"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->setOthers(Ljava/lang/String;)V

    .line 2311
    const-string v20, "currency"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->setCurrency(Ljava/lang/String;)V

    .line 2313
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2302
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2315
    .end local v8    # "item":Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;
    .end local v12    # "jsonItem":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setPaymentMethods(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2262
    .end local v9    # "j":I
    .end local v13    # "methods":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;>;"
    .end local v18    # "paymentJson":Lorg/json/JSONArray;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2318
    .end local v7    # "i":I
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    .end local v14    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 2319
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setException(Ljava/lang/Exception;)V

    .line 2321
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    return-object p0
.end method

.method public static final parseReservationData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/entities/ReservationEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2144
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2146
    .local v5, "reservations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationEntity;>;"
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2147
    .local v6, "rootObject":Lorg/json/JSONObject;
    const-string v10, "error"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "error"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_1

    .line 2148
    const/4 v5, 0x0

    .line 2201
    .end local v5    # "reservations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationEntity;>;"
    .end local v6    # "rootObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v5

    .line 2150
    .restart local v5    # "reservations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationEntity;>;"
    .restart local v6    # "rootObject":Lorg/json/JSONObject;
    :cond_1
    const-string v10, "orders"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2152
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 2153
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2154
    .local v4, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-direct {v2}, Lcom/biznessapps/reservation/entities/ReservationEntity;-><init>()V

    .line 2155
    .local v2, "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    const-string v10, "id"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setId(Ljava/lang/String;)V

    .line 2157
    const-string v10, "user_id"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setUserId(Ljava/lang/String;)V

    .line 2158
    const-string v10, "item_id"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setItemId(Ljava/lang/String;)V

    .line 2159
    const-string v10, "paid_amount"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setPaidAmount(F)V

    .line 2160
    const-string v10, "service_name"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setServiceName(Ljava/lang/String;)V

    .line 2161
    const-string v10, "order_state"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setOrderState(I)V

    .line 2162
    const-string v10, "note"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setNote(Ljava/lang/String;)V

    .line 2163
    const-string v10, "app_id"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setAppId(Ljava/lang/String;)V

    .line 2164
    const-string v10, "tab_id"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setTabId(Ljava/lang/String;)V

    .line 2166
    const-string v10, "currency"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setCurrency(Ljava/lang/String;)V

    .line 2167
    const-string v10, "currency_sign"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setCurrencySign(Ljava/lang/String;)V

    .line 2168
    const-string v10, "loc_id"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setLocId(Ljava/lang/String;)V

    .line 2169
    const-string v10, "transaction_id"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setTransactionId(Ljava/lang/String;)V

    .line 2170
    const-string v10, "checkout_method"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setCheckoutMethod(I)V

    .line 2171
    const-string v10, "billing_address_id"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setBillingAddressId(Ljava/lang/String;)V

    .line 2177
    const-string v10, "cost"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setCost(F)V

    .line 2178
    const-string v10, "duration"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setDuration(Ljava/lang/String;)V

    .line 2179
    const-string v10, "image_url"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setImageUrl(Ljava/lang/String;)V

    .line 2180
    const-string v10, "thumbnail"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setThumbnail(Ljava/lang/String;)V

    .line 2182
    const-string v10, "location_city"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setCity(Ljava/lang/String;)V

    .line 2183
    const-string v10, "location_state"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setState(Ljava/lang/String;)V

    .line 2184
    const-string v10, "location_zip"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setZip(Ljava/lang/String;)V

    .line 2185
    const-string v10, "location_address_1"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setAddress1(Ljava/lang/String;)V

    .line 2186
    const-string v10, "location_address_2"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setAddress2(Ljava/lang/String;)V

    .line 2187
    const-string v10, "location_address_top"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setAddressTopRow(Ljava/lang/String;)V

    .line 2188
    const-string v10, "location_address_bottom"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setAddressBottomRow(Ljava/lang/String;)V

    .line 2191
    const-string v10, "placed_on"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setCreateTime(Ljava/lang/String;)V

    .line 2192
    const-string v10, "time_from"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    .line 2193
    .local v7, "timeFrom":I
    const-string v10, "time_to"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    .line 2194
    .local v8, "timeTo":I
    const-string v10, "timezone"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    .line 2195
    .local v9, "timeZone":I
    const-string v10, "date"

    invoke-static {v4, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v7, v8, v9}, Lcom/biznessapps/reservation/entities/ReservationEntity;->setDate(Ljava/lang/String;III)V

    .line 2196
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2152
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2198
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "rootObject":Lorg/json/JSONObject;
    .end local v7    # "timeFrom":I
    .end local v8    # "timeTo":I
    .end local v9    # "timeZone":I
    :catch_0
    move-exception v0

    .line 2199
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static final parseReservationServiceData(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/entities/ReservationServiceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2207
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationServiceItem;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2208
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/biznessapps/utils/json/JsonParser;->hasDataError(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 2210
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2211
    .local v6, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-direct {v2}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;-><init>()V

    .line 2212
    .local v2, "item":Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    const-string v9, "id"

    invoke-static {v6, v9}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setId(Ljava/lang/String;)V

    .line 2213
    const-string v9, "name"

    invoke-static {v6, v9}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setName(Ljava/lang/String;)V

    .line 2214
    const-string v9, "mins"

    invoke-static {v6, v9}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setMins(I)V

    .line 2215
    const-string v9, "price"

    invoke-static {v6, v9}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v2, v9}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setPrice(F)V

    .line 2216
    const-string v9, "currency"

    invoke-static {v6, v9}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setCurrency(Ljava/lang/String;)V

    .line 2217
    const-string v9, "currency_sign"

    invoke-static {v6, v9}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setCurrencySign(Ljava/lang/String;)V

    .line 2218
    const-string v9, "note"

    invoke-static {v6, v9}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setNote(Ljava/lang/String;)V

    .line 2219
    const-string v9, "reserv_fee"

    invoke-static {v6, v9}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v2, v9}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setReserveFee(F)V

    .line 2220
    const-string v9, "thumbnail"

    invoke-static {v6, v9}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setThumbnail(Ljava/lang/String;)V

    .line 2221
    const-string v9, "rest_week"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 2222
    .local v8, "restWeeksArray":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2223
    .local v7, "restWeeks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 2224
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2226
    :cond_0
    invoke-virtual {v2, v7}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->setRestWeeks(Ljava/util/ArrayList;)V

    .line 2227
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2209
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2230
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    .end local v4    # "j":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "restWeeks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "restWeeksArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 2231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2233
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v3
.end method

.method public static parseReservationTimeData(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/entities/ReservationTimeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2239
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationTimeItem;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2240
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_0

    .line 2241
    const/4 v7, 0x0

    .line 2256
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :goto_0
    return-object v7

    .line 2243
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    if-eqz v5, :cond_1

    .line 2244
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationTimeItem;>;"
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationTimeItem;>;"
    move-object v3, v4

    .line 2246
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationTimeItem;>;"
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationTimeItem;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 2247
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2248
    .local v6, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    invoke-direct {v2}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;-><init>()V

    .line 2249
    .local v2, "item":Lcom/biznessapps/reservation/entities/ReservationTimeItem;
    const-string v7, "from"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->setFrom(I)V

    .line 2250
    const-string v7, "to"

    invoke-static {v6, v7}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->setTo(I)V

    .line 2251
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2253
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/reservation/entities/ReservationTimeItem;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v7, v3

    .line 2256
    goto :goto_0
.end method

.method public static final parseRichNotification(Ljava/lang/String;)Lcom/biznessapps/messages/MessageEntity;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2004
    new-instance v4, Lcom/biznessapps/messages/MessageEntity;

    invoke-direct {v4}, Lcom/biznessapps/messages/MessageEntity;-><init>()V

    .line 2006
    .local v4, "result":Lcom/biznessapps/messages/MessageEntity;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2007
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2008
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2009
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setId(Ljava/lang/String;)V

    .line 2010
    const-string v5, "rich_tab_id"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2011
    const-string v5, "rich_tab_id"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setTabId(Ljava/lang/String;)V

    .line 2013
    :cond_0
    const-string v5, "rich_type"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setType(I)V

    .line 2014
    const-string v5, "rich_url"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setUrl(Ljava/lang/String;)V

    .line 2015
    const-string v5, "rich_cat_id"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setCategoryId(Ljava/lang/String;)V

    .line 2016
    const-string v5, "rich_detail_id"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setDetailId(Ljava/lang/String;)V

    .line 2017
    const-string v5, "latitude"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setLatitude(Ljava/lang/String;)V

    .line 2018
    const-string v5, "longitude"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setLongitude(Ljava/lang/String;)V

    .line 2019
    const-string v5, "radius"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setRadius(Ljava/lang/String;)V

    .line 2020
    const-string v5, "paths"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/messages/MessageEntity;->setPaths(Ljava/lang/String;)V

    .line 2021
    const-string v5, "active_until"

    invoke-static {v3, v5}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/messages/MessageEntity;->setActiveTill(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2023
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2024
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2026
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public static final parseRssList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/rss/RssEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1964
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1965
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1966
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v3, Lcom/biznessapps/rss/RssEntity;

    invoke-direct {v3}, Lcom/biznessapps/rss/RssEntity;-><init>()V

    .line 1968
    .local v3, "item":Lcom/biznessapps/rss/RssEntity;
    if-nez v2, :cond_0

    .line 1969
    const-string v6, "background"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setBackground(Ljava/lang/String;)V

    .line 1970
    const-string v6, "tint"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setTintColor(Ljava/lang/String;)V

    .line 1973
    :cond_0
    const-string v6, "audio"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setRssUrl(Ljava/lang/String;)V

    .line 1974
    const-string v6, "creator"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setCreator(Ljava/lang/String;)V

    .line 1975
    const-string v6, "description"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setDescription(Ljava/lang/String;)V

    .line 1976
    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setId(Ljava/lang/String;)V

    .line 1977
    const-string v6, "type"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setAudioType(Z)V

    .line 1978
    const-string v6, "imageurl"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setImageUrl(Ljava/lang/String;)V

    .line 1979
    const-string v6, "link"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setLink(Ljava/lang/String;)V

    .line 1980
    const-string v6, "section"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setSection(Ljava/lang/String;)V

    .line 1981
    const-string v6, "subtitle"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setSubtitle(Ljava/lang/String;)V

    .line 1982
    const-string v6, "summary"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setSummary(Ljava/lang/String;)V

    .line 1983
    const-string v6, "title"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setTitle(Ljava/lang/String;)V

    .line 1984
    const-string v6, "icon"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setIcon(Ljava/lang/String;)V

    .line 1986
    const-string v6, "pubDate"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(JF)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/rss/RssEntity;->setDate(Ljava/util/Date;)V

    .line 1988
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1964
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1990
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/biznessapps/rss/RssEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1991
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1993
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method public static final parseSessionToken(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 2122
    new-instance v4, Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-direct {v4}, Lcom/biznessapps/reservation/ReservationDataKeeper;-><init>()V

    .line 2124
    .local v4, "resultData":Lcom/biznessapps/reservation/ReservationDataKeeper;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2125
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 2126
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2127
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v6, "token"

    invoke-static {v3, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setSessionToken(Ljava/lang/String;)V

    .line 2128
    const-string v6, "user_info"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2129
    .local v5, "userInfo":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 2130
    const-string v6, "u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserEmail(Ljava/lang/String;)V

    .line 2131
    const-string v6, "f"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserFirstName(Ljava/lang/String;)V

    .line 2132
    const-string v6, "l"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserLastName(Ljava/lang/String;)V

    .line 2133
    const-string v6, "c"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserPhone(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v5    # "userInfo":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v4

    .line 2137
    :catch_0
    move-exception v0

    .line 2138
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final parseStatFields(Ljava/lang/String;)Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    .locals 11
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 741
    const/4 v4, 0x0

    .line 743
    .local v4, "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 744
    .local v7, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 745
    .local v9, "size":I
    if-lez v9, :cond_1

    .line 746
    new-instance v5, Lcom/biznessapps/flexible_counter/StatFieldsEntity;

    invoke-direct {v5}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    .end local v4    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    .local v5, "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 748
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 749
    .local v8, "obj":Lorg/json/JSONObject;
    const-string v10, "email"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->setEmail(Ljava/lang/String;)V

    .line 750
    const-string v10, "image"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->setImageUrl(Ljava/lang/String;)V

    .line 751
    const-string v10, "message"

    invoke-static {v8, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->setMessage(Ljava/lang/String;)V

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v1, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "fields"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 755
    .local v2, "fields":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 756
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 758
    :cond_0
    invoke-virtual {v5, v1}, Lcom/biznessapps/flexible_counter/StatFieldsEntity;->setFields(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 747
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 761
    .end local v1    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "fields":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v5    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    .end local v6    # "j":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "size":I
    .restart local v4    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 764
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v4

    .line 761
    .end local v4    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    .restart local v3    # "i":I
    .restart local v5    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "size":I
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    .restart local v4    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    goto :goto_2

    .end local v4    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    .restart local v5    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    :cond_2
    move-object v4, v5

    .end local v5    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    .restart local v4    # "item":Lcom/biznessapps/flexible_counter/StatFieldsEntity;
    goto :goto_3
.end method

.method public static final parseTabs(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v9, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 112
    .local v6, "r":Ljava/util/Random;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 113
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 115
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v8, Lcom/biznessapps/more/Tab;

    invoke-direct {v8}, Lcom/biznessapps/more/Tab;-><init>()V

    .line 116
    .local v8, "tab":Lcom/biznessapps/more/Tab;
    const-string v10, "TabLabel"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setLabel(Ljava/lang/String;)V

    .line 117
    const-string v10, "TabImage"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setImage(Ljava/lang/String;)V

    .line 118
    const-string v10, "ViewController"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setViewController(Ljava/lang/String;)V

    .line 119
    const-string v10, "NavigationController"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setNavigationController(Ljava/lang/String;)V

    .line 120
    const-string v10, "LastUpdated"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setLastUpdated(Ljava/lang/String;)V

    .line 121
    const-string v10, "URL"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setUrl(Ljava/lang/String;)V

    .line 122
    const-string v10, "item_id"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setItemId(Ljava/lang/String;)V

    .line 123
    const-string v10, "section_id"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setSectionId(Ljava/lang/String;)V

    .line 124
    const-string v10, "blur_effect"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setUseBlurEffect(Z)V

    .line 125
    const-string v10, "custom_design"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 126
    .local v1, "hasCustomDesign":Z
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v8, v1}, Lcom/biznessapps/more/Tab;->setHasCustomDesign(Z)V

    .line 128
    const-string v10, "tab_src"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setTabSrc(Ljava/lang/String;)V

    .line 130
    :cond_0
    const-string v10, "openInSafari"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setOpenInSafari(Z)V

    .line 131
    const-string v10, "tab_showtext"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setShowText(Z)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lcom/biznessapps/more/Tab;->setId(J)V

    .line 136
    const-string v10, "tab_id"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setTabId(Ljava/lang/String;)V

    .line 137
    const-string v10, "tab_icon"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setTabIcon(Ljava/lang/String;)V

    .line 138
    const-string v10, "tab_tint"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setTabTint(Ljava/lang/String;)V

    .line 139
    const-string v10, "tab_tint_opacity"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setTabTintOpacity(F)V

    .line 140
    const-string v10, "tab_text"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setTabText(Ljava/lang/String;)V

    .line 143
    const-string v10, "global_background_color"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setGlobalBgColor(Ljava/lang/String;)V

    .line 144
    const-string v10, "EvenRowColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setEvenRowColor(Ljava/lang/String;)V

    .line 145
    const-string v10, "OddRowColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setOddRowColor(Ljava/lang/String;)V

    .line 146
    const-string v10, "FeatureTextColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setFeatureTextColor(Ljava/lang/String;)V

    .line 147
    const-string v10, "ButtonTextColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setButtonTextColor(Ljava/lang/String;)V

    .line 148
    const-string v10, "ButtonBgColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setButtonBgColor(Ljava/lang/String;)V

    .line 149
    const-string v10, "EvenRowTextColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setEvenRowTextColor(Ljava/lang/String;)V

    .line 150
    const-string v10, "OddRowTextColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setOddRowTextColor(Ljava/lang/String;)V

    .line 151
    const-string v10, "NavigationBarColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setNavigBarColor(Ljava/lang/String;)V

    .line 152
    const-string v10, "NavigationTextColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setNavigBarTextColor(Ljava/lang/String;)V

    .line 153
    const-string v10, "NavigationTextShadowColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setNavigBarTextShadowColor(Ljava/lang/String;)V

    .line 154
    const-string v10, "SectionBarColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setSectionBarColor(Ljava/lang/String;)V

    .line 155
    const-string v10, "SectionBarTextColor"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setSectionBarTextColor(Ljava/lang/String;)V

    .line 156
    const-string v10, "global_header"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setGlobalHeaderUrl(Ljava/lang/String;)V

    .line 157
    const-string v10, "nav_tint_opacity"

    invoke-static {v5, v10}, Lcom/biznessapps/utils/json/JsonParser;->getFloatValue(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setNavTintOpacity(F)V

    .line 159
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    if-eqz p1, :cond_3

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/more/Tab;

    .line 163
    .local v7, "subTab":Lcom/biznessapps/more/Tab;
    invoke-virtual {v7}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 164
    invoke-virtual {v7}, Lcom/biznessapps/more/Tab;->isHide()Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/biznessapps/more/Tab;->setHide(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 169
    .end local v1    # "hasCustomDesign":Z
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "r":Ljava/util/Random;
    .end local v7    # "subTab":Lcom/biznessapps/more/Tab;
    .end local v8    # "tab":Lcom/biznessapps/more/Tab;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v9

    .line 112
    .restart local v1    # "hasCustomDesign":Z
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "r":Ljava/util/Random;
    .restart local v8    # "tab":Lcom/biznessapps/more/Tab;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public static final parseTip(Ljava/lang/String;)Lcom/biznessapps/common/entities/CommonEntity;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "item":Lcom/biznessapps/common/entities/CommonEntity;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Lcom/biznessapps/common/entities/CommonEntity;

    invoke-direct {v3}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .local v3, "item":Lcom/biznessapps/common/entities/CommonEntity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 98
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 99
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v6, "image"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/common/entities/CommonEntity;->setImageUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_0
    move-object v2, v3

    .line 104
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    :goto_1
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .restart local v1    # "i":I
    .restart local v3    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    .restart local v2    # "item":Lcom/biznessapps/common/entities/CommonEntity;
    goto :goto_2
.end method

.method public static final parseTwitterSearchList(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1898
    .local v8, "root":Lorg/json/JSONObject;
    const-string v11, "statuses"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1899
    .local v6, "jsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    .line 1900
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 1901
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1902
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v5, Lcom/biznessapps/news/SearchEntity;

    invoke-direct {v5}, Lcom/biznessapps/news/SearchEntity;-><init>()V

    .line 1904
    .local v5, "item":Lcom/biznessapps/news/SearchEntity;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v11, "EEE MMM dd HH:mm:ss Z yyyy"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1905
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 1907
    .local v1, "date":Ljava/util/Date;
    :try_start_1
    const-string v11, "created_at"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1911
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v5, v11, v12}, Lcom/biznessapps/news/SearchEntity;->setTimeStamp(J)V

    .line 1913
    const-string v11, "user"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1914
    .local v10, "userObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_1

    .line 1915
    const-string v11, "name"

    invoke-static {v10, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/news/SearchEntity;->setTitle(Ljava/lang/String;)V

    .line 1916
    const-string v11, "screen_name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1917
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "screen_name"

    invoke-static {v10, v12}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/news/SearchEntity;->setName(Ljava/lang/String;)V

    .line 1919
    :cond_0
    const-string v11, "profile_image_url"

    invoke-static {v10, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/news/SearchEntity;->setImageUrl(Ljava/lang/String;)V

    .line 1922
    :cond_1
    const-string v11, "text"

    invoke-static {v7, v11}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/biznessapps/news/SearchEntity;->setText(Ljava/lang/String;)V

    .line 1923
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1900
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1908
    .end local v10    # "userObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 1909
    .local v3, "e1":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1926
    .end local v1    # "date":Ljava/util/Date;
    .end local v3    # "e1":Ljava/text/ParseException;
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/biznessapps/news/SearchEntity;
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "root":Lorg/json/JSONObject;
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v2

    .line 1927
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1929
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v0
.end method

.method public static final parseVoiceData(Ljava/lang/String;)Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v2, 0x0

    .line 214
    .local v2, "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 215
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-direct {v3}, Lcom/biznessapps/email_photo/EmailPhotoEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v2    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .local v3, "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 217
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 218
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v6, "description"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->setDescription(Ljava/lang/String;)V

    .line 219
    const-string v6, "email"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->setEmail(Ljava/lang/String;)V

    .line 220
    const-string v6, "image"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->setImageUrl(Ljava/lang/String;)V

    .line 221
    const-string v6, "subject"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->setSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_0
    move-object v2, v3

    .line 226
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    :goto_1
    return-object v2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .restart local v1    # "i":I
    .restart local v3    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .restart local v2    # "item":Lcom/biznessapps/email_photo/EmailPhotoEntity;
    goto :goto_2
.end method

.method public static final parseWebTiers(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2099
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    .local v5, "webTiers":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2102
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 2103
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2104
    .local v4, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-direct {v2}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 2105
    .local v2, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    const-string v6, "id"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setId(Ljava/lang/String;)V

    .line 2106
    const-string v6, "url"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setUrl(Ljava/lang/String;)V

    .line 2107
    const-string v6, "section"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setSection(Ljava/lang/String;)V

    .line 2108
    const-string v6, "title"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setTitle(Ljava/lang/String;)V

    .line 2109
    const-string v6, "background"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setBackground(Ljava/lang/String;)V

    .line 2110
    const-string v6, "thumbnail"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setImageUrl(Ljava/lang/String;)V

    .line 2111
    const-string v6, "openInSafari"

    invoke-static {v4, v6}, Lcom/biznessapps/utils/json/JsonParser;->getBooleanValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/common/entities/CommonListEntity;->setOpenInSafari(Z)V

    .line 2113
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2115
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2116
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2118
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    return-object v5
.end method

.method public static parseYoutubeComments(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 233
    .local v6, "root":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 234
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 235
    .local v2, "commentListData":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 236
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 237
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 238
    .local v1, "commentData":Lorg/json/JSONObject;
    new-instance v0, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-direct {v0}, Lcom/biznessapps/fan_wall/CommentEntity;-><init>()V

    .line 239
    .local v0, "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    const-string v7, "id"

    invoke-static {v1, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/fan_wall/CommentEntity;->setId(Ljava/lang/String;)V

    .line 240
    const-string v7, "content"

    invoke-static {v1, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/fan_wall/CommentEntity;->setComment(Ljava/lang/String;)V

    .line 241
    const-string v7, "author_avatar"

    invoke-static {v1, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/fan_wall/CommentEntity;->setImageUrl(Ljava/lang/String;)V

    .line 242
    const-string v7, "author"

    invoke-static {v1, v7}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/biznessapps/fan_wall/CommentEntity;->setTitle(Ljava/lang/String;)V

    .line 243
    const-string v7, "published"

    invoke-static {v1, v7}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/biznessapps/fan_wall/CommentEntity;->setTimeStamp(J)V

    .line 244
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    .end local v1    # "commentData":Lorg/json/JSONObject;
    .end local v2    # "commentListData":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "root":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 249
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v5
.end method

.method public static final parseYoutubeRssList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/youtube/YoutubeRssEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1831
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1833
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1834
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v3, Lcom/biznessapps/youtube/YoutubeRssEntity;

    invoke-direct {v3}, Lcom/biznessapps/youtube/YoutubeRssEntity;-><init>()V

    .line 1836
    .local v3, "item":Lcom/biznessapps/youtube/YoutubeRssEntity;
    const-string v6, "creator"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setCreator(Ljava/lang/String;)V

    .line 1837
    const-string v6, "creator_avatar"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setCreatorAvatar(Ljava/lang/String;)V

    .line 1838
    const-string v6, "description"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setDescription(Ljava/lang/String;)V

    .line 1839
    const-string v6, "gd:feedlink_countHint"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setFeedlinkCountHint(Ljava/lang/String;)V

    .line 1840
    const-string v6, "gd:feedlink_href"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setFeedlinkHref(Ljava/lang/String;)V

    .line 1841
    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setId(Ljava/lang/String;)V

    .line 1843
    const-string v6, "imageurl"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setImageUrl(Ljava/lang/String;)V

    .line 1844
    const-string v6, "link"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setLink(Ljava/lang/String;)V

    .line 1845
    const-string v6, "media:thumbnail_url"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setMediaThumbnailUrl(Ljava/lang/String;)V

    .line 1846
    const-string v6, "pubDate"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setTimeStamp(J)V

    .line 1847
    const-string v6, "gd:rating_average"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setRatingAverage(Ljava/lang/String;)V

    .line 1848
    const-string v6, "numlikes"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setCounts(Ljava/lang/String;)V

    .line 1849
    const-string v6, "section"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setSection(Ljava/lang/String;)V

    .line 1850
    const-string v6, "yt:statistics_viewCount"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setStatisticsViewCount(Ljava/lang/String;)V

    .line 1851
    const-string v6, "subtitle"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setSubtitle(Ljava/lang/String;)V

    .line 1852
    const-string v6, "summary"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setSummary(Ljava/lang/String;)V

    .line 1853
    const-string v6, "title"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setTitle(Ljava/lang/String;)V

    .line 1854
    const-string v6, "background"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setBackground(Ljava/lang/String;)V

    .line 1855
    if-nez v2, :cond_0

    .line 1856
    const-string v6, "note"

    invoke-static {v5, v6}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/youtube/YoutubeRssEntity;->setNote(Ljava/lang/String;)V

    .line 1859
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1861
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/biznessapps/youtube/YoutubeRssEntity;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1862
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1864
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method public static final updateInitStateWithData(Ljava/lang/String;)V
    .locals 14
    .param p0, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 825
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    .line 826
    .local v2, "cacher":Lcom/biznessapps/api/CachingManager;
    const/4 v9, 0x0

    .line 828
    .local v9, "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 829
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 830
    .local v8, "root":Lorg/json/JSONObject;
    const-string v12, "settings"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 832
    .local v7, "obj":Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 833
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v12

    invoke-static {v7}, Lcom/biznessapps/utils/json/JsonParser;->parseAppSettings(Lorg/json/JSONObject;)Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/biznessapps/api/AppCore;->setAppSettings(Lcom/biznessapps/common/entities/AppSettings;)V

    .line 836
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    .line 837
    .local v1, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/biznessapps/api/AppCore;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/biznessapps/common/entities/AppSettings;->getV6DeviceUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, "deviceUserId":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 839
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/biznessapps/api/AppCore;->getAppContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "user_id"

    invoke-static {v8, v13}, Lcom/biznessapps/utils/json/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/biznessapps/common/entities/AppSettings;->setV6DeviceUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 842
    :cond_1
    const-string v12, "home"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 843
    .local v5, "homeObject":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 844
    invoke-static {v5}, Lcom/biznessapps/utils/json/JsonParser;->parseAppInfo(Lorg/json/JSONObject;)Lcom/biznessapps/common/entities/AppInfoEntity;

    move-result-object v0

    .line 845
    .local v0, "appInfo":Lcom/biznessapps/common/entities/AppInfoEntity;
    const-string v12, "APP_INFO_PROPERTY"

    invoke-virtual {v2, v12, v0}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppInfoEntity;->getSubTabs()Ljava/util/List;

    move-result-object v9

    .line 848
    .end local v0    # "appInfo":Lcom/biznessapps/common/entities/AppInfoEntity;
    :cond_2
    const-string v12, "tabs"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 849
    .local v10, "tabInfo":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 850
    invoke-static {v10, v9}, Lcom/biznessapps/utils/json/JsonParser;->parseTabs(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 851
    .local v11, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    invoke-virtual {v2, v11}, Lcom/biznessapps/api/CachingManager;->setTabList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v1    # "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    .end local v3    # "deviceUserId":Ljava/lang/String;
    .end local v5    # "homeObject":Lorg/json/JSONObject;
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "root":Lorg/json/JSONObject;
    .end local v10    # "tabInfo":Ljava/lang/String;
    .end local v11    # "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :cond_3
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v4

    .line 854
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

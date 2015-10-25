.class public Lcom/biznessapps/localization/StringsHandler;
.super Ljava/lang/Object;
.source "StringsHandler.java"


# static fields
.field private static remoteStringsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/biznessapps/localization/StringsHandler;->remoteStringsMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageCode"    # Ljava/lang/String;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 138
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "localization_settings_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "saveKey":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/biznessapps/localization/StringsHandler;->remoteStringsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 143
    .local v2, "localeStringObj":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 144
    const-string v7, "ba.application.settings"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 145
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v6, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "localeStrings":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 148
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2    # "localeStringObj":Lorg/json/JSONObject;
    .local v3, "localeStringObj":Lorg/json/JSONObject;
    :try_start_1
    sget-object v7, Lcom/biznessapps/localization/StringsHandler;->remoteStringsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 170
    .end local v3    # "localeStringObj":Lorg/json/JSONObject;
    .end local v4    # "localeStrings":Ljava/lang/String;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .restart local v2    # "localeStringObj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-object v2

    .line 138
    .end local v2    # "localeStringObj":Lorg/json/JSONObject;
    .end local v5    # "saveKey":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "localization_settings_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 150
    .restart local v2    # "localeStringObj":Lorg/json/JSONObject;
    .restart local v4    # "localeStrings":Ljava/lang/String;
    .restart local v5    # "saveKey":Ljava/lang/String;
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "localization_settings_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "key":Ljava/lang/String;
    sget-object v7, Lcom/biznessapps/localization/StringsHandler;->remoteStringsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "localeStringObj":Lorg/json/JSONObject;
    check-cast v2, Lorg/json/JSONObject;

    .line 157
    .restart local v2    # "localeStringObj":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 158
    invoke-interface {v6, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    if-eqz v4, :cond_0

    .line 161
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    .end local v2    # "localeStringObj":Lorg/json/JSONObject;
    .restart local v3    # "localeStringObj":Lorg/json/JSONObject;
    :try_start_3
    sget-object v7, Lcom/biznessapps/localization/StringsHandler;->remoteStringsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .line 165
    .end local v3    # "localeStringObj":Lorg/json/JSONObject;
    .restart local v2    # "localeStringObj":Lorg/json/JSONObject;
    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "localeStringObj":Lorg/json/JSONObject;
    .restart local v3    # "localeStringObj":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "localeStringObj":Lorg/json/JSONObject;
    .restart local v2    # "localeStringObj":Lorg/json/JSONObject;
    goto :goto_3

    .line 150
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "localeStringObj":Lorg/json/JSONObject;
    .restart local v3    # "localeStringObj":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "localeStringObj":Lorg/json/JSONObject;
    .restart local v2    # "localeStringObj":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method private static getLocalStrings(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "localStrings":Ljava/lang/String;
    const/4 v3, 0x0

    .line 111
    .local v3, "localStringObj":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 114
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "strings.json"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 116
    .local v6, "size":I
    new-array v0, v6, [B

    .line 117
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 118
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 119
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v4    # "localStrings":Ljava/lang/String;
    .local v5, "localStrings":Ljava/lang/String;
    :try_start_1
    const-string v7, "en"

    const/4 v8, 0x0

    invoke-static {p0, v5, v7, v8}, Lcom/biznessapps/localization/StringsHandler;->saveStrings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v7, "en"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/biznessapps/localization/StringsHandler;->getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 126
    if-eqz v2, :cond_2

    .line 128
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 134
    .end local v0    # "buffer":[B
    .end local v5    # "localStrings":Ljava/lang/String;
    .end local v6    # "size":I
    .restart local v4    # "localStrings":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 129
    .end local v4    # "localStrings":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v5    # "localStrings":Ljava/lang/String;
    .restart local v6    # "size":I
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 131
    .end local v5    # "localStrings":Ljava/lang/String;
    .restart local v4    # "localStrings":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "size":I
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    if-eqz v2, :cond_0

    .line 128
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 129
    :catch_2
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v2, :cond_1

    .line 128
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 131
    :cond_1
    :goto_3
    throw v7

    .line 129
    :catch_3
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "localStrings":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v5    # "localStrings":Ljava/lang/String;
    .restart local v6    # "size":I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "localStrings":Ljava/lang/String;
    .restart local v4    # "localStrings":Ljava/lang/String;
    goto :goto_2

    .line 123
    .end local v4    # "localStrings":Ljava/lang/String;
    .restart local v5    # "localStrings":Ljava/lang/String;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "localStrings":Ljava/lang/String;
    .restart local v4    # "localStrings":Ljava/lang/String;
    goto :goto_1

    .end local v4    # "localStrings":Ljava/lang/String;
    .restart local v5    # "localStrings":Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .end local v5    # "localStrings":Ljava/lang/String;
    .restart local v4    # "localStrings":Ljava/lang/String;
    goto :goto_0
.end method

.method public static varargs getValues(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "langCode"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 38
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 39
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Keys can\'t be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 41
    :cond_1
    array-length v2, p2

    .line 42
    .local v2, "keysSize":I
    new-array v3, v2, [Ljava/lang/String;

    .line 44
    .local v3, "values":[Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "appCode":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Lcom/biznessapps/localization/LanguageHelper;->getUsedLanguageCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 50
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/biznessapps/localization/StringsHandler;->getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 51
    .local v1, "dataObj":Lorg/json/JSONObject;
    invoke-static {v3, p2, v1}, Lcom/biznessapps/localization/StringsHandler;->updateValues([Ljava/lang/String;[Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    .line 52
    .local v4, "wereUpdated":Z
    if-nez v4, :cond_4

    .line 53
    const-string v5, "en"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 55
    const-string v5, "en"

    invoke-static {p0, v5, v0}, Lcom/biznessapps/localization/StringsHandler;->getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 56
    invoke-static {v3, p2, v1}, Lcom/biznessapps/localization/StringsHandler;->updateValues([Ljava/lang/String;[Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    .line 58
    :cond_3
    if-nez v4, :cond_4

    .line 60
    invoke-static {p0}, Lcom/biznessapps/localization/StringsHandler;->getLocalStrings(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 61
    invoke-static {v3, p2, v1}, Lcom/biznessapps/localization/StringsHandler;->updateValues([Ljava/lang/String;[Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    .line 64
    :cond_4
    return-object v3
.end method

.method public static handleStringsRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 24
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "appCode":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v4

    const-string v5, "strings/getFile.php?lang=%s&format=json&android=1"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "fullUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&app_code=%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "getStringsUrl":Ljava/lang/String;
    :goto_0
    invoke-static {v3, v7}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/biznessapps/localization/StringsHandler;->isCorrectData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    invoke-static {p0, v1, p1, v0}, Lcom/biznessapps/localization/StringsHandler;->saveStrings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-object v1

    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "getStringsUrl":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    .line 27
    goto :goto_0
.end method

.method private static isCorrectData(Ljava/lang/String;)Z
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v1, 0x1

    .line 70
    .local v1, "isOk":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v2    # "root":Lorg/json/JSONObject;
    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static saveStrings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;
    .param p3, "appCode"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v5, "\\\\n"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%0.2f"

    const-string v7, "%.2f"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localization_settings_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "saveKey":Ljava/lang/String;
    :goto_0
    const-string v5, "ba.application.settings"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 182
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 183
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    .local v4, "stringObj":Lorg/json/JSONObject;
    sget-object v5, Lcom/biznessapps/localization/StringsHandler;->remoteStringsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v4    # "stringObj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 177
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "saveKey":Ljava/lang/String;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localization_settings_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 190
    .restart local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "saveKey":Ljava/lang/String;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static updateValues([Ljava/lang/String;[Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 6
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 83
    if-nez p2, :cond_1

    .line 84
    const/4 v1, 0x0

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    const/4 v1, 0x1

    .line 87
    .local v1, "everythingIsUpdate":Z
    array-length v4, p1

    .line 89
    .local v4, "valuesSize":I
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 90
    .local v3, "stringsContainer":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 91
    aget-object v5, p0, v2

    if-nez v5, :cond_2

    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    .end local v2    # "i":I
    .end local v3    # "stringsContainer":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v4, :cond_0

    .line 100
    aget-object v5, p0, v2

    if-nez v5, :cond_4

    .line 101
    const/4 v1, 0x0

    .line 102
    goto :goto_0

    .line 99
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

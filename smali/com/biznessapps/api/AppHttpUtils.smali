.class public Lcom/biznessapps/api/AppHttpUtils;
.super Ljava/lang/Object;
.source "AppHttpUtils.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final APP_CODE:Ljava/lang/String; = "app_code"

.field private static final AVATAR_URL:Ljava/lang/String; = "avatar_url"

.field private static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field private static final CATEGORIES:Ljava/lang/String; = "categories"

.field private static final COMMENT:Ljava/lang/String; = "comment"

.field private static final COUNTRY:Ljava/lang/String; = "country"

.field private static final EMAIL:Ljava/lang/String; = "email"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final POSTAL_CODE:Ljava/lang/String; = "postalcode"

.field private static final SEQUENCE:Ljava/lang/String; = "sequence"

.field private static final TAB_ID:Ljava/lang/String; = "tab_id"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static http:Lcom/biznessapps/api/HttpUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 223
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 224
    const-string v2, "version"

    const-string v3, "7"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 238
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AppSettings;->getDeviceUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "deviceUserId":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    :goto_1
    return-object p0

    .line 226
    .end local v0    # "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    .end local v1    # "deviceUserId":Ljava/lang/String;
    :cond_0
    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "&%s=%s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "version"

    aput-object v6, v5, v7

    const-string v6, "7"

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 229
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "?%s=%s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "version"

    aput-object v6, v5, v7

    const-string v6, "7"

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 244
    .restart local v0    # "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    .restart local v1    # "deviceUserId":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 245
    const-string v2, "device_user_id"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 247
    :cond_3
    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "&%s=%s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "device_user_id"

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 250
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "?%s=%s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "device_user_id"

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1
.end method

.method public static addToMailingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "appCode"    # Ljava/lang/String;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "categories"    # Ljava/lang/String;
    .param p5, "birthday"    # Ljava/lang/String;
    .param p6, "zip"    # Ljava/lang/String;
    .param p7, "country"    # Ljava/lang/String;
    .param p8, "comments"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 96
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "email"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "tab_id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "version"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "categories"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    invoke-static {p5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "birthday"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1
    invoke-static {p6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    const-string v1, "postalcode"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_2
    invoke-static {p7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    const-string v1, "country"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_3
    invoke-static {p8}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    const-string v1, "comment"

    invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_4
    const-string v1, "app_code"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "mailing_list_save.php"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/biznessapps/api/AppHttpUtils;->executePostRequestSync(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/biznessapps/api/AppHttpUtils;->executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;Z)V

    .line 200
    return-void
.end method

.method public static executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;Z)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "wrapUrl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 192
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 194
    :cond_0
    invoke-static {p0, v0}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v1

    invoke-static {v0}, Lcom/biznessapps/api/AppHttpUtils;->getKeys(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/biznessapps/api/AppHttpUtils;->getValues(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/biznessapps/api/HttpUtils;->executeGetRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 196
    return-void
.end method

.method public static executeGetSyncRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userPassword"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/biznessapps/api/HttpUtils;->executeRequestSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static executeGetSyncRequest(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "wrapUrl"    # Z

    .prologue
    .line 258
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 260
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/api/HttpUtils;->executeRequestSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static executePostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getKeys(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getValues(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, p2}, Lcom/biznessapps/api/HttpUtils;->executePostRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 293
    return-void
.end method

.method public static executePostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/biznessapps/api/AsyncCallback;Z)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "wrapUrl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 298
    :cond_0
    invoke-static {p0, p1}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 300
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getKeys(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getValues(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, p2}, Lcom/biznessapps/api/HttpUtils;->executePostRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 301
    return-void
.end method

.method public static executePostRequestSync(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getKeys(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getValues(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/biznessapps/api/HttpUtils;->executePostRequestSync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static executePostRequestSync(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "wrapUrl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 277
    :cond_0
    invoke-static {p0, p1}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getKeys(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getValues(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/biznessapps/api/HttpUtils;->executePostRequestSync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBearerAccessToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p0, p1}, Lcom/biznessapps/api/HttpUtils;->getBearerAccessTokenData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "bearerJSONData":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/json/JsonParser;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "bearerAccessToken":Ljava/lang/String;
    return-object v0
.end method

.method public static getEmptyParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method private static getKeys(Ljava/util/Map;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 305
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getValues(Ljava/util/Map;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 313
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 315
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static http()Lcom/biznessapps/api/HttpUtils;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/biznessapps/api/AppHttpUtils;->http:Lcom/biznessapps/api/HttpUtils;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/biznessapps/api/HttpUtils;

    invoke-direct {v0}, Lcom/biznessapps/api/HttpUtils;-><init>()V

    sput-object v0, Lcom/biznessapps/api/AppHttpUtils;->http:Lcom/biznessapps/api/HttpUtils;

    .line 55
    :cond_0
    sget-object v0, Lcom/biznessapps/api/AppHttpUtils;->http:Lcom/biznessapps/api/HttpUtils;

    return-object v0
.end method

.method public static postActivity(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "appCode"    # Ljava/lang/String;
    .param p4, "tabId"    # Ljava/lang/String;
    .param p5, "avatarUrl"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;
    .param p7, "sequence"    # I
    .param p8, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/biznessapps/api/AppHttpUtils;->postActivity(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static postActivity(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "appCode"    # Ljava/lang/String;
    .param p4, "tabId"    # Ljava/lang/String;
    .param p5, "avatarUrl"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;
    .param p7, "sequence"    # I
    .param p9, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    .local p8, "moreParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 77
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "action"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "device"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "tab_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "app_code"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "id"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "avatar_url"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    if-eqz p8, :cond_1

    .line 87
    invoke-interface {v0, p8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    :cond_1
    const-string v1, "sequence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v1, 0x1

    invoke-static {p9, v0, p0, v1}, Lcom/biznessapps/api/AppHttpUtils;->executePostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/biznessapps/api/AsyncCallback;Z)V

    .line 91
    return-void
.end method

.method public static postCommentAsync(Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "socialType"    # I
    .param p2, "socialId"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "tabId"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "comment"    # Ljava/lang/String;
    .param p7, "appCode"    # Ljava/lang/String;
    .param p8, "commentParentId"    # Ljava/lang/String;
    .param p9, "hasYoutubeFormat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/biznessapps/api/HttpUtils;->postFanCommentAsync(Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    return-void
.end method

.method public static postCommentAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V
    .locals 18
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appCode"    # Ljava/lang/String;
    .param p2, "tabId"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "userType"    # I
    .param p5, "userId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "hash"    # Ljava/lang/String;
    .param p9, "parentId"    # Ljava/lang/String;
    .param p10, "longitude"    # D
    .param p12, "latitude"    # D
    .param p14, "imageData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DD[B",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p15, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 149
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/biznessapps/api/AppHttpUtils;->addAdditionalParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    invoke-virtual/range {v1 .. v17}, Lcom/biznessapps/api/HttpUtils;->postCommentAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V

    .line 153
    return-void
.end method

.method public static postEventDataSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appCode"    # Ljava/lang/String;
    .param p2, "tabId"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "userType"    # Ljava/lang/String;
    .param p5, "userId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "hash"    # Ljava/lang/String;
    .param p9, "parentId"    # Ljava/lang/String;
    .param p10, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 123
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app_code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "tab_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "user_type"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "user_id"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "name"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "comment"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    invoke-static {p9}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const-string v1, "parent_id"

    invoke-interface {v0, v1, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    const-string v1, "hash"

    invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p10}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    const-string v1, "image"

    invoke-interface {v0, v1, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_2
    invoke-static {p0, v0}, Lcom/biznessapps/api/AppHttpUtils;->executePostRequestSync(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static sendPhoto([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "data"    # [B
    .param p1, "appCode"    # Ljava/lang/String;
    .param p2, "tabId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 159
    .local v4, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v8

    const-string v9, "photo_post.php"

    invoke-virtual {v8, v9}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 161
    .local v5, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "appCodeBody":Lorg/apache/http/entity/mime/content/StringBody;
    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v7, p2}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 163
    .local v7, "tabIdBody":Lorg/apache/http/entity/mime/content/StringBody;
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, p3}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, "eventIdBody":Lorg/apache/http/entity/mime/content/StringBody;
    const-string v2, ""

    .line 167
    .local v2, "emptyName":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string v8, "image/jpeg"

    invoke-direct {v1, p0, v8, v2}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v1, "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    new-instance v6, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v8, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v6, v8}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 169
    .local v6, "reqEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v8, "app_code"

    invoke-virtual {v6, v8, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 170
    const-string v8, "tab_id"

    invoke-virtual {v6, v8, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 171
    const-string v8, "image"

    invoke-virtual {v6, v8, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 172
    const-string v8, "id"

    invoke-virtual {v6, v8, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 174
    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 175
    invoke-virtual {v4, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 181
    .end local v0    # "appCodeBody":Lorg/apache/http/entity/mime/content/StringBody;
    .end local v1    # "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    .end local v2    # "emptyName":Ljava/lang/String;
    .end local v3    # "eventIdBody":Lorg/apache/http/entity/mime/content/StringBody;
    .end local v5    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "reqEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v7    # "tabIdBody":Lorg/apache/http/entity/mime/content/StringBody;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v8

    .line 179
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v8
.end method

.method public static sendPhotoAsync([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 7
    .param p0, "data"    # [B
    .param p1, "appCode"    # Ljava/lang/String;
    .param p2, "tabId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "caption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p5, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/biznessapps/api/HttpUtils;->sendPhotoAsync([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 219
    return-void
.end method

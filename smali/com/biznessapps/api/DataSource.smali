.class public Lcom/biznessapps/api/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# static fields
.field private static instance:Lcom/biznessapps/api/DataSource;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canUseOfflineData()Z
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->canUseOfflineMode()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/biznessapps/api/DataSource;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/biznessapps/api/DataSource;->instance:Lcom/biznessapps/api/DataSource;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/biznessapps/api/DataSource;

    invoke-direct {v0}, Lcom/biznessapps/api/DataSource;-><init>()V

    sput-object v0, Lcom/biznessapps/api/DataSource;->instance:Lcom/biznessapps/api/DataSource;

    .line 18
    :cond_0
    sget-object v0, Lcom/biznessapps/api/DataSource;->instance:Lcom/biznessapps/api/DataSource;

    return-object v0
.end method

.method private removeAdditionalParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v2, "&firstRun=1"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "resultUrl":Ljava/lang/String;
    const-string v2, "device_user_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 147
    .local v1, "tokenIndex":I
    if-lez v1, :cond_0

    .line 149
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBearerAccessToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/api/DataSource;->isOnline()Z

    move-result v1

    .line 125
    .local v1, "isOnline":Z
    if-eqz v1, :cond_1

    .line 126
    invoke-static {p1, p2}, Lcom/biznessapps/api/AppHttpUtils;->getBearerAccessToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/biznessapps/storage/StorageKeeper;->saveCacheItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/api/DataSource;->canUseOfflineData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/storage/StorageKeeper;->getCachedItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z[Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "userPassword"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/api/DataSource;->isOnline()Z

    move-result v1

    .line 36
    .local v1, "isOnline":Z
    if-eqz v1, :cond_1

    .line 37
    invoke-static {p1, p2, p3}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/biznessapps/storage/StorageKeeper;->saveCacheItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/api/DataSource;->canUseOfflineData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/storage/StorageKeeper;->getCachedItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "wrapUrl"    # Z

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z[Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getData(Ljava/lang/String;Z[Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "wrapUrl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "params":[Ljava/util/Map;, "[Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 49
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/api/DataSource;->isOnline()Z

    move-result v1

    .line 50
    .local v1, "isOnline":Z
    const/4 v2, 0x0

    .line 52
    .local v2, "keyValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 53
    const/4 v4, 0x0

    aget-object v2, p3, v4

    .line 54
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const-string v4, "device"

    const-string v5, "ipad"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_0
    if-eqz v1, :cond_5

    .line 68
    if-eqz v2, :cond_4

    .line 69
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "keyValueString":Ljava/lang/String;
    invoke-static {p1, v2, p2}, Lcom/biznessapps/api/AppHttpUtils;->executePostRequestSync(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    .end local v3    # "keyValueString":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/biznessapps/storage/StorageKeeper;->saveCacheItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_2
    return-object v0

    .line 57
    :cond_1
    const-string v4, "device"

    const-string v5, "iphone5"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&device=ipad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&device=iphone5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_4
    invoke-static {p1, p2}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 77
    :cond_5
    invoke-direct {p0}, Lcom/biznessapps/api/DataSource;->canUseOfflineData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    if-eqz v2, :cond_6

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    :cond_6
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/biznessapps/storage/StorageKeeper;->getCachedItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public getData(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V
    .locals 4
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/api/DataSource;->isOnline()Z

    move-result v1

    .line 89
    .local v1, "isOnline":Z
    if-eqz v1, :cond_1

    .line 90
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&device=ipad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 95
    :goto_0
    const/4 v2, 0x1

    invoke-static {p2, p1, v2}, Lcom/biznessapps/api/AppHttpUtils;->executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;Z)V

    .line 105
    :goto_1
    return-void

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&device=iphone5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/api/DataSource;->canUseOfflineData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/biznessapps/api/DataSource;->removeAdditionalParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/storage/StorageKeeper;->getCachedItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/biznessapps/api/AsyncCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v3}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->isAnyConnectionAvailable()Z

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "checkParams"    # Z

    .prologue
    .line 115
    if-eqz p3, :cond_0

    .line 116
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/biznessapps/api/DataSource;->removeAdditionalParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/biznessapps/storage/StorageKeeper;->saveCacheItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/biznessapps/storage/StorageKeeper;->saveCacheItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

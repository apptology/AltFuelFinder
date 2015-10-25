.class public Lcom/devicecollector/DataCollection;
.super Ljava/lang/Object;
.source "DataCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devicecollector/DataCollection$PostElement;
    }
.end annotation


# instance fields
.field private final collectorUrl:Ljava/lang/String;

.field private errors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/devicecollector/collectors/CollectorEnum;",
            "Lcom/devicecollector/collectors/SoftErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field private final merchantId:Ljava/lang/String;

.field private mobileData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/devicecollector/DataCollection$PostElement;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverUrl:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mercId"    # Ljava/lang/String;
    .param p3, "sessId"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/devicecollector/DataCollection;->collectorUrl:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/devicecollector/DataCollection;->merchantId:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/devicecollector/DataCollection;->sessionId:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/devicecollector/DataCollection;->mobileData:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/devicecollector/DataCollection;->errors:Ljava/util/HashMap;

    .line 147
    return-void
.end method


# virtual methods
.method public declared-synchronized addError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;)V
    .locals 1
    .param p1, "collector"    # Lcom/devicecollector/collectors/CollectorEnum;
    .param p2, "errorCode"    # Lcom/devicecollector/collectors/SoftErrorCode;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/devicecollector/DataCollection;->errors:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V
    .locals 1
    .param p1, "ele"    # Lcom/devicecollector/DataCollection$PostElement;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/devicecollector/DataCollection;->mobileData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCollectorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/devicecollector/DataCollection;->collectorUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/devicecollector/DataCollection;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPostData()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lcom/devicecollector/DataCollection$PostElement;->MERCHANT_ID:Lcom/devicecollector/DataCollection$PostElement;

    invoke-virtual {v5}, Lcom/devicecollector/DataCollection$PostElement;->postField()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/devicecollector/DataCollection;->merchantId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v5, Lcom/devicecollector/DataCollection$PostElement;->SESSION_ID:Lcom/devicecollector/DataCollection$PostElement;

    invoke-virtual {v5}, Lcom/devicecollector/DataCollection$PostElement;->postField()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/devicecollector/DataCollection;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v5, p0, Lcom/devicecollector/DataCollection;->mobileData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/devicecollector/DataCollection$PostElement;

    .line 215
    .local v1, "element":Lcom/devicecollector/DataCollection$PostElement;
    invoke-virtual {v1}, Lcom/devicecollector/DataCollection$PostElement;->postField()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/devicecollector/DataCollection;->mobileData:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    .end local v1    # "element":Lcom/devicecollector/DataCollection$PostElement;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 218
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/devicecollector/DataCollection;->errors:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, "errorList":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/devicecollector/DataCollection;->errors:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devicecollector/collectors/CollectorEnum;

    .line 221
    .local v0, "collector":Lcom/devicecollector/collectors/CollectorEnum;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/devicecollector/collectors/CollectorEnum;->postValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/devicecollector/DataCollection;->errors:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-virtual {v5}, Lcom/devicecollector/collectors/SoftErrorCode;->postValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    .end local v0    # "collector":Lcom/devicecollector/collectors/CollectorEnum;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const-string v7, "}"

    invoke-virtual {v2, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    sget-object v5, Lcom/devicecollector/DataCollection$PostElement;->ERROR_LIST:Lcom/devicecollector/DataCollection$PostElement;

    invoke-virtual {v5}, Lcom/devicecollector/DataCollection$PostElement;->postField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v2    # "errorList":Ljava/lang/StringBuilder;
    :cond_2
    monitor-exit p0

    return-object v4
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/devicecollector/DataCollection;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/devicecollector/DataCollection;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setServerUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/devicecollector/DataCollection;->serverUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

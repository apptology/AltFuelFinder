.class public Lcom/devicecollector/CollectorProcess;
.super Lcom/devicecollector/AbstractCollectorProcess;
.source "CollectorProcess.java"

# interfaces
.implements Lcom/devicecollector/collectors/CollectorStatusListener;


# static fields
.field protected static final GINGERBREAD_MR1:I = 0xa


# instance fields
.field private collectors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;",
            ">;"
        }
    .end annotation
.end field

.field private dataCollection:Lcom/devicecollector/DataCollection;

.field private errorCause:Ljava/lang/Exception;

.field private errorCode:Lcom/devicecollector/DeviceCollector$ErrorCode;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/devicecollector/DeviceCollector$StatusListener;Ljava/util/EnumSet;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/devicecollector/DeviceCollector$StatusListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/devicecollector/DeviceCollector$StatusListener;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/devicecollector/collectors/CollectorEnum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, "skipList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/devicecollector/collectors/CollectorEnum;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/devicecollector/AbstractCollectorProcess;-><init>(Landroid/app/Activity;Lcom/devicecollector/DeviceCollector$StatusListener;Ljava/util/EnumSet;)V

    .line 73
    return-void
.end method

.method private checkIfDone()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 191
    const-string v3, "checking if we are done..."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v1, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;>;"
    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;

    .line 198
    .local v2, "task":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    invoke-virtual {v2}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v2    # "task":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;

    .line 204
    .restart local v2    # "task":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;>;"
    .end local v2    # "task":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    :cond_2
    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    invoke-virtual {v3}, Lcom/devicecollector/DataCollection;->getServerUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 211
    :cond_3
    const-string v3, "All done, sending data..."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-direct {p0}, Lcom/devicecollector/CollectorProcess;->sendDataCollection()V

    .line 214
    invoke-direct {p0, v5, v5}, Lcom/devicecollector/CollectorProcess;->endProcess(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    .line 218
    :goto_2
    return-void

    .line 216
    :cond_4
    const-string v3, "[%s] collectors left"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private endProcess(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "err"    # Lcom/devicecollector/DeviceCollector$ErrorCode;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 254
    iput-boolean v3, p0, Lcom/devicecollector/CollectorProcess;->finished:Z

    .line 255
    if-eqz p1, :cond_0

    .line 256
    iput-object p1, p0, Lcom/devicecollector/CollectorProcess;->errorCode:Lcom/devicecollector/DeviceCollector$ErrorCode;

    .line 257
    iput-object p2, p0, Lcom/devicecollector/CollectorProcess;->errorCause:Ljava/lang/Exception;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/devicecollector/CollectorProcess;->lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/devicecollector/CollectorProcess;->errorCode:Lcom/devicecollector/DeviceCollector$ErrorCode;

    if-nez v0, :cond_1

    .line 262
    const-string v0, "Telling the listener we succeeded..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/devicecollector/CollectorProcess;->lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

    invoke-interface {v0}, Lcom/devicecollector/DeviceCollector$StatusListener;->onCollectorSuccess()V

    .line 270
    :goto_0
    monitor-enter p0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :goto_1
    iput-boolean v3, p0, Lcom/devicecollector/CollectorProcess;->finished:Z

    .line 280
    return-void

    .line 266
    :cond_1
    const-string v0, "Telling the listener we had a bad error..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/devicecollector/CollectorProcess;->lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

    iget-object v1, p0, Lcom/devicecollector/CollectorProcess;->errorCode:Lcom/devicecollector/DeviceCollector$ErrorCode;

    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->errorCause:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/devicecollector/DeviceCollector$StatusListener;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 275
    :cond_2
    const-string v0, "No listener to notify"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private removeCollectorFromList(Lcom/devicecollector/collectors/CollectorEnum;)V
    .locals 7
    .param p1, "collectorType"    # Lcom/devicecollector/collectors/CollectorEnum;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 225
    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "toRemove":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;

    .line 229
    .local v0, "collector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    invoke-virtual {v0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->getCollectorType()Lcom/devicecollector/collectors/CollectorEnum;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/devicecollector/collectors/CollectorEnum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    move-object v2, v0

    .line 235
    .end local v0    # "collector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    :cond_1
    if-eqz v2, :cond_2

    .line 236
    const-string v3, "Removing collector [%s]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->getCollectorType()Lcom/devicecollector/collectors/CollectorEnum;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "toRemove":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    :goto_0
    return-void

    .line 239
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "toRemove":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    :cond_2
    const-string v3, "Collector not found [%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "toRemove":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    :cond_3
    const-string v3, "No collectors being held"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendDataCollection()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 287
    new-instance v3, Lcom/devicecollector/AsyncTransmissionTask;

    invoke-direct {v3}, Lcom/devicecollector/AsyncTransmissionTask;-><init>()V

    .line 288
    .local v3, "transmitter":Lcom/devicecollector/AsyncTransmissionTask;
    new-array v0, v8, [Lcom/devicecollector/DataCollection;

    .line 289
    .local v0, "dcs":[Lcom/devicecollector/DataCollection;
    iget-object v4, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    aput-object v4, v0, v7

    .line 291
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    .line 292
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v0}, Lcom/devicecollector/AsyncTransmissionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    :goto_0
    const-string v4, "Final Collection:"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v4, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    invoke-virtual {v4}, Lcom/devicecollector/DataCollection;->getPostData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 299
    .local v2, "key":Ljava/lang/String;
    const-string v4, "key:[%s] value:[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    invoke-virtual {v6}, Lcom/devicecollector/DataCollection;->getPostData()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 295
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/devicecollector/AsyncTransmissionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 302
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private skip(Lcom/devicecollector/collectors/CollectorEnum;)Z
    .locals 2
    .param p1, "collector"    # Lcom/devicecollector/collectors/CollectorEnum;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/devicecollector/CollectorProcess;->skipList:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devicecollector/CollectorProcess;->skipList:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    sget-object v1, Lcom/devicecollector/collectors/SoftErrorCode;->MERCHANT_SKIPPED:Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-virtual {v0, p1, v1}, Lcom/devicecollector/DataCollection;->addError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;)V

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/devicecollector/CollectorProcess;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 15
    .param p1, "params"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    .line 84
    new-instance v1, Lcom/devicecollector/DataCollection;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const/4 v7, 0x2

    aget-object v7, p1, v7

    invoke-direct {v1, v2, v3, v7}, Lcom/devicecollector/DataCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    .line 88
    invoke-virtual {p0}, Lcom/devicecollector/CollectorProcess;->getTimeoutOverridden()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/devicecollector/CollectorProcess;->getTimeoutMs()J

    move-result-wide v4

    .line 90
    .local v4, "timeout":J
    :goto_0
    new-instance v0, Lcom/devicecollector/collectors/WebCollectorTask;

    iget-object v1, p0, Lcom/devicecollector/CollectorProcess;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/devicecollector/collectors/WebCollectorTask;-><init>(Landroid/app/Activity;Lcom/devicecollector/collectors/CollectorStatusListener;Lcom/devicecollector/DataCollection;J)V

    .line 92
    .local v0, "webTask":Lcom/devicecollector/collectors/WebCollectorTask;
    iget-object v1, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v1, Lcom/devicecollector/collectors/CollectorEnum;->GEO_LOCATION:Lcom/devicecollector/collectors/CollectorEnum;

    invoke-direct {p0, v1}, Lcom/devicecollector/CollectorProcess;->skip(Lcom/devicecollector/collectors/CollectorEnum;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v6, Lcom/devicecollector/collectors/LocationCollectorTask;

    iget-object v7, p0, Lcom/devicecollector/CollectorProcess;->activity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    move-object v8, p0

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/devicecollector/collectors/LocationCollectorTask;-><init>(Landroid/app/Activity;Lcom/devicecollector/collectors/CollectorStatusListener;Lcom/devicecollector/DataCollection;J)V

    .line 98
    .local v6, "locationTask":Lcom/devicecollector/collectors/LocationCollectorTask;
    iget-object v1, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v6    # "locationTask":Lcom/devicecollector/collectors/LocationCollectorTask;
    :cond_0
    iget-object v1, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;

    .line 103
    .local v12, "abstractCollector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting off "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 107
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v12, v1, v2}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 88
    .end local v0    # "webTask":Lcom/devicecollector/collectors/WebCollectorTask;
    .end local v4    # "timeout":J
    .end local v12    # "abstractCollector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    const-wide/16 v4, 0x1388

    goto :goto_0

    .line 110
    .restart local v0    # "webTask":Lcom/devicecollector/collectors/WebCollectorTask;
    .restart local v4    # "timeout":J
    .restart local v12    # "abstractCollector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v12, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 114
    .end local v12    # "abstractCollector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    :cond_3
    const-string v1, "Getting the quick data..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v14, Lcom/devicecollector/collectors/LocalCollector;

    iget-object v1, p0, Lcom/devicecollector/CollectorProcess;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    invoke-direct {v14, v1, v2}, Lcom/devicecollector/collectors/LocalCollector;-><init>(Landroid/app/Activity;Lcom/devicecollector/DataCollection;)V

    .line 118
    .local v14, "localCollector":Lcom/devicecollector/collectors/LocalCollector;
    invoke-virtual {v14}, Lcom/devicecollector/collectors/LocalCollector;->collectRequiredInfo()V

    .line 119
    const-string v1, "Got Required Info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v14}, Lcom/devicecollector/collectors/LocalCollector;->collectOptionalInfo()V

    .line 121
    const-string v1, "Got optional info..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v14}, Lcom/devicecollector/collectors/LocalCollector;->collectDeviceId()V

    .line 123
    const-string v1, "Got Device Cookie Info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const-string v1, "Done with quick data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/devicecollector/CollectorProcess;->checkIfDone()V

    .line 127
    const/4 v1, 0x0

    return-object v1
.end method

.method public onCancelled()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 326
    const-string v2, "Called cancel.."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-boolean v2, p0, Lcom/devicecollector/CollectorProcess;->finished:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    invoke-virtual {v2}, Lcom/devicecollector/DataCollection;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 329
    const-string v2, "Cancelling each collector"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;

    .line 331
    .local v0, "collector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    invoke-virtual {v0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    invoke-virtual {v0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->getCollectorType()Lcom/devicecollector/collectors/CollectorEnum;

    move-result-object v3

    sget-object v4, Lcom/devicecollector/collectors/SoftErrorCode;->MERCHANT_CANCELLED:Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-virtual {v2, v3, v4}, Lcom/devicecollector/DataCollection;->addError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;)V

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->getCollectorType()Lcom/devicecollector/collectors/CollectorEnum;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] collector..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->cancel(Z)Z

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelled ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->getCollectorType()Lcom/devicecollector/collectors/CollectorEnum;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] collector."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    .end local v0    # "collector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    :cond_1
    invoke-direct {p0}, Lcom/devicecollector/CollectorProcess;->sendDataCollection()V

    .line 345
    invoke-direct {p0, v6, v6}, Lcom/devicecollector/CollectorProcess;->endProcess(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    .line 351
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 346
    :cond_3
    iget-boolean v2, p0, Lcom/devicecollector/CollectorProcess;->finished:Z

    if-nez v2, :cond_2

    .line 348
    sget-object v2, Lcom/devicecollector/DeviceCollector$ErrorCode;->MERCHANT_CANCELLED:Lcom/devicecollector/DeviceCollector$ErrorCode;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string v4, "Merchant Cancelled"

    invoke-direct {v3, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/devicecollector/CollectorProcess;->endProcess(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onCollectorError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "collectorType"    # Lcom/devicecollector/collectors/CollectorEnum;
    .param p2, "code"    # Lcom/devicecollector/collectors/SoftErrorCode;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x1

    .line 167
    const-string v0, "Removing collector[%s] due to error [%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/devicecollector/CollectorProcess;->removeCollectorFromList(Lcom/devicecollector/collectors/CollectorEnum;)V

    .line 170
    sget-object v0, Lcom/devicecollector/collectors/CollectorEnum;->WEB:Lcom/devicecollector/collectors/CollectorEnum;

    invoke-virtual {v0, p1}, Lcom/devicecollector/collectors/CollectorEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iput-boolean v3, p0, Lcom/devicecollector/CollectorProcess;->finished:Z

    .line 172
    sget-object v0, Lcom/devicecollector/DeviceCollector$ErrorCode;->RUNTIME_FAILURE:Lcom/devicecollector/DeviceCollector$ErrorCode;

    iput-object v0, p0, Lcom/devicecollector/CollectorProcess;->errorCode:Lcom/devicecollector/DeviceCollector$ErrorCode;

    .line 173
    iput-object p3, p0, Lcom/devicecollector/CollectorProcess;->errorCause:Ljava/lang/Exception;

    .line 174
    iget-object v0, p0, Lcom/devicecollector/CollectorProcess;->lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/devicecollector/CollectorProcess;->lstnr:Lcom/devicecollector/DeviceCollector$StatusListener;

    iget-object v1, p0, Lcom/devicecollector/CollectorProcess;->errorCode:Lcom/devicecollector/DeviceCollector$ErrorCode;

    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->errorCause:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/devicecollector/DeviceCollector$StatusListener;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    .line 178
    :cond_0
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 180
    monitor-exit p0

    .line 184
    :goto_0
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/devicecollector/CollectorProcess;->checkIfDone()V

    goto :goto_0
.end method

.method public onCollectorStart(Lcom/devicecollector/collectors/CollectorEnum;)V
    .locals 2
    .param p1, "collectorType"    # Lcom/devicecollector/collectors/CollectorEnum;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Long Collector starting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public onCollectorSuccess(Lcom/devicecollector/collectors/CollectorEnum;)V
    .locals 3
    .param p1, "collectorType"    # Lcom/devicecollector/collectors/CollectorEnum;

    .prologue
    .line 147
    const-string v0, "Collector success [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/devicecollector/CollectorProcess;->removeCollectorFromList(Lcom/devicecollector/collectors/CollectorEnum;)V

    .line 152
    invoke-direct {p0}, Lcom/devicecollector/CollectorProcess;->checkIfDone()V

    .line 153
    return-void
.end method

.method public timeout()V
    .locals 4

    .prologue
    .line 357
    iget-boolean v2, p0, Lcom/devicecollector/CollectorProcess;->finished:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->dataCollection:Lcom/devicecollector/DataCollection;

    invoke-virtual {v2}, Lcom/devicecollector/DataCollection;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;

    .line 360
    .local v0, "collector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    invoke-virtual {v0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->timeout()V

    goto :goto_0

    .line 363
    .end local v0    # "collector":Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
    :cond_0
    invoke-direct {p0}, Lcom/devicecollector/CollectorProcess;->sendDataCollection()V

    .line 364
    iget-object v2, p0, Lcom/devicecollector/CollectorProcess;->errorCode:Lcom/devicecollector/DeviceCollector$ErrorCode;

    iget-object v3, p0, Lcom/devicecollector/CollectorProcess;->errorCause:Ljava/lang/Exception;

    invoke-direct {p0, v2, v3}, Lcom/devicecollector/CollectorProcess;->endProcess(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    .line 369
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 366
    :cond_1
    const-string v2, "Nothing to timeout"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/CollectorProcess;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

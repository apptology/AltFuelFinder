.class public abstract Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
.super Landroid/os/AsyncTask;
.source "AbstractAsyncCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/devicecollector/DataCollection;",
        ">;"
    }
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected dc:Lcom/devicecollector/DataCollection;

.field protected errorCause:Ljava/lang/Exception;

.field protected errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

.field protected finished:Z

.field protected lstnr:Lcom/devicecollector/collectors/CollectorStatusListener;

.field private timeoutMs:J

.field protected type:Lcom/devicecollector/collectors/CollectorEnum;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/devicecollector/collectors/CollectorStatusListener;Lcom/devicecollector/DataCollection;Lcom/devicecollector/collectors/CollectorEnum;J)V
    .locals 2
    .param p1, "callingActivity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/devicecollector/collectors/CollectorStatusListener;
    .param p3, "dataCollection"    # Lcom/devicecollector/DataCollection;
    .param p4, "collectorType"    # Lcom/devicecollector/collectors/CollectorEnum;
    .param p5, "timeout"    # J

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->activity:Landroid/app/Activity;

    .line 78
    iput-object p3, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    .line 79
    iput-object p2, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->lstnr:Lcom/devicecollector/collectors/CollectorStatusListener;

    .line 80
    iput-object p4, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->type:Lcom/devicecollector/collectors/CollectorEnum;

    .line 81
    const-wide/16 v0, 0x3e8

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 82
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->setTimeoutMs(J)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, p5, p6}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->setTimeoutMs(J)V

    goto :goto_0
.end method


# virtual methods
.method varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->type:Lcom/devicecollector/collectors/CollectorEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/devicecollector/DataCollection;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 173
    const-string v0, "Starting runner..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-boolean v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->finished:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->run()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->doInBackground([Ljava/lang/Void;)Lcom/devicecollector/DataCollection;

    move-result-object v0

    return-object v0
.end method

.method protected endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "err"    # Lcom/devicecollector/collectors/SoftErrorCode;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end process:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->finished:Z

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    iget-object v1, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->type:Lcom/devicecollector/collectors/CollectorEnum;

    invoke-virtual {v0, v1, p1}, Lcom/devicecollector/DataCollection;->addError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;)V

    .line 157
    iput-object p1, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

    .line 158
    iput-object p2, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->errorCause:Ljava/lang/Exception;

    .line 161
    :cond_0
    monitor-enter p0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCollectorType()Lcom/devicecollector/collectors/CollectorEnum;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->type:Lcom/devicecollector/collectors/CollectorEnum;

    return-object v0
.end method

.method public getErrorCause()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->errorCause:Ljava/lang/Exception;

    return-object v0
.end method

.method public getErrorCode()Lcom/devicecollector/collectors/SoftErrorCode;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

    return-object v0
.end method

.method public getTimeoutMs()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->timeoutMs:J

    return-wide v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->finished:Z

    return v0
.end method

.method notifyListener()V
    .locals 4

    .prologue
    .line 208
    const-string v0, "Notifying listener..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->lstnr:Lcom/devicecollector/collectors/CollectorStatusListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->lstnr:Lcom/devicecollector/collectors/CollectorStatusListener;

    iget-object v1, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->type:Lcom/devicecollector/collectors/CollectorEnum;

    invoke-interface {v0, v1}, Lcom/devicecollector/collectors/CollectorStatusListener;->onCollectorSuccess(Lcom/devicecollector/collectors/CollectorEnum;)V

    .line 218
    :goto_0
    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 220
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->lstnr:Lcom/devicecollector/collectors/CollectorStatusListener;

    iget-object v1, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->type:Lcom/devicecollector/collectors/CollectorEnum;

    iget-object v2, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

    iget-object v3, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->errorCause:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/devicecollector/collectors/CollectorStatusListener;->onCollectorError(Lcom/devicecollector/collectors/CollectorEnum;Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPostExecute(Lcom/devicecollector/DataCollection;)V
    .locals 2
    .param p1, "dc"    # Lcom/devicecollector/DataCollection;

    .prologue
    .line 139
    const-string v0, "Post Execute..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->notifyListener()V

    .line 141
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Lcom/devicecollector/DataCollection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->onPostExecute(Lcom/devicecollector/DataCollection;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v0, "Pre Execute..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->lstnr:Lcom/devicecollector/collectors/CollectorStatusListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->lstnr:Lcom/devicecollector/collectors/CollectorStatusListener;

    iget-object v1, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->type:Lcom/devicecollector/collectors/CollectorEnum;

    invoke-interface {v0, v1}, Lcom/devicecollector/collectors/CollectorStatusListener;->onCollectorStart(Lcom/devicecollector/collectors/CollectorEnum;)V

    .line 131
    :cond_0
    iput-boolean v2, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->finished:Z

    .line 132
    return-void
.end method

.method protected abstract run()V
.end method

.method public setTimeoutMs(J)V
    .locals 0
    .param p1, "timeout"    # J

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->timeoutMs:J

    .line 274
    return-void
.end method

.method public timeout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->finished:Z

    if-nez v0, :cond_0

    .line 233
    const-string v0, "Timed out. Cancelling..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->TIMEOUT:Lcom/devicecollector/collectors/SoftErrorCode;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Timed out."

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    .line 237
    iput-boolean v3, p0, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->finished:Z

    .line 238
    invoke-virtual {p0, v3}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->cancel(Z)Z

    .line 239
    invoke-virtual {p0}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->notifyListener()V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v0, "No need to timeout, already finished"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.class Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Lcom/biznessapps/utils/google/caching/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/utils/google/caching/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Lcom/biznessapps/utils/google/caching/ArrayDeque;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->mTasks:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/utils/google/caching/AsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/utils/google/caching/AsyncTask$1;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->mTasks:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    new-instance v1, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor$1;-><init>(Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_0
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->mTasks:Lcom/biznessapps/utils/google/caching/ArrayDeque;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_0
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

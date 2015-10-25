.class public abstract Lcom/biznessapps/utils/google/caching/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/utils/google/caching/AsyncTask$4;,
        Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult;,
        Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable;,
        Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;,
        Lcom/biznessapps/utils/google/caching/AsyncTask$Status;,
        Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x8

.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v1, 0x8

    .line 204
    new-instance v0, Lcom/biznessapps/utils/google/caching/AsyncTask$1;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 212
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 218
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/biznessapps/utils/google/caching/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/biznessapps/utils/google/caching/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 227
    invoke-static {}, Lcom/biznessapps/utils/google/caching/Utils;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;

    invoke-direct {v0, v9}, Lcom/biznessapps/utils/google/caching/AsyncTask$SerialExecutor;-><init>(Lcom/biznessapps/utils/google/caching/AsyncTask$1;)V

    :goto_0
    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 230
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 236
    new-instance v0, Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;

    invoke-direct {v0, v9}, Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;-><init>(Lcom/biznessapps/utils/google/caching/AsyncTask$1;)V

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sHandler:Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;

    .line 238
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 305
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->PENDING:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mStatus:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 306
    new-instance v0, Lcom/biznessapps/utils/google/caching/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/utils/google/caching/AsyncTask$2;-><init>(Lcom/biznessapps/utils/google/caching/AsyncTask;)V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mWorker:Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable;

    .line 316
    new-instance v0, Lcom/biznessapps/utils/google/caching/AsyncTask$3;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mWorker:Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/utils/google/caching/AsyncTask$3;-><init>(Lcom/biznessapps/utils/google/caching/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 333
    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/utils/google/caching/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/AsyncTask;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/utils/google/caching/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/utils/google/caching/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/utils/google/caching/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 627
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 628
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 657
    :goto_0
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->FINISHED:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mStatus:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    .line 658
    return-void

    .line 655
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sHandler:Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 295
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 344
    sget-object v1, Lcom/biznessapps/utils/google/caching/AsyncTask;->sHandler:Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;

    new-instance v2, Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult;-><init>(Lcom/biznessapps/utils/google/caching/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 337
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 338
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 299
    sput-object p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 300
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 490
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/biznessapps/utils/google/caching/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/biznessapps/utils/google/caching/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/biznessapps/utils/google/caching/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/biznessapps/utils/google/caching/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/biznessapps/utils/google/caching/AsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/biznessapps/utils/google/caching/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mStatus:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    sget-object v1, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->PENDING:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 597
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask$4;->$SwitchMap$com$biznessapps$utils$google$caching$AsyncTask$Status:[I

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mStatus:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 608
    :cond_0
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask$Status;->RUNNING:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mStatus:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    .line 610
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/AsyncTask;->onPreExecute()V

    .line 612
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mWorker:Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/biznessapps/utils/google/caching/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 613
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 615
    return-object p0

    .line 599
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 506
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/biznessapps/utils/google/caching/AsyncTask$Status;
    .locals 1

    .prologue
    .line 356
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mStatus:Lcom/biznessapps/utils/google/caching/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 457
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 444
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/AsyncTask;->onCancelled()V

    .line 429
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 384
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, "this":Lcom/biznessapps/utils/google/caching/AsyncTask;, "Lcom/biznessapps/utils/google/caching/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    sget-object v0, Lcom/biznessapps/utils/google/caching/AsyncTask;->sHandler:Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/biznessapps/utils/google/caching/AsyncTask$AsyncTaskResult;-><init>(Lcom/biznessapps/utils/google/caching/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/google/caching/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 649
    :cond_0
    return-void
.end method

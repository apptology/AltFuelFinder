.class final Lbolts/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field static final KEEP_ALIVE_TIME:J = 0x1L

.field static final MAX_POOL_SIZE:I

.field static final MAX_QUEUE_SIZE:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lbolts/Executors;->CPU_COUNT:I

    .line 53
    sget v0, Lbolts/Executors;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbolts/Executors;->CORE_POOL_SIZE:I

    .line 54
    sget v0, Lbolts/Executors;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbolts/Executors;->MAX_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .param p1, "value"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public static newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .prologue
    .line 69
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lbolts/Executors;->CORE_POOL_SIZE:I

    sget v2, Lbolts/Executors;->MAX_POOL_SIZE:I

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 75
    .local v0, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbolts/Executors;->allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    .line 77
    return-object v0
.end method

.method public static newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .locals 8
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 92
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lbolts/Executors;->CORE_POOL_SIZE:I

    sget v2, Lbolts/Executors;->MAX_POOL_SIZE:I

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 99
    .local v0, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbolts/Executors;->allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    .line 101
    return-object v0
.end method

.class public abstract Lcom/google/android/gms/common/api/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult;
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/a$d",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final AB:Ljava/lang/Object;

.field private AC:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final AD:Ljava/util/concurrent/CountDownLatch;

.field private final AE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$a;",
            ">;"
        }
    .end annotation
.end field

.field private AF:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile AG:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile AH:Z

.field private AI:Z

.field private AJ:Z

.field private AK:Lcom/google/android/gms/internal/fk;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AD:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AE:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AD:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AE:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/common/api/a$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AC:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AD:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AE:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->AC:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ee()V

    return-void
.end method

.method private b(Lcom/google/android/gms/common/api/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->AG:Lcom/google/android/gms/common/api/Result;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AK:Lcom/google/android/gms/internal/fk;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AD:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AG:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AF:Lcom/google/android/gms/common/api/ResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AC:Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a$c;->eg()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AI:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AC:Lcom/google/android/gms/common/api/a$c;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a$a;->AF:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eb()Lcom/google/android/gms/common/api/Result;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult$a;->l(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private c(Lcom/google/android/gms/common/api/Result;)V
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/api/Releasable;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AbstractPendingResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private eb()Lcom/google/android/gms/common/api/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AH:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AG:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->ec()V

    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ed()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Bw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AJ:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ee()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->By:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AJ:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/PendingResult$a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AH:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AG:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/PendingResult$a;->l(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->AJ:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->AI:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->AH:Z

    if-nez v2, :cond_3

    :goto_2
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a$a;->b(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->AC:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/fk;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->AK:Lcom/google/android/gms/internal/fk;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AH:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Result has already been consumed"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    const-string v0, "await must not be called on the UI thread"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AD:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eb()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ed()V

    goto :goto_1
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 4
    .param p1, "time"    # J
    .param p3, "units"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/a$a;, "Lcom/google/android/gms/common/api/a$a<TR;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AH:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    const-string v0, "await must not be called on the UI thread"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AD:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ee()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eb()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ed()V

    goto :goto_1
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AI:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AK:Lcom/google/android/gms/internal/fk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AK:Lcom/google/android/gms/internal/fk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fk;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AG:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;->c(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AF:Lcom/google/android/gms/common/api/ResultCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AI:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Bz:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;->b(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected abstract d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method protected ec()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AH:Z

    iput-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AG:Lcom/google/android/gms/common/api/Result;

    iput-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AF:Lcom/google/android/gms/common/api/ResultCallback;

    return-void
.end method

.method public isCanceled()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AI:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isReady()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AD:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/a$a;, "Lcom/google/android/gms/common/api/a$a<TR;>;"
    .local p1, "callback":Lcom/google/android/gms/common/api/ResultCallback;, "Lcom/google/android/gms/common/api/ResultCallback<TR;>;"
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AH:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AC:Lcom/google/android/gms/common/api/a$c;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eb()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->AF:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p2, "time"    # J
    .param p4, "units"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/api/a$a;, "Lcom/google/android/gms/common/api/a$a<TR;>;"
    .local p1, "callback":Lcom/google/android/gms/common/api/ResultCallback;, "Lcom/google/android/gms/common/api/ResultCallback<TR;>;"
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->AH:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fq;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->AB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AC:Lcom/google/android/gms/common/api/a$c;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->eb()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->AF:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->AC:Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/a$a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.class final Lcom/biznessapps/camera/scanning/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/camera/scanning/InactivityTimer$1;,
        Lcom/biznessapps/camera/scanning/InactivityTimer$DaemonThreadFactory;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_SECONDS:I = 0x12c


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/biznessapps/camera/scanning/InactivityTimer$DaemonThreadFactory;

    invoke-direct {v0, v1}, Lcom/biznessapps/camera/scanning/InactivityTimer$DaemonThreadFactory;-><init>(Lcom/biznessapps/camera/scanning/InactivityTimer$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    iput-object v1, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 36
    iput-object p1, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->activity:Landroid/app/Activity;

    .line 37
    invoke-virtual {p0}, Lcom/biznessapps/camera/scanning/InactivityTimer;->onActivity()V

    .line 38
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method onActivity()V
    .locals 5

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/biznessapps/camera/scanning/InactivityTimer;->cancel()V

    .line 45
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/biznessapps/camera/scanning/FinishListener;

    iget-object v2, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/biznessapps/camera/scanning/FinishListener;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x12c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 48
    return-void
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/biznessapps/camera/scanning/InactivityTimer;->cancel()V

    .line 65
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 66
    return-void
.end method

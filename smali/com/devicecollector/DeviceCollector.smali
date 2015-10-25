.class public final Lcom/devicecollector/DeviceCollector;
.super Ljava/lang/Object;
.source "DeviceCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devicecollector/DeviceCollector$StatusListener;,
        Lcom/devicecollector/DeviceCollector$ErrorCode;
    }
.end annotation


# static fields
.field private static final RE_MERC:Ljava/lang/String; = "^\\d{1,6}$"

.field private static final RE_SESS:Ljava/lang/String; = "^[\\w-]{1,32}$"

.field private static final RE_URL:Ljava/lang/String; = "^https?://[\\w-]+(\\.[\\w-]+)+(/[^?]*)?$"

.field public static final VERSION:Ljava/lang/String; = "2.5"


# instance fields
.field private activity:Landroid/app/Activity;

.field private collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

.field private collectorUrl:Ljava/lang/String;

.field private listener:Lcom/devicecollector/DeviceCollector$StatusListener;

.field private merchantId:Ljava/lang/String;

.field private skipList:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/devicecollector/collectors/CollectorEnum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "callingActivity"    # Landroid/app/Activity;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/devicecollector/DeviceCollector;->activity:Landroid/app/Activity;

    .line 297
    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 468
    :try_start_0
    iget-object v5, p0, Lcom/devicecollector/DeviceCollector;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 471
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 472
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 474
    .local v0, "active":Z
    :goto_0
    if-nez v0, :cond_0

    .line 475
    sget-object v5, Lcom/devicecollector/DeviceCollector$ErrorCode;->NO_NETWORK:Lcom/devicecollector/DeviceCollector$ErrorCode;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/devicecollector/DeviceCollector;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v0    # "active":Z
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return v0

    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    move v0, v4

    .line 472
    goto :goto_0

    .line 480
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 481
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/devicecollector/DeviceCollector$ErrorCode;->RUNTIME_FAILURE:Lcom/devicecollector/DeviceCollector$ErrorCode;

    invoke-direct {p0, v5, v2}, Lcom/devicecollector/DeviceCollector;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    move v0, v4

    .line 482
    goto :goto_1
.end method

.method private isValidParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "merc"    # Ljava/lang/String;
    .param p3, "sess"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 428
    if-eqz p1, :cond_0

    const-string v1, "^https?://[\\w-]+(\\.[\\w-]+)+(/[^?]*)?$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    :cond_0
    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->INVALID_URL:Lcom/devicecollector/DeviceCollector$ErrorCode;

    invoke-direct {p0, v1, v2}, Lcom/devicecollector/DeviceCollector;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    .line 441
    :goto_0
    return v0

    .line 432
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "^\\d{1,6}$"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 433
    :cond_2
    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->INVALID_MERCHANT:Lcom/devicecollector/DeviceCollector$ErrorCode;

    invoke-direct {p0, v1, v2}, Lcom/devicecollector/DeviceCollector;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 436
    :cond_3
    if-eqz p3, :cond_4

    const-string v1, "^[\\w-]{1,32}$"

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 437
    :cond_4
    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->INVALID_SESSION:Lcom/devicecollector/DeviceCollector$ErrorCode;

    invoke-direct {p0, v1, v2}, Lcom/devicecollector/DeviceCollector;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 441
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "code"    # Lcom/devicecollector/DeviceCollector$ErrorCode;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->listener:Lcom/devicecollector/DeviceCollector$StatusListener;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->listener:Lcom/devicecollector/DeviceCollector$StatusListener;

    invoke-interface {v0, p1, p2}, Lcom/devicecollector/DeviceCollector$StatusListener;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 369
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/devicecollector/DeviceCollector;->collect(Ljava/lang/String;J)V

    .line 370
    return-void
.end method

.method public collect(Ljava/lang/String;J)V
    .locals 8
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "timeoutMs"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 383
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    if-nez v0, :cond_2

    .line 384
    invoke-direct {p0}, Lcom/devicecollector/DeviceCollector;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->collectorUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/devicecollector/DeviceCollector;->merchantId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/devicecollector/DeviceCollector;->isValidParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Lcom/devicecollector/CollectorProcess;

    iget-object v1, p0, Lcom/devicecollector/DeviceCollector;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/devicecollector/DeviceCollector;->listener:Lcom/devicecollector/DeviceCollector$StatusListener;

    iget-object v3, p0, Lcom/devicecollector/DeviceCollector;->skipList:Ljava/util/EnumSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/CollectorProcess;-><init>(Landroid/app/Activity;Lcom/devicecollector/DeviceCollector$StatusListener;Ljava/util/EnumSet;)V

    iput-object v0, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    .line 389
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    invoke-virtual {v0, p2, p3}, Lcom/devicecollector/AbstractCollectorProcess;->setTimoutMs(J)V

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/devicecollector/DeviceCollector;->collectorUrl:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/devicecollector/DeviceCollector;->merchantId:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/devicecollector/AbstractCollectorProcess;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    new-array v1, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/devicecollector/DeviceCollector;->collectorUrl:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/devicecollector/DeviceCollector;->merchantId:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object p1, v1, v6

    invoke-virtual {v0, v1}, Lcom/devicecollector/AbstractCollectorProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->listener:Lcom/devicecollector/DeviceCollector$StatusListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    invoke-virtual {v0}, Lcom/devicecollector/AbstractCollectorProcess;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->listener:Lcom/devicecollector/DeviceCollector$StatusListener;

    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->RUNTIME_FAILURE:Lcom/devicecollector/DeviceCollector$ErrorCode;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Already running. Will not start collecting again."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/devicecollector/DeviceCollector$StatusListener;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->listener:Lcom/devicecollector/DeviceCollector$StatusListener;

    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->RUNTIME_FAILURE:Lcom/devicecollector/DeviceCollector$ErrorCode;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Already completed. Will not start collecting again."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/devicecollector/DeviceCollector$StatusListener;->onCollectorError(Lcom/devicecollector/DeviceCollector$ErrorCode;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCollectorUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/devicecollector/DeviceCollector;->collectorUrl:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setMerchantId(Ljava/lang/String;)V
    .locals 0
    .param p1, "merc"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/devicecollector/DeviceCollector;->merchantId:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setStatusListener(Lcom/devicecollector/DeviceCollector$StatusListener;)V
    .locals 2
    .param p1, "lstnr"    # Lcom/devicecollector/DeviceCollector$StatusListener;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/devicecollector/DeviceCollector;->listener:Lcom/devicecollector/DeviceCollector$StatusListener;

    .line 325
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    iget-object v1, p0, Lcom/devicecollector/DeviceCollector;->listener:Lcom/devicecollector/DeviceCollector$StatusListener;

    invoke-virtual {v0, v1}, Lcom/devicecollector/AbstractCollectorProcess;->setListener(Lcom/devicecollector/DeviceCollector$StatusListener;)V

    .line 328
    :cond_0
    return-void
.end method

.method public skipCollectors(Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/devicecollector/collectors/CollectorEnum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "list":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/devicecollector/collectors/CollectorEnum;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lcom/devicecollector/collectors/CollectorEnum;->WEB:Lcom/devicecollector/collectors/CollectorEnum;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You cannot skip the Web collector"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/devicecollector/DeviceCollector;->skipList:Ljava/util/EnumSet;

    .line 341
    return-void
.end method

.method public stopNow()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 352
    iget-object v1, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    invoke-virtual {v1}, Lcom/devicecollector/AbstractCollectorProcess;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempting to cancel.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/devicecollector/DeviceCollector;->collectorProcess:Lcom/devicecollector/AbstractCollectorProcess;

    invoke-virtual {v1, v0}, Lcom/devicecollector/AbstractCollectorProcess;->cancel(Z)Z

    .line 359
    :goto_0
    return v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not started, or already finished.  Skipping cancel."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    goto :goto_0
.end method

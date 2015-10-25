.class public final Lcom/paypal/android/sdk/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/paypal/android/sdk/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/paypal/android/sdk/Z;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/Z;

    return-object v0
.end method

.method public static final declared-synchronized a(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/paypal/android/sdk/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x0

    const-class v10, Lcom/paypal/android/sdk/e;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/Z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/paypal/android/sdk/Z;->a()Lcom/paypal/android/sdk/Z;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/Z;

    invoke-virtual {p2}, Lcom/paypal/android/sdk/b;->e()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/paypal/android/sdk/a;->b:Lcom/paypal/android/sdk/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/paypal/android/sdk/Z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/a;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/f;

    invoke-direct {v1}, Lcom/paypal/android/sdk/f;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init risk component: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/sdk/Z;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v10

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "paypal.sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An internal component failed to initialize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/Z;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/Z;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "risk component already initialized, returning new pairing id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

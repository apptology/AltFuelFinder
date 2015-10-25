.class public final Lcom/paypal/android/sdk/bd;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/bd;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bd;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/bd;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/paypal/android/sdk/bd;->b:I

    sget v0, Lcom/paypal/android/sdk/bd;->a:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/paypal/android/sdk/bd;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/be;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/be;-><init>(B)V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 7

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/paypal/android/sdk/bd;->b:I

    sget v2, Lcom/paypal/android/sdk/bd;->c:I

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    return-object v0
.end method

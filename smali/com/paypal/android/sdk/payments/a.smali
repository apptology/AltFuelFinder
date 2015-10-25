.class Lcom/paypal/android/sdk/payments/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/paypal/android/sdk/payments/aI;

.field private c:Ljava/lang/Object;

.field private d:Lcom/paypal/android/sdk/payments/aF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/paypal/android/sdk/payments/aF;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/paypal/android/sdk/payments/aF;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    instance-of v0, v0, Lcom/paypal/android/sdk/ck;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    instance-of v0, v0, Lcom/paypal/android/sdk/co;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object v1, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/aF;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "success"

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/aF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/aF;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/a;->b(Lcom/paypal/android/sdk/payments/aF;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/paypal/android/sdk/payments/aF;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/a;->b(Lcom/paypal/android/sdk/payments/aF;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->b:Lcom/paypal/android/sdk/payments/aI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->b:Lcom/paypal/android/sdk/payments/aI;

    invoke-interface {p1, v0}, Lcom/paypal/android/sdk/payments/aF;->a(Lcom/paypal/android/sdk/payments/aI;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/a;->b:Lcom/paypal/android/sdk/payments/aI;

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/aF;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/aF;

    goto :goto_0
.end method

.method final a(Lcom/paypal/android/sdk/payments/aI;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/aF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/aF;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/payments/aF;->a(Lcom/paypal/android/sdk/payments/aI;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/sdk/payments/a;->b:Lcom/paypal/android/sdk/payments/aI;

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/a;->c:Ljava/lang/Object;

    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/a;->d:Lcom/paypal/android/sdk/payments/aF;

    return-void
.end method

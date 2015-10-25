.class public Lcom/paypal/android/sdk/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/bs;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/paypal/android/sdk/b;

.field private c:Lcom/paypal/android/sdk/az;

.field private d:Lcom/paypal/android/sdk/ax;

.field private final e:Lcom/paypal/android/sdk/aD;

.field private f:Lcom/paypal/android/sdk/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/ay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ay;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/ax;Lcom/paypal/android/sdk/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/ay;->b:Lcom/paypal/android/sdk/b;

    iput-object p2, p0, Lcom/paypal/android/sdk/ay;->d:Lcom/paypal/android/sdk/ax;

    new-instance v0, Lcom/paypal/android/sdk/aD;

    invoke-direct {v0}, Lcom/paypal/android/sdk/aD;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/ay;->e:Lcom/paypal/android/sdk/aD;

    new-instance v0, Lcom/paypal/android/sdk/az;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/az;-><init>(Lcom/paypal/android/sdk/ay;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ay;->c:Lcom/paypal/android/sdk/az;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/ay;Lcom/paypal/android/sdk/br;)V
    .locals 3

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->e:Lcom/paypal/android/sdk/aD;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/paypal/android/sdk/aD;->a(Lcom/paypal/android/sdk/br;J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/bp;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "environment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ay;->d:Lcom/paypal/android/sdk/ax;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " environment.getEndpoints():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/ay;->d:Lcom/paypal/android/sdk/ax;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ax;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->d:Lcom/paypal/android/sdk/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->d:Lcom/paypal/android/sdk/ax;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ax;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->d:Lcom/paypal/android/sdk/ax;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ax;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/paypal/android/sdk/bp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->f:Lcom/paypal/android/sdk/bn;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bn;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/aF;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->e:Lcom/paypal/android/sdk/aD;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/aD;->a(Lcom/paypal/android/sdk/aF;)V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/bn;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->f:Lcom/paypal/android/sdk/bn;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/sdk/ay;->f:Lcom/paypal/android/sdk/bn;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/br;)V
    .locals 2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->m()V

    invoke-static {}, Lcom/paypal/android/sdk/Z;->a()Lcom/paypal/android/sdk/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/Z;->f()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/ay;->c:Lcom/paypal/android/sdk/az;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/az;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->e:Lcom/paypal/android/sdk/aD;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aD;->a()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/br;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->f:Lcom/paypal/android/sdk/bn;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/bn;->a(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->d:Lcom/paypal/android/sdk/ax;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ax;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/paypal/android/sdk/b;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ay;->b:Lcom/paypal/android/sdk/b;

    return-object v0
.end method

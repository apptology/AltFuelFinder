.class final Lcom/paypal/android/sdk/ab;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/Z;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/Z;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/ab;->a:Lcom/paypal/android/sdk/Z;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/ab;->a:Lcom/paypal/android/sdk/Z;

    invoke-static {v0}, Lcom/paypal/android/sdk/Z;->g(Lcom/paypal/android/sdk/Z;)I

    invoke-static {}, Lcom/paypal/android/sdk/Z;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "****** LoadConfigurationTask #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/ab;->a:Lcom/paypal/android/sdk/Z;

    invoke-static {v2}, Lcom/paypal/android/sdk/Z;->h(Lcom/paypal/android/sdk/Z;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/au;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/ai;

    iget-object v1, p0, Lcom/paypal/android/sdk/ab;->a:Lcom/paypal/android/sdk/Z;

    invoke-static {v1}, Lcom/paypal/android/sdk/Z;->i(Lcom/paypal/android/sdk/Z;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/ab;->a:Lcom/paypal/android/sdk/Z;

    invoke-static {v2}, Lcom/paypal/android/sdk/Z;->j(Lcom/paypal/android/sdk/Z;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/ab;->a:Lcom/paypal/android/sdk/Z;

    invoke-static {v3}, Lcom/paypal/android/sdk/Z;->k(Lcom/paypal/android/sdk/Z;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/sdk/ai;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {}, Lcom/paypal/android/sdk/al;->a()Lcom/paypal/android/sdk/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/al;->a(Lcom/paypal/android/sdk/ak;)V

    return-void
.end method

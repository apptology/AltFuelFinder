.class final Lcom/paypal/android/sdk/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/br;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/paypal/android/sdk/bh;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/bh;Lcom/paypal/android/sdk/br;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/bi;->c:Lcom/paypal/android/sdk/bh;

    iput-object p2, p0, Lcom/paypal/android/sdk/bi;->a:Lcom/paypal/android/sdk/br;

    iput-object p3, p0, Lcom/paypal/android/sdk/bi;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/bi;->c:Lcom/paypal/android/sdk/bh;

    iget-object v1, p0, Lcom/paypal/android/sdk/bi;->a:Lcom/paypal/android/sdk/br;

    iget-object v2, p0, Lcom/paypal/android/sdk/bi;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/bi;->c:Lcom/paypal/android/sdk/bh;

    invoke-static {v3}, Lcom/paypal/android/sdk/bh;->e(Lcom/paypal/android/sdk/bh;)Lcom/paypal/android/sdk/aN;

    move-result-object v3

    new-instance v4, Lcom/paypal/android/sdk/bm;

    iget-object v5, p0, Lcom/paypal/android/sdk/bi;->c:Lcom/paypal/android/sdk/bh;

    iget-object v6, p0, Lcom/paypal/android/sdk/bi;->a:Lcom/paypal/android/sdk/br;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/paypal/android/sdk/bm;-><init>(Lcom/paypal/android/sdk/bh;Lcom/paypal/android/sdk/br;B)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/bh;->a(Lcom/paypal/android/sdk/bh;Lcom/paypal/android/sdk/br;Ljava/lang/String;Lcom/paypal/android/sdk/aN;Lcom/paypal/android/sdk/aS;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

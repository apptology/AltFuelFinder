.class final Lcom/paypal/android/sdk/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/br;

.field private synthetic b:Lcom/paypal/android/sdk/bf;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/bf;Lcom/paypal/android/sdk/br;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/bg;->b:Lcom/paypal/android/sdk/bf;

    iput-object p2, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/paypal/android/sdk/bf;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mock executing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/br;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/br;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->b:Lcom/paypal/android/sdk/bf;

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bf;->c(Lcom/paypal/android/sdk/br;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->b:Lcom/paypal/android/sdk/bf;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/br;->i()Lcom/paypal/android/sdk/bp;

    move-result-object v1

    invoke-interface {v1}, Lcom/paypal/android/sdk/bp;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mock failure:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/br;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->b:Lcom/paypal/android/sdk/bf;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bf;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/br;I)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/br;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/paypal/android/sdk/bf;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sleep for ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->b:Lcom/paypal/android/sdk/bf;

    iget v1, v1, Lcom/paypal/android/sdk/bf;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->b:Lcom/paypal/android/sdk/bf;

    iget v0, v0, Lcom/paypal/android/sdk/bf;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/paypal/android/sdk/bf;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->b:Lcom/paypal/android/sdk/bf;

    iget v1, v1, Lcom/paypal/android/sdk/bf;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms] sleep"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->b:Lcom/paypal/android/sdk/bf;

    iget-object v0, v0, Lcom/paypal/android/sdk/bf;->a:Lcom/paypal/android/sdk/bs;

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/bs;->a(Lcom/paypal/android/sdk/br;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/br;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Blank mock value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/br;->i()Lcom/paypal/android/sdk/bp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/br;->i()Lcom/paypal/android/sdk/bp;

    move-result-object v1

    invoke-interface {v1}, Lcom/paypal/android/sdk/bp;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mock response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/br;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-static {v0}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/br;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/br;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/br;->i()Lcom/paypal/android/sdk/bp;

    move-result-object v0

    invoke-interface {v0}, Lcom/paypal/android/sdk/bp;->a()Ljava/lang/String;

    goto :goto_1
.end method

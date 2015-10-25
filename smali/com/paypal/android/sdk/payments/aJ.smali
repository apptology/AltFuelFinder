.class final Lcom/paypal/android/sdk/payments/aJ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/bQ;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalService;


# direct methods
.method private constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/aJ;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/bI;
    .locals 6

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v3, v2, v0

    new-instance v0, Lcom/paypal/android/sdk/bI;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/bI;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/ch;)V
    .locals 4

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->j:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ch;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ch;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ch;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bI;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/d;->a(Lcom/paypal/android/sdk/br;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bz;->a(Lcom/paypal/android/sdk/bI;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->e:Lcom/paypal/android/sdk/bB;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/bA;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/by;->e:Lcom/paypal/android/sdk/bB;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bA;->a(Lcom/paypal/android/sdk/bB;)V

    goto :goto_0
.end method

.method public final a(Lcom/paypal/android/sdk/cj;)V
    .locals 3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->v:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cj;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/cj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/ck;)V
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/cl;)V
    .locals 11

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->j:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/d;->a(Lcom/paypal/android/sdk/br;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->u()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->B()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->t()V

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/ay;

    move-result-object v10

    new-instance v0, Lcom/paypal/android/sdk/cx;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/ay;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v3

    iget-object v3, v3, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bI;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->x()I

    move-result v8

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->y()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/paypal/android/sdk/cx;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    goto :goto_1
.end method

.method public final a(Lcom/paypal/android/sdk/cm;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cm;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeleteCreditCardRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/co;)V
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/cp;)V
    .locals 2

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/cp;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/cq;)V
    .locals 5

    const-wide/16 v0, 0x348

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-wide v2, p1, Lcom/paypal/android/sdk/cq;->f:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    :goto_0
    iget-object v2, p1, Lcom/paypal/android/sdk/cq;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v2

    iget-object v3, p1, Lcom/paypal/android/sdk/cq;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/paypal/android/sdk/cq;->e:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lcom/paypal/android/sdk/payments/aJ;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/bI;

    move-result-object v0

    iput-object v0, v2, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    :goto_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->g:Lcom/paypal/android/sdk/bP;

    new-instance v0, Lcom/paypal/android/sdk/bB;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bB;-><init>()V

    iget-object v1, p1, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/bY;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bY;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/bY;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bY;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bB;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/sdk/bD;->a:Lcom/paypal/android/sdk/bD;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bB;->a(Lcom/paypal/android/sdk/bD;)V

    :goto_2
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v1

    iput-object v0, v1, Lcom/paypal/android/sdk/by;->e:Lcom/paypal/android/sdk/bB;

    iget-object v0, p1, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/bY;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bY;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/bY;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bY;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->l:Lcom/paypal/android/sdk/cD;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/cq;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cq;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;Ljava/lang/Boolean;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/cq;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/bK;

    iget-object v2, p1, Lcom/paypal/android/sdk/cq;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/paypal/android/sdk/cq;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/paypal/android/sdk/bK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->f:Lcom/paypal/android/sdk/bK;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/bY;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bY;->d()Lcom/paypal/android/sdk/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bB;->a(Lcom/paypal/android/sdk/ce;)V

    sget-object v1, Lcom/paypal/android/sdk/bD;->b:Lcom/paypal/android/sdk/bD;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bB;->a(Lcom/paypal/android/sdk/bD;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/bY;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bY;->d()Lcom/paypal/android/sdk/ce;

    move-result-object v1

    invoke-static {}, Lcom/paypal/android/sdk/bv;->a()Lcom/paypal/android/sdk/bv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cd;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->m:Lcom/paypal/android/sdk/cD;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/cq;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cq;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public final a(Lcom/paypal/android/sdk/cv;)V
    .locals 5

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->b:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cv;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/cv;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/cv;->b:Ljava/lang/String;

    iget-wide v3, p1, Lcom/paypal/android/sdk/cv;->c:J

    invoke-static {v1, v2, v3, v4}, Lcom/paypal/android/sdk/payments/aJ;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/bI;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-boolean v1, p1, Lcom/paypal/android/sdk/cv;->d:Z

    iput-boolean v1, v0, Lcom/paypal/android/sdk/by;->i:Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Z)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/aH;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/aH;

    move-result-object v0

    invoke-interface {v0}, Lcom/paypal/android/sdk/payments/aH;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/payments/aH;)Lcom/paypal/android/sdk/payments/aH;

    :cond_0
    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/cx;)V
    .locals 9

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/bF;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->f(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cx;->u()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/paypal/android/sdk/cx;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cx;->w()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cx;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cx;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cx;->y()I

    move-result v7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cx;->z()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/paypal/android/sdk/bF;-><init>(Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/bA;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/paypal/android/sdk/bA;->a(Lcom/paypal/android/sdk/bF;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/ch;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ch;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApproveAndExecuteSfoPaymentRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/cj;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cj;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConsentRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/aI;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/ck;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ck;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateSfoPaymentRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/aI;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/cl;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cl;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreditCardPaymentRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/co;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/co;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfoRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/aI;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/cp;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cp;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoginChallengeRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/aI;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/cq;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cq;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginRequest Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "paypal.sdk"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    iget-object v0, p1, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/bY;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/cq;->b:Z

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bY;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->l:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cq;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/bA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bA;->b()V

    iget-boolean v0, p1, Lcom/paypal/android/sdk/cq;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/cq;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/bP;

    iget-object v2, p1, Lcom/paypal/android/sdk/cq;->i:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/paypal/android/sdk/bP;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->g:Lcom/paypal/android/sdk/bP;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/aI;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->m:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cq;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/paypal/android/sdk/cv;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/cx;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cx;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TokenizeCreditCardRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aJ;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->a()V

    return-void
.end method

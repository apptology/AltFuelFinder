.class public final Lcom/paypal/android/sdk/cx;
.super Lcom/paypal/android/sdk/cu;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/bx;->j:Lcom/paypal/android/sdk/bx;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/cu;-><init>(Lcom/paypal/android/sdk/bx;Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/paypal/android/sdk/cx;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/paypal/android/sdk/cx;->b:Ljava/lang/String;

    if-nez p6, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cardNumber should not be null.  If it is, then you\'re probably trying to tokenize a card that\'s already been tokenized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p6, p0, Lcom/paypal/android/sdk/cx;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/paypal/android/sdk/cx;->d:Ljava/lang/String;

    iput p8, p0, Lcom/paypal/android/sdk/cx;->e:I

    iput p9, p0, Lcom/paypal/android/sdk/cx;->f:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "payer_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/cx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cvv2"

    iget-object v2, p0, Lcom/paypal/android/sdk/cx;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expire_month"

    iget v2, p0, Lcom/paypal/android/sdk/cx;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expire_year"

    iget v2, p0, Lcom/paypal/android/sdk/cx;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "number"

    iget-object v2, p0, Lcom/paypal/android/sdk/cx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p0, Lcom/paypal/android/sdk/cx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cx;->n()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/cx;->g:Ljava/lang/String;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/cx;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/paypal/android/sdk/cx;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/paypal/android/sdk/cx;->h:Ljava/lang/String;

    :cond_1
    const-string v1, "valid_until"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/cg;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/cx;->i:Ljava/util/Date;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cx;->d()V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cx;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/cx;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"id\":\"CARD-50Y58962PH1899901KFFBSDA\",\"valid_until\":\"2016-03-19T00:00:00.000Z\",\"state\":\"ok\",\"type\":\"visa\",\"number\":\"xxxxxxxxxxxx"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/cx;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/sdk/cx;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"expire_month\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/sdk/cx;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"expire_year\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/sdk/cx;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"links\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\"href\":\"https://api.sandbox.paypal.com/v1/vault/credit-card/CARD-50Y58962PH1899901KFFBSDA\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"rel\":\"self\",\"method\":\"GET\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cx;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cx;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cx;->i:Ljava/util/Date;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/cx;->e:I

    return v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/cx;->f:I

    return v0
.end method

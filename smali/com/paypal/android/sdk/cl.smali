.class public final Lcom/paypal/android/sdk/cl;
.super Lcom/paypal/android/sdk/ct;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/cs;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    sget-object v3, Lcom/paypal/android/sdk/bx;->g:Lcom/paypal/android/sdk/bx;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v2 .. v16}, Lcom/paypal/android/sdk/ct;-><init>(Lcom/paypal/android/sdk/bx;Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/cs;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/paypal/android/sdk/cl;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/cs;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    sget-object v3, Lcom/paypal/android/sdk/bx;->g:Lcom/paypal/android/sdk/bx;

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    invoke-direct/range {v2 .. v16}, Lcom/paypal/android/sdk/ct;-><init>(Lcom/paypal/android/sdk/bx;Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/cs;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/paypal/android/sdk/cl;->b:Ljava/lang/String;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/paypal/android/sdk/cl;->c:Ljava/lang/String;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/paypal/android/sdk/cl;->d:Ljava/lang/String;

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/paypal/android/sdk/cl;->e:I

    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/paypal/android/sdk/cl;->f:I

    return-void
.end method


# virtual methods
.method protected final A()Ljava/lang/String;
    .locals 1

    const-string v0, "credit_card"

    return-object v0
.end method

.method final a(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/cl;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "invoice_number"

    iget-object v1, p0, Lcom/paypal/android/sdk/cl;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/cl;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "custom"

    iget-object v1, p0, Lcom/paypal/android/sdk/cl;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/cl;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "soft_descriptor"

    iget-object v1, p0, Lcom/paypal/android/sdk/cl;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/String;)Lcom/paypal/android/sdk/cl;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/cl;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/paypal/android/sdk/cl;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/cl;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cl;->C()Lcom/paypal/android/sdk/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ca;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cl;->C()Lcom/paypal/android/sdk/ca;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ca;->b()Ljava/util/Currency;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/bT;->a(DLjava/util/Currency;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{\"id\":\"PAY-6RV70583SB702805EKEYSZ6Y\",\"intent\":\"sale\",\"create_time\": \"2014-02-12T22:29:49Z\",\"update_time\": \"2014-02-12T22:29:50Z\",\"payer\":{\"funding_instruments\":[{\"credit_card\":{\"expire_month\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/paypal/android/sdk/cl;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"expire_year\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/paypal/android/sdk/cl;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"number\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/paypal/android/sdk/cl;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/cl;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/cl;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"type\":\"VISA\"}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}],"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"payment_method\":\"credit_card\"},"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"state\":\"approved\",\"transactions\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"amount\":{\"currency\":\"USD\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"total\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"},\"description\":\"I am a sanity check payment.\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"item_list\":{},\"payee\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "{\"merchant_id\":\"PKKPTJKL75YDS\"},\"related_resources\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[{\"sale\":{\"amount\":{\"currency\":\"USD\",\"total\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"},\"id\":\"0EW02334X44816642\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"parent_payment\":\"PAY-123456789012345689\",\"state\":\"completed\"}}]}]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "xxxxxxxxxx1111"

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Lcom/paypal/android/sdk/cl;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/cl;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/cl;->e:I

    return v0
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/cl;->f:I

    return v0
.end method

.method protected final z()Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/paypal/android/sdk/cl;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cvv2"

    iget-object v3, p0, Lcom/paypal/android/sdk/cl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expire_month"

    iget v3, p0, Lcom/paypal/android/sdk/cl;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expire_year"

    iget v3, p0, Lcom/paypal/android/sdk/cl;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "number"

    iget-object v3, p0, Lcom/paypal/android/sdk/cl;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    iget-object v3, p0, Lcom/paypal/android/sdk/cl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "credit_card"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "payer_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/ct;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "credit_card_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/cl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "credit_card_token"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

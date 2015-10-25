.class public final Lcom/paypal/android/sdk/dB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/dg;


# static fields
.field private static a:Ljava/util/Map;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/dB;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->a:Lcom/paypal/android/sdk/df;

    const-string v2, "Cancelar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->b:Lcom/paypal/android/sdk/df;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->c:Lcom/paypal/android/sdk/df;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->d:Lcom/paypal/android/sdk/df;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->e:Lcom/paypal/android/sdk/df;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->f:Lcom/paypal/android/sdk/df;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->g:Lcom/paypal/android/sdk/df;

    const-string v2, "Conclu\u00eddo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->h:Lcom/paypal/android/sdk/df;

    const-string v2, "CVV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->i:Lcom/paypal/android/sdk/df;

    const-string v2, "CEP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->j:Lcom/paypal/android/sdk/df;

    const-string v2, "Vencimento"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->k:Lcom/paypal/android/sdk/df;

    const-string v2, "MM/AA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->l:Lcom/paypal/android/sdk/df;

    const-string v2, "Posicionar cart\u00e3o aqui.\nEle ser\u00e1 digitalizado automaticamente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->m:Lcom/paypal/android/sdk/df;

    const-string v2, "Teclado\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->n:Lcom/paypal/android/sdk/df;

    const-string v2, "N\u00famero do Cart\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->o:Lcom/paypal/android/sdk/df;

    const-string v2, "Dados do cart\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->p:Lcom/paypal/android/sdk/df;

    const-string v2, "Este dispositivo n\u00e3o pode usar a c\u00e2mera para ler n\u00fameros de cart\u00e3o."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->q:Lcom/paypal/android/sdk/df;

    const-string v2, "A c\u00e2mera do dispositivo n\u00e3o est\u00e1 dispon\u00edvel."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->r:Lcom/paypal/android/sdk/df;

    const-string v2, "O dispositivo sofreu um erro inesperado ao abrir a c\u00e2mera."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "pt_BR"

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    check-cast p1, Lcom/paypal/android/sdk/df;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/df;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/dB;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/dB;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/dB;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

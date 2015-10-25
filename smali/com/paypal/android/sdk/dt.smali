.class public final Lcom/paypal/android/sdk/dt;
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

    sput-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/dt;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->a:Lcom/paypal/android/sdk/df;

    const-string v2, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->b:Lcom/paypal/android/sdk/df;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->c:Lcom/paypal/android/sdk/df;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->d:Lcom/paypal/android/sdk/df;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->e:Lcom/paypal/android/sdk/df;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->f:Lcom/paypal/android/sdk/df;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->g:Lcom/paypal/android/sdk/df;

    const-string v2, "\u5b8c\u4e86"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->h:Lcom/paypal/android/sdk/df;

    const-string v2, "\u30ab\u30fc\u30c9\u78ba\u8a8d\u30b3\u30fc\u30c9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->i:Lcom/paypal/android/sdk/df;

    const-string v2, "\u90f5\u4fbf\u756a\u53f7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->j:Lcom/paypal/android/sdk/df;

    const-string v2, "\u6709\u52b9\u671f\u9650"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->k:Lcom/paypal/android/sdk/df;

    const-string v2, "MM/YY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->l:Lcom/paypal/android/sdk/df;

    const-string v2, "\u3053\u3053\u3067\u30ab\u30fc\u30c9\u3092\u304a\u6301\u3061\u304f\u3060\u3055\u3044\u3002\n\u81ea\u52d5\u7684\u306b\u30b9\u30ad\u30e3\u30f3\u3055\u308c\u307e\u3059\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->m:Lcom/paypal/android/sdk/df;

    const-string v2, "\u30ad\u30fc\u30dc\u30fc\u30c9\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->n:Lcom/paypal/android/sdk/df;

    const-string v2, "\u30ab\u30fc\u30c9\u756a\u53f7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->o:Lcom/paypal/android/sdk/df;

    const-string v2, "\u30ab\u30fc\u30c9\u306e\u8a73\u7d30"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->p:Lcom/paypal/android/sdk/df;

    const-string v2, "\u3053\u306e\u7aef\u672b\u3067\u306f\u30ab\u30fc\u30c9\u756a\u53f7\u306e\u8aad\u8fbc\u306b\u30ab\u30e1\u30e9\u3092\u4f7f\u3048\u307e\u305b\u3093\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->q:Lcom/paypal/android/sdk/df;

    const-string v2, "\u7aef\u672b\u306e\u30ab\u30e1\u30e9\u3092\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->r:Lcom/paypal/android/sdk/df;

    const-string v2, "\u30ab\u30e1\u30e9\u3092\u8d77\u52d5\u4e2d\u306b\u4e88\u671f\u3057\u306a\u3044\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ja"

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

    sget-object v1, Lcom/paypal/android/sdk/dt;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/dt;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/dt;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

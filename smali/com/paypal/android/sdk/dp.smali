.class public final Lcom/paypal/android/sdk/dp;
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

    sput-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/dp;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->a:Lcom/paypal/android/sdk/df;

    const-string v2, "Annuler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->b:Lcom/paypal/android/sdk/df;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->c:Lcom/paypal/android/sdk/df;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->d:Lcom/paypal/android/sdk/df;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->e:Lcom/paypal/android/sdk/df;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->f:Lcom/paypal/android/sdk/df;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->g:Lcom/paypal/android/sdk/df;

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->h:Lcom/paypal/android/sdk/df;

    const-string v2, "Crypto."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->i:Lcom/paypal/android/sdk/df;

    const-string v2, "Code postal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->j:Lcom/paypal/android/sdk/df;

    const-string v2, "Date d\u2019expiration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->k:Lcom/paypal/android/sdk/df;

    const-string v2, "MM/AA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->l:Lcom/paypal/android/sdk/df;

    const-string v2, "Maintenez la carte \u00e0 cet endroit.\nElle va \u00eatre automatiquement scann\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->m:Lcom/paypal/android/sdk/df;

    const-string v2, "Clavier\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->n:Lcom/paypal/android/sdk/df;

    const-string v2, "N\u00ba de carte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->o:Lcom/paypal/android/sdk/df;

    const-string v2, "Carte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->p:Lcom/paypal/android/sdk/df;

    const-string v2, "Cet appareil ne peut pas utiliser l\u2019appareil photo pour lire les num\u00e9ros de carte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->q:Lcom/paypal/android/sdk/df;

    const-string v2, "L\u2019appareil photo n\u2019est pas disponible."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/df;->r:Lcom/paypal/android/sdk/df;

    const-string v2, "Une erreur s\u2019est produite en ouvrant l\u2019appareil photo."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "fr"

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

    sget-object v1, Lcom/paypal/android/sdk/dp;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/dp;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

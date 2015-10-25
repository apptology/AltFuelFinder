.class public final Lcom/paypal/android/sdk/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/k;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->a:Lcom/paypal/android/sdk/cG;

    const-string v2, "Valider et payer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->b:Lcom/paypal/android/sdk/cG;

    const-string v2, "et autre(s)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->c:Lcom/paypal/android/sdk/cG;

    const-string v2, "Authentification"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->d:Lcom/paypal/android/sdk/cG;

    const-string v2, "Retour"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->e:Lcom/paypal/android/sdk/cG;

    const-string v2, "Secondaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->f:Lcom/paypal/android/sdk/cG;

    const-string v2, "Annuler"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->g:Lcom/paypal/android/sdk/cG;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->h:Lcom/paypal/android/sdk/cG;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->i:Lcom/paypal/android/sdk/cG;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->j:Lcom/paypal/android/sdk/cG;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->k:Lcom/paypal/android/sdk/cG;

    const-string v2, "Carte bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->l:Lcom/paypal/android/sdk/cG;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->m:Lcom/paypal/android/sdk/cG;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->n:Lcom/paypal/android/sdk/cG;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->o:Lcom/paypal/android/sdk/cG;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->p:Lcom/paypal/android/sdk/cG;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->q:Lcom/paypal/android/sdk/cG;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->r:Lcom/paypal/android/sdk/cG;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->s:Lcom/paypal/android/sdk/cG;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->t:Lcom/paypal/android/sdk/cG;

    const-string v2, "4\u00a0\u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->u:Lcom/paypal/android/sdk/cG;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->v:Lcom/paypal/android/sdk/cG;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->w:Lcom/paypal/android/sdk/cG;

    const-string v2, "Modifier le mode de paiement"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->x:Lcom/paypal/android/sdk/cG;

    const-string v2, "Courant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->y:Lcom/paypal/android/sdk/cG;

    const-string v2, "V\u00e9rification de l\u2019appareil\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->z:Lcom/paypal/android/sdk/cG;

    const-string v2, "Effacer les informations de carte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->A:Lcom/paypal/android/sdk/cG;

    const-string v2, "Confirmer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->B:Lcom/paypal/android/sdk/cG;

    const-string v2, "Souhaitez-vous vraiment effacer les informations relatives \u00e0 votre carte\u00a0?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->C:Lcom/paypal/android/sdk/cG;

    const-string v2, "D\u00e9biter la carte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->D:Lcom/paypal/android/sdk/cG;

    const-string v2, "Souhaitez-vous vraiment vous d\u00e9connecter de PayPal\u00a0?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->E:Lcom/paypal/android/sdk/cG;

    const-string v2, "Payer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->F:Lcom/paypal/android/sdk/cG;

    const-string v2, "Accepter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->G:Lcom/paypal/android/sdk/cG;

    const-string v2, "Date de cr\u00e9ation du compte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->H:Lcom/paypal/android/sdk/cG;

    const-string v2, "\u00c9tat du compte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->I:Lcom/paypal/android/sdk/cG;

    const-string v2, "Type de compte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->J:Lcom/paypal/android/sdk/cG;

    const-string v2, "Adresse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->K:Lcom/paypal/android/sdk/cG;

    const-string v2, "Tranche d\u2019\u00e2ge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->L:Lcom/paypal/android/sdk/cG;

    const-string v2, "Date de naissance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->M:Lcom/paypal/android/sdk/cG;

    const-string v2, "Adresse email"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->N:Lcom/paypal/android/sdk/cG;

    const-string v2, "Nom complet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->O:Lcom/paypal/android/sdk/cG;

    const-string v2, "Sexe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->P:Lcom/paypal/android/sdk/cG;

    const-string v2, "Langue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->Q:Lcom/paypal/android/sdk/cG;

    const-string v2, "Pays"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->R:Lcom/paypal/android/sdk/cG;

    const-string v2, "T\u00e9l\u00e9phone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->S:Lcom/paypal/android/sdk/cG;

    const-string v2, "Fuseau horaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->T:Lcom/paypal/android/sdk/cG;

    const-string v2, "Partager les informations suivantes\u00a0: %s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->U:Lcom/paypal/android/sdk/cG;

    const-string v2, "Utiliser le paiement simplifi\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->V:Lcom/paypal/android/sdk/cG;

    const-string v2, "%s vous demande de\u00a0:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->W:Lcom/paypal/android/sdk/cG;

    const-string v2, "Partager les <a href=\'%1$s\'>modes de paiement</a> li\u00e9s \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->X:Lcom/paypal/android/sdk/cG;

    const-string v2, "Activer l\u2019affichage de vos options d\u2019approvisionnement pour vous permettre de faire votre choix."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->Y:Lcom/paypal/android/sdk/cG;

    const-string v2, "<a href=\'%1$s\'>Autoriser les d\u00e9bits</a> pour les futurs achats chez %2$s pay\u00e9s avec PayPal. Vous donnez pour instruction \u00e0 PayPal de payer tous les montants demand\u00e9s par %3$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->Z:Lcom/paypal/android/sdk/cG;

    const-string v2, "L\u2019autoriser \u00e0 ajouter et \u00e0 g\u00e9rer sa carte de fid\u00e9lit\u00e9 dans votre portefeuille."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aa:Lcom/paypal/android/sdk/cG;

    const-string v2, "Accepter le <a href=\'%2$s\'>r\u00e8glement sur le respect de la vie priv\u00e9e</a> et les <a href=\'%3$s\'>conditions d\u2019utilisation</a> de %1$s ."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ab:Lcom/paypal/android/sdk/cG;

    const-string v2, "L\u2019autoriser \u00e0 <a href=\'%1$s\'>demander de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ac:Lcom/paypal/android/sdk/cG;

    const-string v2, "L\u2019autoriser \u00e0 <a href=\'%1$s\'>envoyer de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ad:Lcom/paypal/android/sdk/cG;

    const-string v2, "Accepter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ae:Lcom/paypal/android/sdk/cG;

    const-string v2, "Email"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->af:Lcom/paypal/android/sdk/cG;

    const-string v2, "Donn\u00e9es d\u2019exemple"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ag:Lcom/paypal/android/sdk/cG;

    const-string v2, "Environnement de test"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ah:Lcom/paypal/android/sdk/cG;

    const-string v2, "Date d\u2019expiration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ai:Lcom/paypal/android/sdk/cG;

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos modes de paiement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aj:Lcom/paypal/android/sdk/cG;

    const-string v2, "Mot de passe oubli\u00e9\u00a0?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ak:Lcom/paypal/android/sdk/cG;

    const-string v2, "De"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->al:Lcom/paypal/android/sdk/cG;

    const-string v2, "Comment souhaitez-vous approvisionner les futurs paiements \u00e0 %1$s\u00a0?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->am:Lcom/paypal/android/sdk/cG;

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Votre source d\u2019approvisionnement par d\u00e9faut sera utilis\u00e9e pour payer les futurs paiements PayPal chez ce marchand.</p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal et acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Mes param\u00e8tres</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p><p>L\u2019article Paiement r\u00e9current des <a href=\'%s\'>Conditions d\u2019utilisation de PayPal</a> s\u2019appliquera.</p><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9 \u00e0 l\u2019avenir, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->an:Lcom/paypal/android/sdk/cG;

    const-string v2, "Erreur interne"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ao:Lcom/paypal/android/sdk/cG;

    const-string v2, "<p>En cliquant sur le bouton ci-dessous, j\u2019accepte les <a href=\'%1$s\'>Conditions d\u2019utilisation de PayPal</a> et d\u00e9clare \u00eatre en conformit\u00e9 avec les lois et r\u00e9glementations japonaises, notamment les sanctions li\u00e9es aux paiements vers la Cor\u00e9e-du-Nord et l\u2019Iran conform\u00e9ment au <a href=\'%2$s\'>Foreign Exchange and Foreign Trade Act</a> pour effectuer cette transaction.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ap:Lcom/paypal/android/sdk/cG;

    const-string v2, "Connexion"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aq:Lcom/paypal/android/sdk/cG;

    const-string v2, "Connexion avec PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ar:Lcom/paypal/android/sdk/cG;

    const-string v2, "D\u00e9connexion"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->as:Lcom/paypal/android/sdk/cG;

    const-string v2, "D\u00e9connexion"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->at:Lcom/paypal/android/sdk/cG;

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->au:Lcom/paypal/android/sdk/cG;

    const-string v2, "Mot de passe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->av:Lcom/paypal/android/sdk/cG;

    const-string v2, "Paiement apr\u00e8s Livraison"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aw:Lcom/paypal/android/sdk/cG;

    const-string v2, "Payer par"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ax:Lcom/paypal/android/sdk/cG;

    const-string v2, "Payer par carte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ay:Lcom/paypal/android/sdk/cG;

    const-string v2, "Solde PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->az:Lcom/paypal/android/sdk/cG;

    const-string v2, "PayPal Credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aA:Lcom/paypal/android/sdk/cG;

    const-string v2, "T\u00e9l\u00e9phone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aB:Lcom/paypal/android/sdk/cG;

    const-string v2, "Code d\u2019acc\u00e8s"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aC:Lcom/paypal/android/sdk/cG;

    const-string v2, "Mode de paiement principal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aD:Lcom/paypal/android/sdk/cG;

    const-string v2, "PayPal garantit le <a href=\'%s\'>respect de votre vie priv\u00e9e</a> et prot\u00e8ge vos informations financi\u00e8res."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aE:Lcom/paypal/android/sdk/cG;

    const-string v2, "En cours de traitement"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aF:Lcom/paypal/android/sdk/cG;

    const-string v2, "M\u00e9moriser la carte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aG:Lcom/paypal/android/sdk/cG;

    const-string v2, "Demande d\u2019argent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aH:Lcom/paypal/android/sdk/cG;

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Connexion avec PayPal</strong> sous <strong>Pr\u00e9f\u00e9rences</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au partenaire.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aI:Lcom/paypal/android/sdk/cG;

    const-string v2, "\u00c9pargne"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aJ:Lcom/paypal/android/sdk/cG;

    const-string v2, "Envoi d\u2019argent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aK:Lcom/paypal/android/sdk/cG;

    const-string v2, "Un probl\u00e8me est survenu lors de la communication avec les serveurs PayPal. Merci de recommencer."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aL:Lcom/paypal/android/sdk/cG;

    const-string v2, "Merci de vous reconnecter \u00e0 PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aM:Lcom/paypal/android/sdk/cG;

    const-string v2, "La session a expir\u00e9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aN:Lcom/paypal/android/sdk/cG;

    const-string v2, "Adresse de livraison"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aO:Lcom/paypal/android/sdk/cG;

    const-string v2, "Nouveau sur PayPal\u00a0? Ouvrir un compte"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aP:Lcom/paypal/android/sdk/cG;

    const-string v2, "Rester connect\u00e9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aQ:Lcom/paypal/android/sdk/cG;

    const-string v2, "Erreur syst\u00e8me (%s). R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aR:Lcom/paypal/android/sdk/cG;

    const-string v2, "R\u00e9essayer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aS:Lcom/paypal/android/sdk/cG;

    const-string v2, "Nous ne pouvons pas vous connecter car votre compte fait l\u2019objet d\u2019une authentification \u00e0 deux facteurs."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aT:Lcom/paypal/android/sdk/cG;

    const-string v2, "Code de s\u00e9curit\u00e9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aU:Lcom/paypal/android/sdk/cG;

    const-string v2, "Envoyer un SMS \u00e0 votre t\u00e9l\u00e9phone. Le code \u00e0 six chiffres que vous recevez sera valide pendant cinq minutes."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aV:Lcom/paypal/android/sdk/cG;

    const-string v2, "Envoi du SMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aW:Lcom/paypal/android/sdk/cG;

    const-string v2, "Saisissez le code de s\u00e9curit\u00e9 \u00e0 six chiffres"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aX:Lcom/paypal/android/sdk/cG;

    const-string v2, "Votre num\u00e9ro de mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aY:Lcom/paypal/android/sdk/cG;

    const-string v2, "Envoyer un SMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aZ:Lcom/paypal/android/sdk/cG;

    const-string v2, "Envoyer de nouveau un SMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ba:Lcom/paypal/android/sdk/cG;

    const-string v2, "Nous ne pouvons pas vous connecter, car votre compte fait l\u2019objet d\u2019une authentification \u00e0 deux facteurs. Rendez-vous sur le site PayPal pour activer votre cl\u00e9 de s\u00e9curit\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bb:Lcom/paypal/android/sdk/cG;

    const-string v2, "Vous ne pouvez pas effectuer de paiements \u00e0 partir de cet appareil."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bc:Lcom/paypal/android/sdk/cG;

    const-string v2, "Appareil non autoris\u00e9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bd:Lcom/paypal/android/sdk/cG;

    const-string v2, "Les paiements \u00e0 ce marchand ne sont pas autoris\u00e9s (identifiant client incorrect)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->be:Lcom/paypal/android/sdk/cG;

    const-string v2, "Marchand incorrect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bf:Lcom/paypal/android/sdk/cG;

    const-string v2, "Un probl\u00e8me est survenu lors du traitement de votre paiement. R\u00e9essayez."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bg:Lcom/paypal/android/sdk/cG;

    const-string v2, "Source non reconnue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bh:Lcom/paypal/android/sdk/cG;

    const-string v2, "D\u00e9sol\u00e9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bi:Lcom/paypal/android/sdk/cG;

    const-string v2, "Votre commande"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bj:Lcom/paypal/android/sdk/cG;

    const-string v2, "Effacer la carte\u00a0?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bk:Lcom/paypal/android/sdk/cG;

    const-string v2, "\u00c9chec de l\u2019autorisation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bl:Lcom/paypal/android/sdk/cG;

    const-string v2, "\u00c9chec de la connexion"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bm:Lcom/paypal/android/sdk/cG;

    const-string v2, "\u00c9chec de la connexion"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bn:Lcom/paypal/android/sdk/cG;

    const-string v2, "Connexion par mot de passe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bo:Lcom/paypal/android/sdk/cG;

    const-string v2, "Connexion par code d\u2019acc\u00e8s"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bp:Lcom/paypal/android/sdk/cG;

    const-string v2, "Un instant\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bq:Lcom/paypal/android/sdk/cG;

    const-string v2, "\u00c9chec du paiement"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->br:Lcom/paypal/android/sdk/cG;

    const-string v2, "Scanner"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bs:Lcom/paypal/android/sdk/cG;

    const-string v2, "Cryptogramme visuel incorrect. R\u00e9essayez."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bt:Lcom/paypal/android/sdk/cG;

    const-string v2, "Via"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bu:Lcom/paypal/android/sdk/cG;

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "Partager des informations relatives aux <a href=\'%1$s\'>sources d\u2019approvisionnement</a> li\u00e9es \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "Partager les informations relatives aux <a href=\'%1$s\'>sources d\u2019approvisionnement</a> li\u00e9es \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "Partager des informations relatives aux <a href=\'%1$s\'>sources d\u2019approvisionnement</a> li\u00e9es \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "Partager des informations relatives aux <a href=\'%1$s\'>sources d\u2019approvisionnement</a> li\u00e9es \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "Partager des informations relatives aux <a href=\'%1$s\'>modes de paiement</a> li\u00e9s \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "Partager des informations relatives aux <a href=\'%1$s\'>sources d\u2019approvisionnement</a> li\u00e9es \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> li\u00e9es \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> li\u00e9es \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "Partager les informations relatives aux <a href=\'%1$s\'>sources d\u2019approvisionnement</a> li\u00e9es \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "Partager des informations relatives aux <a href=\'%1$s\'>modes de paiement</a> li\u00e9s \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "Partager les informations relatives aux <a href=\'%1$s\'>sources d\u2019approvisionnement</a> li\u00e9es \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "Partager des informations relatives aux <a href=\'%1$s\'>modes de paiement</a> li\u00e9s \u00e0 votre compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "Partager les <a href=\'%1$s\'>sources d\u2019approvisionnement</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p><a href=\'%1$s\'>Autoriser les d\u00e9bits</a> pour les futurs achats chez %2$s pay\u00e9s avec PayPal. Vous donnez pour instruction \u00e0 PayPal de payer tous les montants demand\u00e9s par %3$s.</p><p>Consultez l\u2019article <a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>Paiements r\u00e9currents et autorisation de facturation PayPal</a> pour en savoir plus.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p><a href=\'%1$s\'>Autoriser les d\u00e9bits</a> pour les futurs achats chez %2$s pay\u00e9s avec PayPal. Vous donnez pour instruction \u00e0 PayPal de payer tous les montants demand\u00e9s par %3$s.</p><p>Consultez l\u2019article <a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>Paiements r\u00e9currents et autorisation de facturation PayPal</a> pour en savoir plus.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "<a href=\'%1$s\'>Autoriser les d\u00e9bits</a> pour les futurs achats pay\u00e9s avec PayPal. Vous permettez et indiquez \u00e0 PayPal de payer tous les montants."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "<a href=\'%1$s\'>Autoriser les d\u00e9bits</a> pour les futurs achats pay\u00e9s avec PayPal. Vous permettez et indiquez \u00e0 PayPal de payer tous les montants."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "<a href=\'%1$s\'>Autoriser les d\u00e9bits</a> pour les futurs achats pay\u00e9s avec PayPal. Vous permettez et indiquez \u00e0 PayPal de payer tous les montants."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "Pr\u00e9approuver les futurs paiements effectu\u00e9s avec votre compte PayPal sans vous connecter \u00e0 chaque fois. <a href=\'%1$s\'>Voir les conditions particuli\u00e8res</a>, notamment les modes de paiement et comment annuler les futurs paiements."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>demander de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>demander de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>demander de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>demander de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>demander de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>demander de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>demander de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>envoyer de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>envoyer de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>envoyer de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>envoyer de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>envoyer de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>envoyer de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "Autoriser %2$s \u00e0 <a href=\'%1$s\'>envoyer de l\u2019argent</a> en votre nom jusqu\u2019\u00e0 nouvel ordre."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement les informations relatives \u00e0 vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement les informations relatives \u00e0 vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement les informations relatives \u00e0 vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>Modes de paiement</strong></h1><p>PayPal communique uniquement vos sources d\u2019approvisionnement disponibles.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p><p>Votre mode de paiement par d\u00e9faut (solde PayPal, compte bancaire li\u00e9 ou carte bancaire, dans cet ordre) sera utilis\u00e9 pour payer des achats PayPal. Si votre mode de paiement par d\u00e9faut n\u2019est pas suffisamment approvisionn\u00e9 pour couvrir l\u2019achat, votre banque ou l\u2019\u00e9metteur de votre carte peuvent vous d\u00e9biter des frais.</p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal et acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, puis cliquez sur <strong>Mes param\u00e8tres</strong> et <strong>Modifier</strong> \u00e0 c\u00f4t\u00e9 de Connexion avec PayPal.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p><p>Votre solde PayPal ou votre carte principale sera utilis\u00e9 pour payer des achats PayPal.</p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal et acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Mes param\u00e8tres</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p><p>Votre mode de paiement par d\u00e9faut sera utilis\u00e9 pour payer les achats PayPal.</p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal, acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Param\u00e8tres</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Votre source d\u2019approvisionnement par d\u00e9faut sera utilis\u00e9e pour payer les futurs paiements PayPal chez ce marchand.</p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal et acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Mes param\u00e8tres</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p><p>L\u2019article Paiements r\u00e9currents des <a href=\'%s\'>Conditions d\u2019utilisation de PayPal</a> s\u2019appliquera.</p><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9 \u00e0 l\u2019avenir, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p><p>Votre mode de paiement par d\u00e9faut sera utilis\u00e9 pour payer vos achats PayPal. </p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal, acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Param\u00e8tres du compte</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p><p>Consultez l\u2019article Paiements pr\u00e9approuv\u00e9s des <a href=\'%s\'>Conditions d\u2019utilisation de PayPal</a> pour en savoir plus.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p><p>Votre mode de paiement par d\u00e9faut sera utilis\u00e9 pour payer les achats PayPal.</p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal, acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Param\u00e8tres du compte</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p><p>Consultez l\u2019article Paiements pr\u00e9approuv\u00e9s des <a href=\'%s\'>Conditions d\u2019utilisation de PayPal</a> pour en savoir plus.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p><p>Votre solde PayPal ou votre carte principale sera utilis\u00e9 pour payer des achats PayPal.</p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal et acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Mes param\u00e8tres</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p><p>Votre mode de paiement par d\u00e9faut sera utilis\u00e9 pour payer vos achats PayPal. </p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal, acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Param\u00e8tres du compte</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p><p>Consultez l\u2019article Paiements pr\u00e9approuv\u00e9s des <a href=\'%s\'>Conditions d\u2019utilisation de PayPal</a> pour en savoir plus.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p><p>Votre mode de paiement par d\u00e9faut sera utilis\u00e9 pour payer vos achats PayPal. </p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal, acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Param\u00e8tres du compte</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p><p>Consultez l\u2019article Paiements pr\u00e9approuv\u00e9s des <a href=\'%s\'>Conditions d\u2019utilisation de PayPal</a> pour en savoir plus.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>Pour s\u2019assurer que votre compte PayPal pourra \u00eatre d\u00e9bit\u00e9, cette application peut simuler une petite transaction test sans transfert d\u2019argent.</p><p>Votre mode de paiement par d\u00e9faut sera utilis\u00e9 pour payer vos achats PayPal. </p><p>Pour annuler cette autorisation, connectez-vous \u00e0 votre compte PayPal, acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Param\u00e8tres du compte</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p><p>Consultez l\u2019article Paiements pr\u00e9approuv\u00e9s des <a href=\'%s\'>Conditions d\u2019utilisation de PayPal</a> pour en savoir plus.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>Autorisation pour les futurs paiements</strong></h1><p>PayPal utilisera d\u2019abord votre solde PayPal pour payer l\u2019achat. Si votre solde ne couvre pas le montant total, votre compte bancaire, PayPal Credit, votre carte ou le virement diff\u00e9r\u00e9 seront utilis\u00e9s dans cet ordre.</p><p>Pour annuler cette autorisation, acc\u00e9dez \u00e0 www.paypal.com, s\u00e9lectionnez <strong>Pr\u00e9f\u00e9rences</strong> &gt; <strong>Mes param\u00e8tres</strong> &gt; <strong>Connexion avec PayPal</strong> et supprimez ce marchand de la liste.</p><p>Une faible autorisation de paiement peut \u00eatre requise pour nous assurer que votre compte PayPal peut d\u00e9sormais \u00eatre d\u00e9bit\u00e9. Cette autorisation sera annul\u00e9e et vous ne serez pas d\u00e9bit\u00e9.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "Connexion avec PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "Connexion avec PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au partenaire.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal et cliquez sur l\u2019ic\u00f4ne engrenage. Acc\u00e9dez \u00e0 <strong>S\u00e9curit\u00e9</strong>, s\u00e9lectionnez <strong>Connexion avec PayPal</strong> et supprimez ce partenaire.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au partenaire.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Connexion avec PayPal</strong> sous <strong>Pr\u00e9f\u00e9rences</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au partenaire.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal, puis acc\u00e9dez aux options <strong>Connexion avec PayPal</strong> dans les <strong>Pr\u00e9f\u00e9rences</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au partenaire.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal et cliquez sur l\u2019ic\u00f4ne engrenage. Acc\u00e9dez \u00e0 <strong>S\u00e9curit\u00e9</strong>, s\u00e9lectionnez <strong>Connexion avec PayPal</strong> et supprimez ce partenaire.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au partenaire.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au partenaire.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal et cliquez sur l\u2019ic\u00f4ne engrenage. Acc\u00e9dez \u00e0 <strong>S\u00e9curit\u00e9</strong>, s\u00e9lectionnez <strong>Connexion avec PayPal</strong> et supprimez ce partenaire.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au partenaire.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal, puis acc\u00e9dez aux options <strong>Connexion avec PayPal</strong> sous <strong>Pr\u00e9f\u00e9rences</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal, cliquez sur l\u2019ic\u00f4ne engrenage en haut \u00e0 droite, s\u00e9lectionnez <strong>S\u00e9curit\u00e9</strong>, puis <strong>Connexion avec PayPal</strong> et supprimez le marchand. Si vous utilisez toujours le site classique, acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, s\u00e9lectionnez <strong>Mes param\u00e8tres</strong>, puis <strong>Connexion avec PayPal</strong> et supprimez le marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au partenaire.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal, puis acc\u00e9dez aux <strong>Pr\u00e9f\u00e9rences</strong>. Rendez-vous ensuite dans <strong>Connexion avec PayPal</strong> et supprimez ce partenaire.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au partenaire.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.it, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal, puis acc\u00e9dez aux options <strong>Connexion avec PayPal</strong> dans les <strong>Pr\u00e9f\u00e9rences</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal, puis acc\u00e9dez aux options <strong>Connexion avec PayPal</strong> sous <strong>Pr\u00e9f\u00e9rences</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal, puis acc\u00e9dez aux options <strong>Connexion avec PayPal</strong> dans les <strong>Pr\u00e9f\u00e9rences</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au partenaire.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.ru, puis cliquez sur l\u2019ic\u00f4ne engrenage en haut \u00e0 droite de l\u2019\u00e9cran, s\u00e9lectionnez l\u2019onglet <strong>S\u00e9curit\u00e9</strong> et supprimez ce partenaire dans les options <strong>Connexion avec PayPal</strong>.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au partenaire.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 votre compte PayPal, puis acc\u00e9dez aux options <strong>Connexion avec PayPal</strong> sous <strong>Pr\u00e9f\u00e9rences</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com.tr, puis cliquez sur l\u2019ic\u00f4ne engrenage en haut \u00e0 droite de l\u2019\u00e9cran, s\u00e9lectionnez l\u2019onglet <strong>S\u00e9curit\u00e9</strong> et supprimez ce partenaire dans les options <strong>Connexion avec PayPal</strong>.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Connexion avec PayPal</strong> sous <strong>Pr\u00e9f\u00e9rences</strong> et supprimez ce marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Toute information pertinente relative \u00e0 la transaction sera communiqu\u00e9e au marchand.</p><p>Pour annuler l\u2019autorisation, connectez-vous \u00e0 paypal.com, puis acc\u00e9dez \u00e0 <strong>Pr\u00e9f\u00e9rences</strong>, <strong>S\u00e9curit\u00e9</strong>, <strong>Connexion avec PayPal</strong> et supprimez ce marchand.</p><p>PayPal n\u2019est pas responsable des actions ou erreurs imputables au marchand.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "Le total des montants des objets du panier ne correspond pas au montant de la vente."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "Cette autorisation a d\u00e9j\u00e0 \u00e9t\u00e9 accord\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "L\u2019\u00e9tat de l\u2019autorisation ne permet pas son annulation."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "L\u2019autorisation a expir\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "L\u2019identifiant d\u2019autorisation demand\u00e9 n\u2019existe pas."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "L\u2019autorisation a \u00e9t\u00e9 annul\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "Seule l\u2019autorisation initiale peut \u00eatre accord\u00e9e de nouveau, pas une nouvelle autorisation."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "Une nouvelle autorisation ne peut pas \u00eatre accord\u00e9e pendant la p\u00e9riode de validit\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "Le montant d\u00e9passe la limite autoris\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "Impossible d\u2019acc\u00e9der aux informations de carte enregistr\u00e9es."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "Les informations relatives \u00e0 la carte sont incorrectes. Corrigez-les et renvoyez-les."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "La carte a \u00e9t\u00e9 rejet\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "La devise de la collecte doit \u00eatre la m\u00eame que celle de l\u2019autorisation."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "Cette devise n\u2019est pas prise en charge par PayPal actuellement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "La carte a expir\u00e9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "Les informations de cette carte ne sont plus enregistr\u00e9es.\nMerci de les renvoyer."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "Cette fonctionnalit\u00e9 n\u2019est pas prise en charge pour ce vendeur."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "Cette transaction a d\u00e9j\u00e0 \u00e9t\u00e9 partiellement rembours\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "Le paiement imm\u00e9diat n\u2019est pas pris en charge pour cet objectif."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "Le mode de paiement que vous avez s\u00e9lectionn\u00e9 n\u2019a pas \u00e9t\u00e9 accept\u00e9. S\u00e9lectionnez un autre mode de paiement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "L\u2019acheteur ne peut pas payer, provision insuffisante."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "Ce num\u00e9ro de compte n\u2019existe pas."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "Transaction refus\u00e9e en raison d\u2019un argument incorrect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "Combinaison ville/\u00e9tat/code postal incorrecte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "Cette transaction ne peut pas \u00eatre trait\u00e9e car la configuration du facilitateur est incorrecte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "Erreur syst\u00e8me (identifiant de payeur incorrect). R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "Le compte du vendeur n\u2019a pas d\u2019adresse email confirm\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Ce vendeur ne peut pas recevoir de paiements pour le moment."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "Le compte du vendeur n\u2019a pas d\u2019adresse email confirm\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "Ce vendeur ne peut pas recevoir de paiements pour le moment."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Votre compte est verrouill\u00e9 ou clos."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "Votre compte est restreint."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "Vous ne pouvez pas payer cette transaction avec PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "L\u2019adresse de facturation est requise pour les transactions par carte bancaire n\u2019impliquant pas un PayPal Credit."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "Impossible d\u2019acc\u00e9der aux informations de carte enregistr\u00e9es."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "L\u2019approbation du paiement a expir\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "Le paiement a expir\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "Le payeur n\u2019a pas approuv\u00e9 le paiement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "L\u2019identifiant de requ\u00eate PayPal est incorrecte. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "Cette demande n\u2019est pas valable, en raison de l\u2019\u00e9tat actuel du paiement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "Pas de droit d\u2019acc\u00e8s pour l\u2019op\u00e9ration demand\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "Le remboursement demand\u00e9 d\u00e9passe le montant de la transaction d\u2019origine."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "Cette transaction est trop ancienne pour \u00eatre rembours\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "Plus aucune nouvelle autorisation ne peut \u00eatre accord\u00e9e pour cette autorisation."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "Cette transaction a d\u00e9j\u00e0 \u00e9t\u00e9 rembours\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "Le montant d\u00e9passe la limite autoris\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "La transaction a \u00e9t\u00e9 refus\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "La transaction a \u00e9t\u00e9 refus\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "Les pr\u00e9f\u00e9rences du marchand sont r\u00e9gl\u00e9es pour rejeter automatiquement certaines transactions."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "Votre pays n\u2019est pas pris en charge."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "Les informations de paiement sont incorrectes. Corrigez-les et renvoyez-les."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "La commande a d\u00e9j\u00e0 \u00e9t\u00e9 annul\u00e9e, est termin\u00e9e ou a expir\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "Le nombre maximum d\u2019autorisations pour la commande a \u00e9t\u00e9 atteint."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "La commande a \u00e9t\u00e9 annul\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "La commande ne peut pas \u00eatre annul\u00e9e en raison de son \u00e9tat."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "Ce marchand n\u2019accepte pas les paiements de ce type."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "Devise non accept\u00e9e pour le type de carte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "Ce type de carte n\u2019est pas pris en charge."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "Erreur lors de l\u2019ajout de l\u2019adresse de livraison au compte PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "Transaction en double."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "L\u2019adresse de livraison fournie n\u2019est pas correcte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "Un probl\u00e8me est survenu lors de ce paiement. Rendez-vous sur le site PayPal et connectez-vous \u00e0 votre compte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "Un probl\u00e8me est survenu lors de ce paiement\u00a0: votre carte est arriv\u00e9e \u00e0 expiration. Rendez-vous sur le site PayPal et connectez-vous \u00e0 votre compte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "Un probl\u00e8me est survenu lors de ce paiement\u00a0: vous devez effectuer un paiement instantan\u00e9, par exemple avec une carte bancaire. Rendez-vous sur le site PayPal et connectez-vous \u00e0 votre compte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "Un probl\u00e8me est survenu lors de ce paiement\u00a0: vous devez confirmer la carte. Rendez-vous sur le site PayPal et connectez-vous \u00e0 votre compte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "Un probl\u00e8me est survenu lors de ce paiement\u00a0: cette application requiert l\u2019enregistrement d\u2019un num\u00e9ro de t\u00e9l\u00e9phone sur votre compte. Rendez-vous sur le site PayPal et connectez-vous \u00e0 votre compte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "Un probl\u00e8me est survenu lors de ce paiement\u00a0: vous devez enregistrer une source d\u2019approvisionnement valide sur votre compte, telle qu\u2019une carte ou un compte bancaire. Rendez-vous sur le site PayPal et connectez-vous \u00e0 votre compte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "Un probl\u00e8me est survenu lors de ce paiement\u00a0: votre solde est d\u00e9biteur. Rendez-vous sur le site PayPal et connectez-vous \u00e0 votre compte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "Un probl\u00e8me est survenu lors de ce paiement\u00a0: vous avez atteint votre limite de paiement. Rendez-vous sur le site PayPal et connectez-vous \u00e0 votre compte."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "Rejet\u00e9 en raison d\u2019un risque trop \u00e9lev\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "Client non autoris\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "Client non autoris\u00e9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "Nom d\u2019utilisateur/mot de passe incorrect. Merci de recommencer."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "Votre compte PayPal a \u00e9t\u00e9 temporairement verrouill\u00e9. R\u00e9essayez ult\u00e9rieurement ou rendez-vous sur www.paypal.com pour le d\u00e9verrouiller d\u00e8s maintenant."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "Nombre d\u2019\u00e9checs de connexion trop important. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "Une erreur s\u2019est produite."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "Demande non autoris\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "Demande non autoris\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "Une erreur s\u2019est produite."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "Demande non autoris\u00e9e."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "Erreur syst\u00e8me. R\u00e9essayez ult\u00e9rieurement."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "Impossible de vous connecter pour l\u2019instant. R\u00e9essayez ult\u00e9rieurement ou, le cas \u00e9ch\u00e9ant, acc\u00e9dez \u00e0 www.paypal.com pour r\u00e9gler les probl\u00e8mes de s\u00e9curit\u00e9 sur votre compte PayPal."

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

    check-cast p1, Lcom/paypal/android/sdk/cG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cG;->toString()Ljava/lang/String;

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

    sget-object v1, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/t;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/t;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/t;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

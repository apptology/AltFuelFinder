.class public final Lcom/paypal/android/sdk/payments/PayPalService;
.super Landroid/app/Service;


# static fields
.field public static final EXTRA_PAYPAL_CONFIGURATION:Ljava/lang/String; = "com.paypal.android.sdk.paypalConfiguration"

.field static final a:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/lang/String;

.field private static t:Landroid/content/Intent;


# instance fields
.field b:Lcom/paypal/android/sdk/bF;

.field private d:Lcom/paypal/android/sdk/c;

.field private e:Lcom/paypal/android/sdk/by;

.field private f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

.field private g:Z

.field private h:Lcom/paypal/android/sdk/payments/a;

.field private i:Lcom/paypal/android/sdk/payments/a;

.field private j:Lcom/paypal/android/sdk/payments/k;

.field private k:Ljava/lang/String;

.field private l:Lcom/paypal/android/sdk/ay;

.field private m:Lcom/paypal/android/sdk/payments/aH;

.field private n:Ljava/lang/String;

.field private o:Lcom/paypal/android/sdk/b;

.field private p:Lcom/paypal/android/sdk/bA;

.field private q:Ljava/util/List;

.field private r:Z

.field private s:Z

.field private final u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->c:Ljava/lang/String;

    invoke-static {}, Lcom/paypal/android/sdk/bd;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/a;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/a;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    new-instance v0, Lcom/paypal/android/sdk/payments/a;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/a;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    new-instance v0, Lcom/paypal/android/sdk/payments/d;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/d;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->j:Lcom/paypal/android/sdk/payments/k;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->s:Z

    new-instance v0, Lcom/paypal/android/sdk/payments/aD;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/aD;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/paypal/android/sdk/payments/aG;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/aG;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->v:Landroid/os/IBinder;

    return-void
.end method

.method private A()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static B()Lcom/paypal/android/sdk/by;
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/by;

    invoke-direct {v0}, Lcom/paypal/android/sdk/by;-><init>()V

    return-object v0
.end method

.method private C()V
    .locals 2

    new-instance v0, Lcom/paypal/android/sdk/payments/aE;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/aE;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/aH;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/paypal/android/sdk/ax;
    .locals 6

    new-instance v1, Lcom/paypal/android/sdk/ax;

    invoke-direct {v1}, Lcom/paypal/android/sdk/ax;-><init>()V

    invoke-virtual {v1, p0}, Lcom/paypal/android/sdk/ax;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/ax;->a(Ljava/util/Map;)V

    if-eqz p1, :cond_2

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not start with \'https://\', ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not end with a slash, adding one."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {}, Lcom/paypal/android/sdk/bw;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/bp;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ax;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/paypal/android/sdk/bp;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/paypal/android/sdk/bp;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    return-object v0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/payments/aH;)Lcom/paypal/android/sdk/payments/aH;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/aH;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 10

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    const/4 v4, 0x1

    sput-object p1, Lcom/paypal/android/sdk/payments/PayPalService;->t:Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "init:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-nez v0, :cond_0

    const-string v0, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing EXTRA_PAYPAL_CONFIGURATION. To avoid this error, set EXTRA_PAYPAL_CONFIGURATION in both PayPalService, and the initializing activity."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service extras invalid.  Please check the docs."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/sdk/aw;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "https://api-m.paypal.com/v1/"

    :goto_0
    new-instance v5, Lcom/paypal/android/sdk/bA;

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v7}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/paypal/android/sdk/bA;-><init>(Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/bA;

    invoke-static {v3, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/paypal/android/sdk/ax;

    move-result-object v5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.paypal.android.sdk.mockNetworkDelay"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.paypal.android.sdk.mockNetworkDelay"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "com.paypal.android.sdk.mockEnable2fa"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "com.paypal.android.sdk.mockEnable2fa"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :goto_2
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "com.paypal.android.sdk.mock2faPhoneNumberCount"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "com.paypal.android.sdk.mock2faPhoneNumberCount"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :goto_3
    iput-boolean v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "com.paypal.android.sdk.enableAuthenticator"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "com.paypal.android.sdk.enableAuthenticator"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    :cond_2
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.paypal.android.sdk.enableAuthenticatorSecurity"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.paypal.android.sdk.enableAuthenticatorSecurity"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->s:Z

    :cond_3
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "com.paypal.android.sdk.enableStageSsl"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "com.paypal.android.sdk.enableStageSsl"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move v8, v4

    :goto_4
    new-instance v4, Lcom/paypal/android/sdk/ay;

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Lcom/paypal/android/sdk/ay;-><init>(Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/ax;Lcom/paypal/android/sdk/c;)V

    iput-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    new-instance v5, Lcom/paypal/android/sdk/bR;

    new-instance v6, Lcom/paypal/android/sdk/payments/aJ;

    invoke-direct {v6, p0, v2}, Lcom/paypal/android/sdk/payments/aJ;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;B)V

    invoke-direct {v5, v6}, Lcom/paypal/android/sdk/bR;-><init>(Lcom/paypal/android/sdk/bQ;)V

    invoke-virtual {v4, v5}, Lcom/paypal/android/sdk/ay;->a(Lcom/paypal/android/sdk/aF;)V

    new-instance v9, Lcom/paypal/android/sdk/cy;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-direct {v9, v2, v0, v1, v3}, Lcom/paypal/android/sdk/cy;-><init>(Lcom/paypal/android/sdk/bs;IZI)V

    new-instance v0, Lcom/paypal/android/sdk/bh;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    const v5, 0x15f90

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v6

    invoke-interface {v6}, Lcom/paypal/android/sdk/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v7

    invoke-static {v7}, Lcom/paypal/android/sdk/aC;->a(Lcom/paypal/android/sdk/c;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Lcom/paypal/android/sdk/bh;-><init>(Lcom/paypal/android/sdk/b;Ljava/lang/String;Lcom/paypal/android/sdk/c;Lcom/paypal/android/sdk/bs;ILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/paypal/android/sdk/bn;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-direct {v1, v2, v3, v9, v0}, Lcom/paypal/android/sdk/bn;-><init>(Ljava/lang/String;Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/bf;Lcom/paypal/android/sdk/bh;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/ay;->a(Lcom/paypal/android/sdk/bn;)V

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/cE;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->B()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/b;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->clearAllUserData(Landroid/content/Context;)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->k:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/sdk/cD;->a:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->C()V

    return-void

    :cond_7
    invoke-static {v3}, Lcom/paypal/android/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "https://api-m.sandbox.paypal.com/v1/"

    goto/16 :goto_0

    :cond_8
    invoke-static {v3}, Lcom/paypal/android/sdk/aw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.paypal.android.sdk.baseEnvironmentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.paypal.android.sdk.baseEnvironmentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid environment selected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v1

    goto/16 :goto_1

    :cond_c
    move v1, v2

    goto/16 :goto_2

    :cond_d
    move v3, v4

    goto/16 :goto_3

    :cond_e
    move v8, v4

    goto/16 :goto_4
.end method

.method private a(Lcom/paypal/android/sdk/br;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method private a(Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->j:Lcom/paypal/android/sdk/payments/k;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/k;->a(Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iput-object v3, v0, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " request error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/paypal/android/sdk/cD;->b:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/cD;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/aH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/aH;

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/payments/aH;->a(Lcom/paypal/android/sdk/payments/aI;)V

    iput-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/aH;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/paypal/android/sdk/bI;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/bI;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    return v0
.end method

.method private a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/cs;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p1

    new-array v6, v1, [Lcom/paypal/android/sdk/cs;

    array-length v10, p1

    move v7, v0

    move v8, v0

    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v5, p1, v7

    add-int/lit8 v9, v8, 0x1

    new-instance v0, Lcom/paypal/android/sdk/cs;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getPrice()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/cs;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v6, v8

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v9

    goto :goto_1

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/aH;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/aH;

    return-object v0
.end method

.method private b(Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;
    .locals 4

    new-instance v0, Lcom/paypal/android/sdk/payments/aI;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->s()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/sdk/aG;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/aI;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "Intent = null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "action:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", cmp:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "null extras"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "extras:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private b(Lcom/paypal/android/sdk/cD;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/br;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->q()Lcom/paypal/android/sdk/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/aG;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/paypal/android/sdk/cD;->h:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/br;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/cD;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/br;)Lcom/paypal/android/sdk/payments/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/aI;)V

    return-void
.end method

.method public static clearAllUserData(Landroid/content/Context;)V
    .locals 2

    const-string v0, "paypal.sdk"

    const-string v1, "clearing user data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/paypal/android/sdk/payments/aB;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/aB;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/bA;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/bA;

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    return-object v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/b;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    return-object v0
.end method

.method static synthetic y()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static z()Z
    .locals 2

    const-string v0, "partner"

    const-string v1, "general"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/paypal/android/sdk/c;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->d:Lcom/paypal/android/sdk/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/payments/l;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/l;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->d:Lcom/paypal/android/sdk/c;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->d:Lcom/paypal/android/sdk/c;

    return-object v0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(I)V
    .locals 9

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    new-instance v0, Lcom/paypal/android/sdk/cp;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ay;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v5, v5, Lcom/paypal/android/sdk/by;->j:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v8, v8, Lcom/paypal/android/sdk/by;->g:Lcom/paypal/android/sdk/bP;

    iget-object v8, v8, Lcom/paypal/android/sdk/bP;->a:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/paypal/android/sdk/cp;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/bY;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 13

    iget-object v12, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    new-instance v0, Lcom/paypal/android/sdk/cq;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ay;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v7, v5, Lcom/paypal/android/sdk/by;->j:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/paypal/android/sdk/cq;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/bY;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/bY;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 11

    iget-object v10, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    new-instance v0, Lcom/paypal/android/sdk/cq;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ay;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/paypal/android/sdk/cq;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/bY;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/cD;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/cD;Ljava/lang/Boolean;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/cD;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/cD;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/cD;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    move-object/from16 v17, v0

    new-instance v2, Lcom/paypal/android/sdk/ck;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v5, v5, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/bI;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    invoke-virtual {v6}, Lcom/paypal/android/sdk/by;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/cs;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    invoke-direct/range {v2 .. v16}, Lcom/paypal/android/sdk/ck;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/cs;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/ck;->d(Ljava/lang/String;)Lcom/paypal/android/sdk/ck;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/ck;->e(Ljava/lang/String;)Lcom/paypal/android/sdk/ck;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/ck;->f(Ljava/lang/String;)Lcom/paypal/android/sdk/ck;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/payments/aF;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/aF;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/payments/aH;Z)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/aH;

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/by;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    sget-object v0, Lcom/paypal/android/sdk/cD;->b:Lcom/paypal/android/sdk/cD;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    new-instance v1, Lcom/paypal/android/sdk/cv;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/paypal/android/sdk/cv;-><init>(Ljava/lang/String;Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    move-object/from16 v17, v0

    new-instance v2, Lcom/paypal/android/sdk/cl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v5, v5, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/bI;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/cs;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p9

    move-object/from16 v16, p10

    invoke-direct/range {v2 .. v16}, Lcom/paypal/android/sdk/cl;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/cs;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/cl;->d(Ljava/lang/String;)Lcom/paypal/android/sdk/cl;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/cl;->e(Ljava/lang/String;)Lcom/paypal/android/sdk/cl;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/cl;->f(Ljava/lang/String;)Lcom/paypal/android/sdk/cl;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    const-string v2, "4111111111111111"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/aw;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p3, "4444333322221111"

    move-object/from16 v8, p3

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    move-object/from16 v21, v0

    new-instance v2, Lcom/paypal/android/sdk/cl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v5, v5, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/bI;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/cs;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v20, p13

    invoke-direct/range {v2 .. v20}, Lcom/paypal/android/sdk/cl;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/cs;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/cl;->d(Ljava/lang/String;)Lcom/paypal/android/sdk/cl;

    move-result-object v2

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/cl;->e(Ljava/lang/String;)Lcom/paypal/android/sdk/cl;

    move-result-object v2

    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/cl;->f(Ljava/lang/String;)Lcom/paypal/android/sdk/cl;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void

    :cond_0
    move-object/from16 v8, p3

    goto :goto_0
.end method

.method final a(Ljava/util/List;)V
    .locals 9

    iget-object v8, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    new-instance v0, Lcom/paypal/android/sdk/cj;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ay;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v5, v5, Lcom/paypal/android/sdk/by;->f:Lcom/paypal/android/sdk/bK;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/bK;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v6, v6, Lcom/paypal/android/sdk/by;->j:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/paypal/android/sdk/cj;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method final a(ZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13

    iget-object v12, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    new-instance v0, Lcom/paypal/android/sdk/ch;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v3, v3, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bI;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/by;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move v5, p1

    move-object/from16 v6, p6

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/paypal/android/sdk/ch;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v12, v0}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method protected final a(Lcom/paypal/android/sdk/payments/aK;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Lcom/paypal/android/sdk/ay;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    return-object v0
.end method

.method final b(Lcom/paypal/android/sdk/payments/aF;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/aF;)V

    return-void
.end method

.method protected final c()Lcom/paypal/android/sdk/by;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    return-object v0
.end method

.method final d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    return-object v0
.end method

.method public final doDeleteTokenizedCreditCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/paypal/android/sdk/cm;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/paypal/android/sdk/cm;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method public final doTrackingRequest(Lcom/paypal/android/sdk/aB;)V
    .locals 4

    iget-boolean v0, p1, Lcom/paypal/android/sdk/aB;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/cw;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/paypal/android/sdk/cw;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Lcom/paypal/android/sdk/aB;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/br;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/paypal/android/sdk/cn;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    invoke-static {p1}, Lcom/paypal/android/sdk/cC;->a(Lcom/paypal/android/sdk/aB;)Lcom/paypal/android/sdk/aB;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/sdk/cn;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Lcom/paypal/android/sdk/aB;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/br;)V

    goto :goto_0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->t()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/bA;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bA;->b()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->u()V

    return-void
.end method

.method final h()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/bz;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->e:Lcom/paypal/android/sdk/bB;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->d:Ljava/lang/String;

    return-void
.end method

.method final i()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/by;->c()Z

    move-result v0

    return v0
.end method

.method final j()Z
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v1, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bI;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->f:Lcom/paypal/android/sdk/bK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/bA;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bA;->a()Lcom/paypal/android/sdk/bB;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v1, v1, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/bz;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/bI;

    move-result-object v2

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/bI;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/bI;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iput-object v2, v1, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bB;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bB;->c()Lcom/paypal/android/sdk/bD;

    move-result-object v2

    sget-object v3, Lcom/paypal/android/sdk/bD;->a:Lcom/paypal/android/sdk/bD;

    invoke-virtual {v2, v3}, Lcom/paypal/android/sdk/bD;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bB;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Lcom/paypal/android/sdk/by;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/paypal/android/sdk/bB;->a()Lcom/paypal/android/sdk/ce;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/bv;->a()Lcom/paypal/android/sdk/bv;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/ce;->a(Lcom/paypal/android/sdk/cd;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final m()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->b()V

    return-void
.end method

.method final n()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->b()V

    return-void
.end method

.method final o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/aH;

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBind("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->A()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->t:Landroid/content/Intent;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->v:Landroid/os/IBinder;

    return-object v0

    :cond_1
    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->t:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 3

    const-string v0, "paypal.sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/paypal/android/sdk/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/paypal/android/sdk/b;

    new-instance v1, Lcom/paypal/android/sdk/payments/l;

    invoke-direct {v1}, Lcom/paypal/android/sdk/payments/l;-><init>()V

    const-string v1, "AndroidBasePrefs"

    invoke-direct {v0, p0, v1}, Lcom/paypal/android/sdk/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    invoke-static {v0}, Lcom/paypal/android/sdk/bS;->a(Lcom/paypal/android/sdk/b;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    invoke-static {v0}, Lcom/paypal/android/sdk/bV;->a(Lcom/paypal/android/sdk/b;)V

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/b;

    const-string v2, "2.9.11"

    invoke-static {v0, p0, v1, v2}, Lcom/paypal/android/sdk/e;->a(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/paypal/android/sdk/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.paypal.android.sdk.clearAllUserData"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/D;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/payments/D;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/sdk/payments/D;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ay;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ay;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/paypal/android/sdk/payments/D;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/payments/D;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/D;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service destroyed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignoring:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRebind("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartCommand("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->A()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/paypal/android/sdk/dc;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/dc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dc;->a()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service extras required. Please see the docs."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/aK;

    invoke-interface {v0}, Lcom/paypal/android/sdk/payments/aK;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnbind("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method final p()V
    .locals 7

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    new-instance v0, Lcom/paypal/android/sdk/co;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/c;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ay;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v4, v4, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/bI;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/co;-><init>(Lcom/paypal/android/sdk/bs;Lcom/paypal/android/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/paypal/android/sdk/ay;->b(Lcom/paypal/android/sdk/br;)V

    return-void
.end method

.method final q()Lcom/paypal/android/sdk/bB;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/bA;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bA;->a()Lcom/paypal/android/sdk/bB;

    move-result-object v0

    return-object v0
.end method

.method final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->d:Ljava/lang/String;

    return-object v0
.end method

.method final s()Lcom/paypal/android/sdk/bF;
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/bA;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bA;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/bF;

    move-result-object v0

    return-object v0
.end method

.method final t()V
    .locals 2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/bF;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/bF;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/bA;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bA;->c()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/bF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bI;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/bF;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bF;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->doDeleteTokenizedCreditCard(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/bF;

    :cond_0
    return-void
.end method

.method final u()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->B()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/by;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->C()V

    :cond_0
    return-void
.end method

.method protected final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->k:Ljava/lang/String;

    return-object v0
.end method

.method final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    return v0
.end method

.method final x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->s:Z

    return v0
.end method

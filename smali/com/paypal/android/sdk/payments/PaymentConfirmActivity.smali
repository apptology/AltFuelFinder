.class public final Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/paypal/android/sdk/payments/bj;

.field private c:Lcom/paypal/android/sdk/payments/bA;

.field private d:Z

.field private e:Z

.field private f:Lcom/paypal/android/sdk/cO;

.field private g:Lcom/paypal/android/sdk/payments/aS;

.field private h:Lcom/paypal/android/sdk/payments/bk;

.field private i:Lio/card/payment/CreditCard;

.field private j:Lcom/paypal/android/sdk/payments/PayPalService;

.field private final k:Landroid/content/ServiceConnection;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/aZ;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/aZ;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Landroid/content/ServiceConnection;

    return-void
.end method

.method private static a(Lcom/paypal/android/sdk/payments/PayPalPayment;)Lcom/paypal/android/sdk/ca;
    .locals 3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/bT;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/ca;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/paypal/android/sdk/ca;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/bk;Lio/card/payment/CreditCard;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/bk;Lio/card/payment/CreditCard;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V

    return-void
.end method

.method static a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/bk;Lio/card/payment/CreditCard;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_KIND"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_CREDIT_CARD"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_RESET_PP_REQUEST_ID"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v5, 0x0

    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "scope"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "valid_until"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, "%s:null"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v9, "%s:%s (%s)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v5

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v0, 0x2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v0

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/paypal/android/sdk/bI;

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/bI;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    if-nez v1, :cond_2

    new-instance v1, Lcom/paypal/android/sdk/payments/bj;

    invoke-direct {v1, p0, v6, v0}, Lcom/paypal/android/sdk/payments/bj;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Ljava/lang/String;Lcom/paypal/android/sdk/bI;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/bj;

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v6, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;Lcom/paypal/android/sdk/bI;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/ck;)V
    .locals 3

    new-instance v0, Lcom/paypal/android/sdk/payments/bA;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/aS;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPayment;->getProvidedShippingAddress()Lcom/paypal/android/sdk/payments/ShippingAddress;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/paypal/android/sdk/payments/bA;-><init>(Lcom/paypal/android/sdk/ck;Lcom/paypal/android/sdk/payments/ShippingAddress;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_INFO"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Ljava/util/List;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/aS;->b()Lcom/paypal/android/sdk/payments/bA;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/paypal/android/sdk/payments/bA;->a(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cJ;

    invoke-virtual {v1, p0, v0}, Lcom/paypal/android/sdk/cO;->a(Landroid/content/Context;Lcom/paypal/android/sdk/cJ;)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/cO;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/paypal/android/sdk/bI;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iput-object p1, v0, Lcom/paypal/android/sdk/by;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iput-object p2, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    sget-object v1, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/bk;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/cO;->b(Z)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".doLogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/n;->a(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalService;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/R;->b:Lcom/paypal/android/sdk/R;

    :goto_0
    new-instance v1, Lcom/paypal/android/sdk/Q;

    invoke-direct {v1}, Lcom/paypal/android/sdk/Q;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/paypal/android/sdk/S;->a:Lcom/paypal/android/sdk/S;

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/ay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/sdk/ay;->d()Lcom/paypal/android/sdk/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/sdk/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/paypal/android/sdk/Q;->a(Ljava/lang/String;Lcom/paypal/android/sdk/R;Lcom/paypal/android/sdk/S;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startActivityForResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requesting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "response_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with scope={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scope"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "} from Authenticator."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/R;->a:Lcom/paypal/android/sdk/R;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->q()Lcom/paypal/android/sdk/bB;

    move-result-object v2

    const/4 v3, 0x0

    const-string v5, "https://uri.paypal.com/services/payments/basic"

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v6

    move-object v0, p0

    move v4, p1

    invoke-static/range {v0 .. v6}, Lcom/paypal/android/sdk/payments/LoginActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/bB;ZZLjava/lang/String;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    goto :goto_1
.end method

.method private static b(Lcom/paypal/android/sdk/payments/PayPalPayment;)Ljava/util/Map;
    .locals 6

    if-eqz p0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->f()Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "shipping"

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/paypal/android/sdk/bT;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->a()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "subtotal"

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->a()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/paypal/android/sdk/bT;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "tax"

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/paypal/android/sdk/bT;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bA;->b()Lcom/paypal/android/sdk/payments/ShippingAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bA;->b()Lcom/paypal/android/sdk/payments/ShippingAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ShippingAddress;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bA;->h()I

    move-result v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/bA;->a()Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/bA;->i()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/paypal/android/sdk/cV;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cV;

    invoke-virtual {v3, v4, v0}, Lcom/paypal/android/sdk/cO;->a(Landroid/content/Context;Lcom/paypal/android/sdk/cV;)V

    new-instance v0, Lcom/paypal/android/sdk/cW;

    invoke-direct {v0, p0, v2, v1}, Lcom/paypal/android/sdk/cW;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    new-instance v3, Lcom/paypal/android/sdk/payments/bd;

    invoke-direct {v3, p0, v0, v2}, Lcom/paypal/android/sdk/payments/bd;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/cW;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/paypal/android/sdk/cO;->d(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bA;->g()I

    move-result v1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bA;->c()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/bA;->d()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/cJ;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cJ;

    invoke-virtual {v3, v4, v0}, Lcom/paypal/android/sdk/cO;->a(Landroid/content/Context;Lcom/paypal/android/sdk/cJ;)V

    new-instance v0, Lcom/paypal/android/sdk/cK;

    invoke-direct {v0, p0, v2, v1}, Lcom/paypal/android/sdk/cK;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    new-instance v3, Lcom/paypal/android/sdk/payments/bb;

    invoke-direct {v3, p0, v0, v2}, Lcom/paypal/android/sdk/payments/bb;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/cK;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/paypal/android/sdk/cO;->c(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0, v6}, Lcom/paypal/android/sdk/cO;->b(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".postBindSetup()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    sget-object v1, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/bk;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/bk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->b(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/cO;->a(Landroid/text/SpannableString;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/bj;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bj;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/bj;

    iget-object v1, v1, Lcom/paypal/android/sdk/payments/bj;->b:Lcom/paypal/android/sdk/bI;

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;Lcom/paypal/android/sdk/bI;)V

    iput-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/bj;

    :cond_0
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_RESET_PP_REQUEST_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/by;->a()V

    :cond_1
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e()Z

    move-result v0

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v2, Lcom/paypal/android/sdk/cD;->g:Lcom/paypal/android/sdk/cD;

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;)V

    :cond_2
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f()V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v2, Lcom/paypal/android/sdk/payments/bf;

    invoke-direct {v2, p0}, Lcom/paypal/android/sdk/payments/bf;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/aF;)V

    sget-object v1, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/bk;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/cO;->a(Landroid/text/SpannableString;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Ljava/util/List;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/aS;->b()Lcom/paypal/android/sdk/payments/bA;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/paypal/android/sdk/payments/bA;->b(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cV;

    invoke-virtual {v1, p0, v0}, Lcom/paypal/android/sdk/cO;->a(Landroid/content/Context;Lcom/paypal/android/sdk/cV;)V

    return-void
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bI;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iput-object v1, v0, Lcom/paypal/android/sdk/by;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/aS;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->l:Z

    return-void
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c()V

    return-void
.end method

.method private e()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    sget-object v3, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/bk;

    invoke-virtual {v2, v3}, Lcom/paypal/android/sdk/payments/bk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->j()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    invoke-direct {p0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Z)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/aS;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v6

    invoke-static {}, Lcom/paypal/android/sdk/bv;->a()Lcom/paypal/android/sdk/bv;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bv;->c()Lcom/paypal/android/sdk/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/bT;->a(Ljava/util/Locale;Ljava/lang/String;DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/PayPalPayment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/sdk/cO;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    sget-object v1, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/bk;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0, v5}, Lcom/paypal/android/sdk/cO;->a(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->d()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    sget-object v1, Lcom/paypal/android/sdk/payments/bk;->b:Lcom/paypal/android/sdk/payments/bk;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    sget-object v1, Lcom/paypal/android/sdk/payments/bk;->c:Lcom/paypal/android/sdk/payments/bk;

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0, v8}, Lcom/paypal/android/sdk/cO;->a(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    sget-object v1, Lcom/paypal/android/sdk/payments/bk;->b:Lcom/paypal/android/sdk/payments/bk;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    invoke-virtual {v0}, Lio/card/payment/CreditCard;->getRedactedCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/bF;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    iget v1, v0, Lio/card/payment/CreditCard;->expiryMonth:I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    iget v2, v0, Lio/card/payment/CreditCard;->expiryYear:I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    invoke-virtual {v0}, Lio/card/payment/CreditCard;->getCardType()Lio/card/payment/CardType;

    move-result-object v0

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v6, "%02d / %04d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/d;->a(Landroid/app/Activity;Lio/card/payment/CardType;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/paypal/android/sdk/cO;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/bF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bF;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bF;->f()I

    move-result v1

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bF;->g()I

    move-result v2

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Lcom/paypal/android/sdk/bF;)Lio/card/payment/CardType;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown payment type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/bk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "The payment is not a valid type. Please try again."

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j()V

    return-void
.end method

.method static synthetic g(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/bk;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    return-object v0
.end method

.method private g()V
    .locals 27

    sget-object v1, Lcom/paypal/android/sdk/payments/aX;->a:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/bk;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return-void

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->i()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token is expired, get new one. AccessToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v2

    iget-object v2, v2, Lcom/paypal/android/sdk/by;->c:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h()Lcom/paypal/android/sdk/payments/aH;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/aH;Z)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/aS;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    sget-object v2, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/bk;

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/aS;->b()Lcom/paypal/android/sdk/payments/bA;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->onBackPressed()V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/aS;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PayPalPayment;)Lcom/paypal/android/sdk/ca;

    move-result-object v6

    invoke-static/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b(Lcom/paypal/android/sdk/payments/PayPalPayment;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->b()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j()Z

    move-result v2

    sget-object v1, Lcom/paypal/android/sdk/payments/aX;->a:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/bk;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/aS;->b()Lcom/paypal/android/sdk/payments/bA;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/bA;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/bA;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/bA;->k()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/bA;->m()Lorg/json/JSONObject;

    move-result-object v5

    :goto_2
    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/bA;->j()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/bA;->l()Lorg/json/JSONObject;

    move-result-object v6

    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/paypal/android/sdk/payments/PayPalService;->a(ZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/bF;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bF;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/sdk/by;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bF;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->g()[Lcom/paypal/android/sdk/payments/PayPalItem;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->i()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->j()Ljava/lang/String;

    move-result-object v16

    move v10, v2

    invoke-virtual/range {v3 .. v16}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/by;->b()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    invoke-virtual {v1}, Lio/card/payment/CreditCard;->getCardType()Lio/card/payment/CardType;

    move-result-object v1

    invoke-virtual {v1}, Lio/card/payment/CardType;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    iget-object v13, v1, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    iget-object v14, v1, Lio/card/payment/CreditCard;->cvv:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    iget v15, v1, Lio/card/payment/CreditCard;->expiryMonth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    iget v0, v1, Lio/card/payment/CreditCard;->expiryYear:I

    move/from16 v16, v0

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->g()[Lcom/paypal/android/sdk/payments/PayPalItem;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->e()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->h()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->i()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->j()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v9

    move/from16 v21, v2

    invoke-virtual/range {v10 .. v26}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private h()Lcom/paypal/android/sdk/payments/aH;
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/payments/aW;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/aW;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    return-object v0
.end method

.method static synthetic h(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/aH;
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h()Lcom/paypal/android/sdk/payments/aH;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/cO;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    return-object v0
.end method

.method private i()V
    .locals 12

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/aS;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v11

    invoke-static {v11}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PayPalPayment;)Lcom/paypal/android/sdk/ca;

    move-result-object v1

    invoke-static {v11}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b(Lcom/paypal/android/sdk/payments/PayPalPayment;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v11}, Lcom/paypal/android/sdk/payments/PayPalPayment;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j()Z

    move-result v5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v11}, Lcom/paypal/android/sdk/payments/PayPalPayment;->g()[Lcom/paypal/android/sdk/payments/PayPalItem;

    move-result-object v3

    invoke-virtual {v11}, Lcom/paypal/android/sdk/payments/PayPalPayment;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/paypal/android/sdk/payments/PayPalPayment;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/paypal/android/sdk/payments/PayPalPayment;->isEnablePayPalShippingAddressesRetrieval()Z

    move-result v8

    invoke-virtual {v11}, Lcom/paypal/android/sdk/payments/PayPalPayment;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Lcom/paypal/android/sdk/payments/PayPalPayment;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lcom/paypal/android/sdk/payments/PayPalPayment;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v0 .. v11}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ca;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i()V

    return-void
.end method

.method static synthetic k(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g()V

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onActivityResult(requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unhandled requestCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v2, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/cO;->b(Z)V

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/cO;->b(Z)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->i:Lcom/paypal/android/sdk/cD;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".onCreate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d()V

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->finish()V

    :cond_0
    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    :goto_0
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->onBackPressed()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "pageTrackingSent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    const-string v0, "isLoginActivityStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_KIND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/bk;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_CREDIT_CARD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/card/payment/CreditCard;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lio/card/payment/CreditCard;

    new-instance v0, Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/paypal/android/sdk/payments/aS;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/payments/aS;

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->b(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->a(Landroid/app/Activity;)V

    new-instance v2, Lcom/paypal/android/sdk/cO;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    sget-object v3, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/bk;

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-direct {v2, p0, v0}, Lcom/paypal/android/sdk/cO;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->b()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/cG;->A:Lcom/paypal/android/sdk/cG;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/cG;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    new-instance v1, Lcom/paypal/android/sdk/payments/aT;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/aT;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/cO;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    new-instance v1, Lcom/paypal/android/sdk/payments/aY;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/aY;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/cO;->a(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/bk;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/bk;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/bA;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/bA;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b()V

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const v7, 0x1080027

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/paypal/android/sdk/cG;->bq:Lcom/paypal/android/sdk/cG;

    invoke-static {p0, v0, p2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/cG;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/paypal/android/sdk/cG;->aE:Lcom/paypal/android/sdk/cG;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bp:Lcom/paypal/android/sdk/cG;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/content/Context;Lcom/paypal/android/sdk/cG;Lcom/paypal/android/sdk/cG;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/paypal/android/sdk/cG;->an:Lcom/paypal/android/sdk/cG;

    invoke-static {p0, v0, p2, p1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/cG;Landroid/os/Bundle;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/paypal/android/sdk/cG;->aM:Lcom/paypal/android/sdk/cG;

    new-instance v1, Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bg;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-static {p0, v0, p2, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/cG;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/paypal/android/sdk/cG;->bf:Lcom/paypal/android/sdk/cG;

    invoke-static {v0}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v0, "BUNDLE_ERROR_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BUNDLE_ERROR_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/cG;->bh:Lcom/paypal/android/sdk/cG;

    invoke-static {v0}, Lcom/paypal/android/sdk/cE;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/paypal/android/sdk/cG;->aR:Lcom/paypal/android/sdk/cG;

    sget-object v3, Lcom/paypal/android/sdk/cG;->f:Lcom/paypal/android/sdk/cG;

    new-instance v4, Lcom/paypal/android/sdk/payments/bh;

    invoke-direct {v4, p0}, Lcom/paypal/android/sdk/payments/bh;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    new-instance v5, Lcom/paypal/android/sdk/payments/bi;

    invoke-direct {v5, p0}, Lcom/paypal/android/sdk/payments/bi;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-static {v1}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v2}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/cG;->bh:Lcom/paypal/android/sdk/cG;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bf:Lcom/paypal/android/sdk/cG;

    sget-object v2, Lcom/paypal/android/sdk/cG;->aR:Lcom/paypal/android/sdk/cG;

    sget-object v3, Lcom/paypal/android/sdk/cG;->f:Lcom/paypal/android/sdk/cG;

    new-instance v4, Lcom/paypal/android/sdk/payments/aU;

    invoke-direct {v4, p0}, Lcom/paypal/android/sdk/payments/aU;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    new-instance v5, Lcom/paypal/android/sdk/payments/aV;

    invoke-direct {v5, p0}, Lcom/paypal/android/sdk/payments/aV;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-static {v0}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v1}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v2}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->m()V

    :cond_0
    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->l:Z

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d()V

    return-void
.end method

.method protected final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f()V

    :cond_0
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pageTrackingSent"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isLoginActivityStarted"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onWindowFocusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Lcom/paypal/android/sdk/cO;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cO;->c()V

    return-void
.end method
